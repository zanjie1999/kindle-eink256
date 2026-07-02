.class public Lcom/amazon/xray/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method public static constrain(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method
