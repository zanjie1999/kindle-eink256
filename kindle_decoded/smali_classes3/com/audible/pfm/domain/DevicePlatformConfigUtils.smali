.class public final Lcom/audible/pfm/domain/DevicePlatformConfigUtils;
.super Ljava/lang/Object;
.source "DevicePlatformConfigUtils.java"


# direct methods
.method public static expired(Lcom/audible/pfm/domain/DevicePlatformConfig;)Z
    .locals 8

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/audible/pfm/domain/DevicePlatformConfig;->getLastModifiedFileTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    return v0

    .line 51
    :cond_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/audible/pfm/domain/DevicePlatformConfig;->getNextDownloadPeriodSecond()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    const/4 p0, 0x0

    cmp-long v7, v5, v3

    if-gez v7, :cond_2

    return p0

    .line 56
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v1, v5

    cmp-long v5, v3, v1

    if-lez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
