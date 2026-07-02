.class public Lcom/amazon/kcp/debug/TCNSortingUtils;
.super Ljava/lang/Object;
.source "TCNSortingUtils.java"


# direct methods
.method public static isTCNSortingEnabled()Z
    .locals 2

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static shouldReorderForTCNSorting()Z
    .locals 1

    .line 23
    invoke-static {}, Lcom/amazon/kcp/debug/TCNSortingUtils;->isTCNSortingEnabled()Z

    move-result v0

    return v0
.end method
