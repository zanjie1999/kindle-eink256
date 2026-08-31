$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$libraryPath = Join-Path $repoRoot "kindle_decoded/lib/armeabi-v7a/libKRF.so"
$offset = 0x2A9274
$expected = [byte[]](0x10, 0x4C, 0x2D, 0xE9, 0x08, 0xB0, 0x8D, 0xE2, 0x40, 0xD0, 0x4D, 0xE2)
$replacement = [byte[]](0x01, 0x20, 0xA0, 0xE1, 0x00, 0x10, 0xA0, 0xE3, 0xD1, 0xFF, 0xFF, 0xEA)

if (-not (Test-Path -LiteralPath $libraryPath)) {
    throw "Missing KRF library: $libraryPath"
}

$stream = [System.IO.File]::Open($libraryPath, [System.IO.FileMode]::Open, [System.IO.FileAccess]::ReadWrite, [System.IO.FileShare]::Read)
try {
    $stream.Position = $offset
    $current = New-Object byte[] $replacement.Length
    if ($stream.Read($current, 0, $current.Length) -ne $current.Length) {
        throw "libKRF.so is too short for fallback-font patch"
    }

    if ([System.Linq.Enumerable]::SequenceEqual($current, $replacement)) {
        Write-Output "KRF fallback-font patch is already applied."
        return
    }

    if (-not [System.Linq.Enumerable]::SequenceEqual($current, $expected)) {
        $actualHex = [System.BitConverter]::ToString($current)
        throw "Unexpected bytes at 0x$($offset.ToString('X')): $actualHex"
    }

    $stream.Position = $offset
    $stream.Write($replacement, 0, $replacement.Length)
    $stream.Flush()
    Write-Output "Patched KRF fallback font slot at 0x$($offset.ToString('X'))."
}
finally {
    $stream.Dispose()
}
