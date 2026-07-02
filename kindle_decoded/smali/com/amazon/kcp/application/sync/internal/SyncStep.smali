.class public Lcom/amazon/kcp/application/sync/internal/SyncStep;
.super Ljava/lang/Object;
.source "SyncStep.java"


# direct methods
.method public static isSubset(JJ)Z
    .locals 1

    not-long p2, p2

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
