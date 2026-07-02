.class public final Lcom/amazon/identity/auth/device/hf;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static af(Landroid/content/Context;)Lcom/amazon/identity/auth/device/he;
    .locals 2

    .line 21
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aX(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "TokenManagementImplementationFactory"

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->al(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/token/CentralTokenManagementCommunication;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->bg(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/amazon/identity/auth/device/mw;->aY(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/amazon/identity/auth/device/gu;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/gu;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 36
    :cond_1
    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hg;->ag(Landroid/content/Context;)Lcom/amazon/identity/auth/device/hg;

    move-result-object p0

    return-object p0
.end method
