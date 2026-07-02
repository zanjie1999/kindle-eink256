.class Lcom/amazon/device/ads/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public static final convertToMillisecondsFromNanoseconds(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    .line 33
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static final convertToMillisecondsFromSeconds(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    return-wide p0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 0

    .line 24
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p1
.end method
