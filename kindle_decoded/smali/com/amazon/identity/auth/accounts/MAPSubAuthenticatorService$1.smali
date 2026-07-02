.class Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService$1;
.super Lcom/amazon/identity/auth/device/b;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ci:Lcom/amazon/identity/auth/device/u;

.field final synthetic cj:Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService;Landroid/content/Context;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService$1;->cj:Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService;

    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized M()Lcom/amazon/identity/auth/device/u;
    .locals 1

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService$1;->ci:Lcom/amazon/identity/auth/device/u;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService$1;->cj:Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService;

    .line 70
    invoke-static {v0}, Lcom/amazon/identity/auth/device/u;->e(Landroid/content/Context;)Lcom/amazon/identity/auth/device/u;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService$1;->ci:Lcom/amazon/identity/auth/device/u;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService$1;->ci:Lcom/amazon/identity/auth/device/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Landroid/accounts/Account;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService$1;->M()Lcom/amazon/identity/auth/device/u;

    move-result-object v0

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object p2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/amazon/identity/auth/device/u;->getAccountRemovalAllowed(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V
    .locals 7

    .line 36
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService$1;->M()Lcom/amazon/identity/auth/device/u;

    move-result-object v0

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/identity/auth/device/u;->getAuthToken(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V

    return-void
.end method

.method public b(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V
    .locals 7

    .line 51
    invoke-direct {p0}, Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService$1;->M()Lcom/amazon/identity/auth/device/u;

    move-result-object v0

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/identity/auth/device/u;->updateAuthToken(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V

    return-void
.end method
