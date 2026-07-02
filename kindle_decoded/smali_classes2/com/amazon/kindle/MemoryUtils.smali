.class public Lcom/amazon/kindle/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# direct methods
.method public static final isMemoryCritical(I)Z
    .locals 1

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
