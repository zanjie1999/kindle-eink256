.class public final Lcom/amazon/identity/auth/device/g;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/amazon/identity/auth/device/f;
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/amazon/identity/auth/device/hu;->am(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sso_map_account_manager_communicator"

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/accounts/CentralAccountManagerCommunication;

    return-object p0

    .line 25
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/h;->b(Landroid/content/Context;)Lcom/amazon/identity/auth/device/h;

    move-result-object p0

    return-object p0
.end method
