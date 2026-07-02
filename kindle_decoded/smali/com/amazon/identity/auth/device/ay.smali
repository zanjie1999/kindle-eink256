.class public final Lcom/amazon/identity/auth/device/ay;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static a(Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/ba;
    .locals 1

    .line 17
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aX(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/actor/ActorManagerCommunication;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    return-object v0

    .line 22
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/az;->b(Lcom/amazon/identity/auth/device/ed;)Lcom/amazon/identity/auth/device/az;

    move-result-object p0

    return-object p0
.end method
