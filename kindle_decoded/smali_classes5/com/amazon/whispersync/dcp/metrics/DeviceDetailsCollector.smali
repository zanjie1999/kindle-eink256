.class public final Lcom/amazon/whispersync/dcp/metrics/DeviceDetailsCollector;
.super Ljava/lang/Object;
.source "DeviceDetailsCollector.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableCacheMemorySizeInBytes()J
    .locals 2

    .line 35
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/metrics/DeviceDetailsCollector;->getAvailableMemorySizeInBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAvailableInternalMemorySizeInBytes()J
    .locals 2

    .line 25
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/metrics/DeviceDetailsCollector;->getAvailableMemorySizeInBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getAvailableMemorySizeInBytes(Ljava/io/File;)J
    .locals 5

    .line 45
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v1, p0

    .line 47
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v3, p0

    mul-long v3, v3, v1

    return-wide v3
.end method

.method public static getTotalCacheMemorySizeInBytes()J
    .locals 2

    .line 40
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/metrics/DeviceDetailsCollector;->getTotalMemorySizeInBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalInternalMemorySizeInBytes()J
    .locals 2

    .line 30
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/metrics/DeviceDetailsCollector;->getTotalMemorySizeInBytes(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getTotalMemorySizeInBytes(Ljava/io/File;)J
    .locals 5

    .line 53
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v1, p0

    .line 55
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result p0

    int-to-long v3, p0

    mul-long v3, v3, v1

    return-wide v3
.end method
