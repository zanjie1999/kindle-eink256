.class Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/AuthPortalUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eC:Lcom/amazon/identity/auth/device/cm;

.field final synthetic eI:Ljava/lang/String;

.field final synthetic ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

.field final synthetic ez:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;Ljava/lang/String;Lcom/amazon/identity/auth/device/cm;)V
    .locals 0

    .line 1963
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->ez:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->eI:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->eC:Lcom/amazon/identity/auth/device/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 2

    .line 2026
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->eC:Lcom/amazon/identity/auth/device/cm;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/cm;->bX()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "additionalReturnToUrlParams"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2028
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->c(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->switchAppToSSOModeIfNecessary(Landroid/content/Context;)V

    .line 2029
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->ez:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    invoke-static {v0, p1, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->b(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "account_recover_attempt"

    .line 1968
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->ez:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    invoke-static {p1, v0, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;)V

    return-void

    :cond_0
    const-string v0, "com.amazon.dcp.sso.property.account.acctId"

    .line 1978
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1981
    invoke-static {}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "directedId returned from registration was null. Not setting Auth Portal domain."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1990
    :cond_1
    invoke-static {}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->access$1200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Account registered with domain: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->B(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    new-instance v1, Lcom/amazon/identity/auth/device/fv;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/amazon/identity/auth/device/fv;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1993
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    .line 1994
    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->B(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_auth_portal_endpoint"

    .line 1993
    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/fv;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->C(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_panda_endpoint"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/fv;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->B(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ho;->cZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "authDomain"

    .line 2000
    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/fv;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->C(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "x-amzn-identity-auth-domain"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/fv;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->eI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2006
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->eI:Ljava/lang/String;

    const-string v2, "com.amazon.dcp.sso.token.cookie.sid"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/fv;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->D(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->a(Lcom/amazon/identity/auth/device/fv;)V

    .line 2014
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->eC:Lcom/amazon/identity/auth/device/cm;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/cm;->bZ()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "com.amazon.identity.auth.device.accountManager.newaccount"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2015
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->eC:Lcom/amazon/identity/auth/device/cm;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/cm;->cb()Ljava/lang/String;

    move-result-object v0

    const-string v1, "claim_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2016
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->eC:Lcom/amazon/identity/auth/device/cm;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/cm;->bX()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "additionalReturnToUrlParams"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2018
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;->ez:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    invoke-static {v0, p1, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;)V

    return-void
.end method
