.class public Lcom/amazon/identity/auth/device/ac;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ac;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_amazon_account_man"

    .line 32
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ac;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 34
    iget-object p1, p0, Lcom/amazon/identity/auth/device/ac;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v0, "dcp_data_storage_factory"

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/gd;

    .line 35
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/gd;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ac;->w:Lcom/amazon/identity/auth/device/gc;

    return-void
.end method


# virtual methods
.method X()Ljava/lang/String;
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ac;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->o()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    iget-object v2, p0, Lcom/amazon/identity/auth/device/ac;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v2, v1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->A(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/ac;->hasPrimaryRole(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public X(Ljava/lang/String;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ac;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->C(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    .line 51
    invoke-virtual {p0, p2}, Lcom/amazon/identity/auth/device/ac;->g(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v4, "Promote account %s as the new default primary"

    .line 55
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gE()V

    .line 56
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ac;->w:Lcom/amazon/identity/auth/device/gc;

    const/4 v4, 0x0

    const-string v5, "com.amazon.dcp.sso.property.secondary"

    invoke-virtual {v1, v0, v5, v4}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NewDefaultPrimary"

    .line 57
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/amazon/identity/auth/device/ac;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->B(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 61
    iget-object p2, p0, Lcom/amazon/identity/auth/device/ac;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v1, "com.amazon.dcp.sso.property.sessionuser"

    const-string/jumbo v4, "true"

    invoke-virtual {p2, v0, v1, v4}, Lcom/amazon/identity/auth/device/gc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v3

    .line 65
    sget-object v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->Deregistering:Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const-string v0, "Set status for account %s as %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gE()V

    .line 66
    iget-object p2, p0, Lcom/amazon/identity/auth/device/ac;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    sget-object v0, Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;->Deregistering:Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->a(Ljava/lang/String;Lcom/amazon/identity/auth/accounts/AmazonAccountManager$AccountRegistrationStatus;)V

    return-void
.end method

.method g(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "DeregisteringDevice"

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DeregisteringDefaultPrimary"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ac;->X()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasPrimaryRole(Ljava/lang/String;)Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ac;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v1, "com.amazon.dcp.sso.property.deviceaccountrole"

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;->PRIMARY:Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceRequest$DeviceAccountRole;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
