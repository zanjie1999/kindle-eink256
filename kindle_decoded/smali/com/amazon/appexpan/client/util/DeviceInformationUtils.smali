.class public Lcom/amazon/appexpan/client/util/DeviceInformationUtils;
.super Ljava/lang/Object;
.source "DeviceInformationUtils.java"


# direct methods
.method private static externalMemoryAvailable()Z
    .locals 2

    .line 31
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getAvailableDataPartitionSize()J
    .locals 5

    .line 37
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 40
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    return-wide v3
.end method

.method private static getAvailableExternalStorageSize()J
    .locals 5

    .line 57
    invoke-static {}, Lcom/amazon/appexpan/client/util/DeviceInformationUtils;->externalMemoryAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 62
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    return-wide v3

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getAvailableStorageSize()J
    .locals 4

    .line 18
    invoke-static {}, Lcom/amazon/appexpan/client/util/DeviceInformationUtils;->getAvailableDataPartitionSize()J

    move-result-wide v0

    invoke-static {}, Lcom/amazon/appexpan/client/util/DeviceInformationUtils;->getAvailableExternalStorageSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static getTotalDataPartitionSize()J
    .locals 5

    .line 47
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 50
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    return-wide v3
.end method

.method private static getTotalExternalStorageSize()J
    .locals 5

    .line 72
    invoke-static {}, Lcom/amazon/appexpan/client/util/DeviceInformationUtils;->externalMemoryAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 77
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    return-wide v3

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getTotalStorageSize()J
    .locals 4

    .line 26
    invoke-static {}, Lcom/amazon/appexpan/client/util/DeviceInformationUtils;->getTotalDataPartitionSize()J

    move-result-wide v0

    invoke-static {}, Lcom/amazon/appexpan/client/util/DeviceInformationUtils;->getTotalExternalStorageSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method
