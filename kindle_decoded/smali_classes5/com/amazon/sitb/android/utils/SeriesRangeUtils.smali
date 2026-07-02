.class public Lcom/amazon/sitb/android/utils/SeriesRangeUtils;
.super Ljava/lang/Object;
.source "SeriesRangeUtils.java"


# direct methods
.method public static isInShowSeriesUpsellRange(DDD)Z
    .locals 0

    div-double/2addr p0, p2

    const-wide/high16 p2, 0x4059000000000000L    # 100.0

    mul-double p0, p0, p2

    cmpl-double p2, p0, p4

    if-ltz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
