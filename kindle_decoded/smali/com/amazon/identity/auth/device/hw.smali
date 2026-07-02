.class public final Lcom/amazon/identity/auth/device/hw;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static f(Ljava/util/Collection;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 65
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
