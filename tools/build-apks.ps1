$ErrorActionPreference = "Stop"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$rootDir = Split-Path -Parent $scriptDir

$apktool = Join-Path $rootDir "tools\apktool_2.9.3.jar"
$signer = Join-Path $rootDir "tools\uber-apk-signer-1.3.0.jar"
$decodedDir = Join-Path $rootDir "kindle_decoded"
$keystore = Join-Path $rootDir "androidDev.keystore"
$keyAlias = "sparkleandroiddev"
$patchFile = Join-Path $decodedDir "smali_classes7\com\zyyme\eink256\Eink256Patch.smali"

function Resolve-JavaPath {
    $candidates = @()

    if ($env:JAVA_HOME) {
        $candidates += (Join-Path $env:JAVA_HOME "bin\java.exe")
    }

    $pathJava = Get-Command "java" -ErrorAction SilentlyContinue
    if ($pathJava) {
        $candidates += $pathJava.Source
    }

    $candidates += @(
        "C:\Program Files\Android\Android Studio\jbr\bin\java.exe",
        "C:\Program Files\Android\Android Studio\jre\bin\java.exe",
        "C:\Program Files\Java\jdk-21\bin\java.exe",
        "C:\Program Files\Java\jdk-17\bin\java.exe"
    )

    foreach ($candidate in $candidates) {
        if ($candidate -and (Test-Path -LiteralPath $candidate)) {
            return $candidate
        }
    }

    throw "Could not find java.exe. Set JAVA_HOME or add Java to PATH."
}

$java = Resolve-JavaPath

$disabledPatch = @'
.class public Lcom/zyyme/eink256/Eink256Patch;
.super Ljava/lang/Object;


# static fields
.field private static final MIN_SIZE:I = 0x40

.field private static sLoadAttempted:Z

.field private static sLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zyyme/eink256/Eink256Patch;->sLoadAttempted:Z

    sput-boolean v0, Lcom/zyyme/eink256/Eink256Patch;->sLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureLoaded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    return-object p0
.end method

.method public static processInPlace(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method
'@

function Invoke-Checked {
    param(
        [Parameter(Mandatory = $true)]
        [string] $FilePath,

        [Parameter(Mandatory = $true)]
        [string[]] $Arguments
    )

    & $FilePath @Arguments
    if ($LASTEXITCODE -ne 0) {
        throw "$FilePath failed with exit code $LASTEXITCODE"
    }
}

function Remove-OutputFiles {
    param(
        [Parameter(Mandatory = $true)]
        [string] $BaseName
    )

    $paths = @(
        (Join-Path $rootDir "$BaseName.apk"),
        (Join-Path $rootDir "$BaseName-aligned.apk"),
        (Join-Path $rootDir "$BaseName-aligned-signed.apk"),
        (Join-Path $rootDir "$BaseName-aligned-signed.apk.idsig")
    )

    foreach ($path in $paths) {
        if (Test-Path -LiteralPath $path) {
            Remove-Item -LiteralPath $path -Force
        }
    }
}

function Build-And-Sign {
    param(
        [Parameter(Mandatory = $true)]
        [string] $BaseName,

        [Parameter(Mandatory = $true)]
        [string] $Label
    )

    Write-Host ""
    Write-Host "==> Building $Label"

    Remove-OutputFiles -BaseName $BaseName

    $unsignedApk = Join-Path $rootDir "$BaseName.apk"
    Invoke-Checked -FilePath $java -Arguments @("-jar", $apktool, "b", "--force-all", $decodedDir, "-o", $unsignedApk)
    Invoke-Checked -FilePath $java -Arguments @("-jar", $signer, "--apks", $unsignedApk, "--ks", $keystore, "--ksAlias", $keyAlias)
}

if (-not (Test-Path -LiteralPath $patchFile)) {
    throw "Missing Eink256Patch.smali: $patchFile"
}

$backupFile = Join-Path ([System.IO.Path]::GetTempPath()) ("Eink256Patch.{0}.smali" -f ([System.Guid]::NewGuid()))
Copy-Item -LiteralPath $patchFile -Destination $backupFile -Force

try {
    Build-And-Sign -BaseName "kindle_eink256_unsigned_pkg" -Label "normal eink256 APK"

    [System.IO.File]::WriteAllText($patchFile, $disabledPatch, [System.Text.Encoding]::ASCII)
    Build-And-Sign -BaseName "kindle_no_eink256_unsigned_pkg" -Label "APK with eink256 disabled"
}
finally {
    if (Test-Path -LiteralPath $backupFile) {
        Copy-Item -LiteralPath $backupFile -Destination $patchFile -Force
        Remove-Item -LiteralPath $backupFile -Force
    }
}

Write-Host ""
Write-Host "Done."
Write-Host "  normal:     kindle_eink256_unsigned_pkg-aligned-signed.apk"
Write-Host "  no eink256: kindle_no_eink256_unsigned_pkg-aligned-signed.apk"
