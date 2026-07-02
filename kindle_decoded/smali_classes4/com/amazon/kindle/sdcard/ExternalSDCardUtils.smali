.class public Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;
.super Ljava/lang/Object;
.source "ExternalSDCardUtils.java"


# static fields
.field private static final MIN_TIME_SINCE_APP_START_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canDownloadToSDCard(Landroid/content/Context;)Z
    .locals 1

    .line 52
    invoke-static {}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->isExternalSDCardFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->isExternalSDCardAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static formatSize(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 4

    long-to-double p1, p1

    .line 192
    sget v0, Lcom/amazon/kindle/krl/R$string;->storage_available_bytes:I

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    cmpl-double v3, p1, v1

    if-ltz v3, :cond_0

    .line 195
    sget v0, Lcom/amazon/kindle/krl/R$string;->storage_available_kb:I

    div-double/2addr p1, v1

    cmpl-double v3, p1, v1

    if-ltz v3, :cond_0

    .line 198
    sget v0, Lcom/amazon/kindle/krl/R$string;->storage_available_mb:I

    div-double/2addr p1, v1

    cmpl-double v3, p1, v1

    if-ltz v3, :cond_0

    .line 201
    sget v0, Lcom/amazon/kindle/krl/R$string;->storage_available_gb:I

    div-double/2addr p1, v1

    .line 207
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, p3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-virtual {p0, v0, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAvailableExternalSDCardSpace(Landroid/content/Context;)J
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    .line 161
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object v0, p0, v1

    if-eqz v0, :cond_0

    .line 163
    aget-object p0, p0, v1

    .line 166
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    .line 172
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    mul-long v3, v3, v1

    return-wide v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 168
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->TAG:Ljava/lang/String;

    const-string v1, "Exception observed while calculating available space on SD Card."

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 175
    :goto_0
    throw p0

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getReadableAvailableExternalSDCardSpace(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 148
    invoke-static {p0}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->getAvailableExternalSDCardSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->formatSize(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isExternalLibraryTransferEnabled()Z
    .locals 1

    .line 94
    invoke-static {}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->isExternalSDCardFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isExternalSDCardAvailable(Landroid/content/Context;)Z
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    .line 64
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object v0, p0, v1

    if-eqz v0, :cond_0

    aget-object p0, p0, v1

    .line 66
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isExternalSDCardFeatureEnabled()Z
    .locals 1

    .line 85
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isChinaBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isExternalSDCardPreferred()Z
    .locals 1

    .line 75
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStorageLocationPreference()Lcom/amazon/kindle/sdcard/IStorageLocationPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/amazon/kindle/sdcard/IStorageLocationPreference;->isExternalSDCardPreferred()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isMediaInTransientState(Ljava/io/File;)Z
    .locals 1

    .line 133
    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "checking"

    .line 134
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ejecting"

    .line 135
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static declared-synchronized shouldHandleUnmount(Ljava/io/File;)Z
    .locals 6

    const-class v0, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;

    monitor-enter v0

    .line 111
    :try_start_0
    invoke-static {p0}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->isMediaInTransientState(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 112
    monitor-exit v0

    return v1

    .line 116
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getAppStartTime()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long p0, v2, v4

    if-gez p0, :cond_1

    .line 119
    monitor-exit v0

    return v1

    :cond_1
    const/4 p0, 0x1

    .line 122
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static shouldUseExternalSDCard(Landroid/content/Context;)Z
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->canDownloadToSDCard(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->isExternalSDCardPreferred()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
