.class Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$3;
.super Lcom/amazon/dcp/sso/ISubAuthenticatorResponse$Stub;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->a(Landroid/accounts/Account;Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

.field final synthetic cS:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$3;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    iput-object p2, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$3;->cS:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;

    invoke-direct {p0}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$3;->cS:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {v0, p1, p2}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 0

    .line 271
    iget-object p1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$3;->cS:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;

    if-eqz p1, :cond_0

    .line 273
    invoke-interface {p1}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$a;->L()V

    :cond_0
    return-void
.end method
