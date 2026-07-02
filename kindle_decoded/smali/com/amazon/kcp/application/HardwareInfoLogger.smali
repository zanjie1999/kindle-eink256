.class public Lcom/amazon/kcp/application/HardwareInfoLogger;
.super Ljava/lang/Object;
.source "HardwareInfoLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CPU_ABI_ARM:Ljava/lang/String; = "arm"

.field private static final CPU_ABI_X86:Ljava/lang/String; = "x86"

.field private static final EXCEPTION_RUNNING_TEST:I = -0x3

.field private static final SNIFF_TEST_BINARY_ARM:Ljava/lang/String; = "sniff-test-arm"

.field private static final SNIFF_TEST_BINARY_X86:Ljava/lang/String; = "sniff-test-x86"

.field private static final SNIFF_TEST_FILENAME:Ljava/lang/String; = "hardwareTest"

.field private static final SNIFF_TEST_VERSION:Ljava/lang/String; = "1.0.0.2"

.field private static final TAG:Ljava/lang/String;

.field private static final UNRECOGNIZED_ARCHITECTURE:I = -0x2

.field private static final UNSUPPORTED_X86_DEVICE:I = -0x4


# instance fields
.field private androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

.field private context:Landroid/content/Context;

.field private gpuExtensions:Ljava/lang/String;

.field private gpuRenderer:Ljava/lang/String;

.field private gpuVendor:Ljava/lang/String;

.field private gpuVersion:Ljava/lang/String;

.field private recognizedArchitecture:Ljava/lang/String;

.field private sniffTestResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kcp/application/HardwareInfoLogger;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/HardwareInfoLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuRenderer:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuVersion:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuVendor:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuExtensions:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    const-string v0, "Unrecognized"

    .line 44
    iput-object v0, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->recognizedArchitecture:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->context:Landroid/content/Context;

    return-void
.end method

.method private getNativeCpuAbi()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 141
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "getprop ro.product.cpu.abi"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    const/16 v1, 0x1000

    .line 144
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/HardwareInfoLogger;->readProcessOutput(Ljava/lang/Process;I)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 149
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getPlatformCpuAbi()Ljava/lang/String;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getCPUInstructionSets()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 167
    :goto_0
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private hasArmBinaryTranslator()Z
    .locals 3

    .line 178
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libhoudini.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 186
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/lib/arm/libndk_translation_vdso.so"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isArm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "arm"

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isX86(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string/jumbo v0, "x86"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "arm"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private readProcessOutput(Ljava/lang/Process;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 121
    new-array p1, p2, [C

    .line 122
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 124
    invoke-virtual {p2, p1, v2, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 128
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private runKRFSniffTest()I
    .locals 9

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-le v0, v2, :cond_0

    return v1

    .line 241
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kcp/application/HardwareInfoLogger;->getNativeCpuAbi()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-direct {p0}, Lcom/amazon/kcp/application/HardwareInfoLogger;->getPlatformCpuAbi()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/application/HardwareInfoLogger;->isX86(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ", platform: "

    if-eqz v3, :cond_1

    .line 246
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found x86 architecture native: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v3, "x86"

    .line 247
    iput-object v3, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->recognizedArchitecture:Ljava/lang/String;

    .line 248
    iget-object v3, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v4, "sniff-test-x86"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 249
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/application/HardwareInfoLogger;->isArm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found arm architecture: native: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v3, "arm"

    .line 251
    iput-object v3, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->recognizedArchitecture:Ljava/lang/String;

    .line 252
    iget-object v3, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v4, "sniff-test-arm"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_7

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "hardwareTest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-static {v3, v4}, Lcom/amazon/kcp/util/IOUtils;->writeInToFile(Ljava/io/InputStream;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 266
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod 750 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 268
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    const/16 v4, 0x3710

    .line 271
    invoke-direct {p0, v3, v4}, Lcom/amazon/kcp/application/HardwareInfoLogger;->readProcessOutput(Ljava/lang/Process;I)Ljava/lang/String;

    move-result-object v4

    .line 274
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v3

    const-string v5, "\\r?\\n"

    .line 285
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 286
    array-length v5, v4

    :goto_1
    if-ge v1, v5, :cond_6

    aget-object v6, v4, v1

    const-string v7, ":"

    .line 287
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    .line 288
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "GL Vendor:"

    .line 289
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 290
    iput-object v7, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuVendor:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v8, "GL Renderer:"

    .line 291
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 292
    iput-object v7, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuRenderer:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v8, "GL Version:"

    .line 293
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 294
    iput-object v7, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuVersion:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v8, "GL Extensions:"

    .line 295
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 296
    iput-object v7, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuExtensions:Ljava/lang/String;

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 299
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The result of sniff test: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    :cond_7
    const/4 v3, -0x1

    .line 303
    :goto_3
    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/application/HardwareInfoLogger;->isX86(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/amazon/kcp/application/HardwareInfoLogger;->hasArmBinaryTranslator()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x4

    return v0

    :cond_8
    return v3

    .line 254
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found unrecognized architecture: native: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, -0x2

    return v0

    :catch_0
    move-exception v0

    .line 307
    sget-object v1, Lcom/amazon/kcp/application/HardwareInfoLogger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to determine device GPU capabilities "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    return v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 53
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidDeviceInformationProvider(Landroid/content/Context;)Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception fetching CPU information from device. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/application/HardwareInfoLogger;->runKRFSniffTest()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->sniffTestResult:I

    .line 59
    sget-object v0, Lcom/amazon/kcp/application/HardwareInfoLogger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TestVersion: 1.0.0.2 \n TestResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->sniffTestResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \n GLRenderer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuRenderer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n GLVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n GLVendor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuVendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n GLExtensions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuExtensions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lcom/amazon/kcp/application/HardwareInfoLogger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPUFeatures:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getCPUFeatures()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n Processor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 69
    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getProcessor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n CPU Architecture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 70
    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getCPUArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n CPU InstructionSets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 71
    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getCPUInstructionSets()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n Manufacturer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 72
    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n Hardware: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 73
    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getHardware()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n Model: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 74
    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getDeviceModelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n Brand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 75
    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n OS Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 76
    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n API Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    .line 77
    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getAndroidApiLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    iget-object v1, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuRenderer:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->setGpuRenderer(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    iget-object v1, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuVersion:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->setGpuVersion(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    iget-object v1, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuVendor:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->setGpuVendor(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    iget-object v1, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->gpuExtensions:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->setGpuExtensions(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 85
    iget v1, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->sniffTestResult:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 86
    :goto_1
    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAppSettingsController;->setIsYJSupportedBySniffTest(Z)V

    .line 108
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->sniffTestResult:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/application/HardwareInfoLogger;->androidDeviceInformation:Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    const-string v2, "1.0.0.2"

    invoke-static {v2, v0, v1}, Lcom/amazon/kcp/util/fastmetrics/HardwareInfoFastMetrics;->recordHardwareInfo(Ljava/lang/String;ILcom/amazon/kcp/application/IAndroidDeviceInformation;)V

    return-void
.end method
