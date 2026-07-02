.class public final Lcom/amazon/identity/auth/device/at;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static i(Landroid/content/Context;)Lcom/amazon/identity/auth/device/as;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/identity/auth/device/ao;->dm:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/mw;->b(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->am(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aX(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lcom/amazon/identity/auth/device/ao;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/ao;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/an;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/an;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    return-object v0

    .line 35
    :cond_1
    new-instance v0, Lcom/amazon/identity/auth/device/av;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/av;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    return-object v0
.end method
