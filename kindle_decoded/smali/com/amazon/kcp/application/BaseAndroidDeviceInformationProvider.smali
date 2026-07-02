.class public abstract Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;
.super Ljava/lang/Object;
.source "BaseAndroidDeviceInformationProvider.java"

# interfaces
.implements Lcom/amazon/kcp/application/IAndroidDeviceInformation;


# static fields
.field private static final DEFAULT_DEVICE_NAME:Ljava/lang/String; = "Kindle"

.field private static final MAX_CPU_INFO_FILE:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

.field private static final MEMORY_INFO_FILE:Ljava/lang/String; = "/proc/meminfo"

.field private static final MIN_CPU_INFO_FILE:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

.field private static final REGEX_GET_INTEGER:Ljava/lang/String; = "\\D*(\\d+)\\D*"

.field private static final REGEX_GROUP_NUMBER:Ljava/lang/String; = "$1"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private dataPartitionSize:J

.field private displayDiagonalSize:F

.field private externalPartitionSize:J

.field private maxCpuSpeed:J

.field private maxMemory:J

.field private minCpuSpeed:J

.field private final resources:Landroid/content/res/Resources;

.field private totalMemory:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->context:Landroid/content/Context;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method private grepNumber(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 411
    sget-object p1, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t grep number from text! Text is null "

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_0
    const-string v2, "\\D*(\\d+)\\D*"

    const-string v3, "$1"

    .line 414
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 418
    :catch_0
    sget-object v2, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t parse text to number! Text = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private readFirstLineFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "Couldn\'t close the file "

    const/4 v1, 0x0

    .line 436
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 445
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    .line 447
    sget-object v3, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :catch_1
    move-exception v3

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v2, v1

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v2, v1

    .line 440
    :goto_1
    :try_start_3
    sget-object v4, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t read first line from file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 445
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    .line 447
    sget-object v3, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    :goto_2
    return-object v1

    :catchall_1
    move-exception v3

    :goto_3
    if-eqz v2, :cond_1

    .line 445
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    .line 447
    sget-object v3, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 451
    :cond_1
    :goto_4
    throw v3
.end method


# virtual methods
.method public getAndroidApiLevel()I
    .locals 1

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getAvailableProcessors()I
    .locals 1

    .line 142
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public getAvailableStorageSize(Ljava/lang/String;)J
    .locals 5

    .line 262
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1

    int-to-long v1, p1

    .line 264
    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result p1

    int-to-long v3, p1

    mul-long v1, v1, v3

    return-wide v1
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 363
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getCPUArchitecture()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCPUFeatures()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCPUInstructionSets()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataPartitionAvailable()J
    .locals 5

    .line 209
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 211
    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long v1, v1, v3

    return-wide v1
.end method

.method public getDataPartitionSize()J
    .locals 5

    .line 194
    iget-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->dataPartitionSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 195
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 197
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v3, v0

    mul-long v1, v1, v3

    .line 199
    iput-wide v1, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->dataPartitionSize:J

    .line 201
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->dataPartitionSize:J

    return-wide v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .line 126
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModelId()Ljava/lang/String;
    .locals 1

    .line 358
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayDPI()I
    .locals 3

    .line 298
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 299
    iget-object v1, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->context:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 300
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 302
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public getDisplayDiagnonal()F
    .locals 2

    .line 310
    iget v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->displayDiagonalSize:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->getScreenWidthInInches(Landroid/content/Context;)F

    move-result v0

    .line 312
    iget-object v1, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/android/util/UIUtils;->getScreenHeightInInches(Landroid/content/Context;)F

    move-result v1

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 313
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->displayDiagonalSize:F

    .line 316
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->displayDiagonalSize:F

    return v0
.end method

.method public getDisplayHeight()I
    .locals 3

    .line 286
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 287
    iget-object v1, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->context:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 288
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 290
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getDisplaySize()Ljava/lang/String;
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 327
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "UNDEFINED"

    goto :goto_0

    :cond_0
    const-string v0, "XLARGE"

    goto :goto_0

    :cond_1
    const-string v0, "LARGE"

    goto :goto_0

    :cond_2
    const-string v0, "NORMAL"

    goto :goto_0

    :cond_3
    const-string v0, "SMALL"

    :goto_0
    return-object v0
.end method

.method public getDisplayWidth()I
    .locals 3

    .line 274
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 275
    iget-object v1, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->context:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 276
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 278
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public getExternalStorageAvailable()J
    .locals 5

    .line 244
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 246
    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long v1, v1, v3

    return-wide v1
.end method

.method public getExternalStorageSize()J
    .locals 5

    .line 229
    iget-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->externalPartitionSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 230
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 232
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v3, v0

    mul-long v1, v1, v3

    .line 234
    iput-wide v1, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->externalPartitionSize:J

    .line 236
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->externalPartitionSize:J

    return-wide v0
.end method

.method public getExternalStorageState()Ljava/lang/String;
    .locals 1

    .line 221
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGpuExtensions()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getGpuRenderer()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getGpuVendor()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getGpuVersion()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    .line 350
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxApplicationMemory()J
    .locals 5

    .line 183
    iget-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->maxMemory:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 184
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->maxMemory:J

    .line 186
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->maxMemory:J

    return-wide v0
.end method

.method public getMaxCpuSpeed()J
    .locals 5

    .line 161
    iget-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->maxCpuSpeed:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 162
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->readFirstLineFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->grepNumber(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->maxCpuSpeed:J

    .line 164
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->maxCpuSpeed:J

    return-wide v0
.end method

.method public getMinCpuSpeed()J
    .locals 5

    .line 150
    iget-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->minCpuSpeed:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    .line 151
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->readFirstLineFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->grepNumber(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->minCpuSpeed:J

    .line 153
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->minCpuSpeed:J

    return-wide v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 368
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessor()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalMemory()J
    .locals 5

    .line 172
    iget-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->totalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-string v0, "/proc/meminfo"

    .line 173
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->readFirstLineFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->grepNumber(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->totalMemory:J

    .line 175
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kcp/application/BaseAndroidDeviceInformationProvider;->totalMemory:J

    return-wide v0
.end method

.method public setGpuExtensions(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setGpuRenderer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setGpuVendor(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setGpuVersion(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
