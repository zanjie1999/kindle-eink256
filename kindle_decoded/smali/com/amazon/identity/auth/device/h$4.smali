.class Lcom/amazon/identity/auth/device/h$4;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/h;->b(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic L:Lcom/amazon/identity/auth/device/h;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic k:Lcom/amazon/identity/auth/device/api/Callback;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h;Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/app/Activity;)V
    .locals 0

    .line 2262
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$4;->L:Lcom/amazon/identity/auth/device/h;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/h$4;->val$options:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/h$4;->H:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/h$4;->k:Lcom/amazon/identity/auth/device/api/Callback;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/h$4;->N:Lcom/amazon/identity/auth/device/ej;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/h$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 2266
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$4;->val$options:Landroid/os/Bundle;

    const-string v1, "EnsureAccountStateAttributes"

    .line 2267
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2270
    new-instance v1, Lcom/amazon/identity/auth/device/api/TokenManagement;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/h$4;->L:Lcom/amazon/identity/auth/device/h;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/api/TokenManagement;-><init>(Landroid/content/Context;)V

    .line 2274
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/h$4;->H:Ljava/lang/String;

    const-string v3, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    const/4 v4, 0x0

    .line 2275
    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v2, "value_key"

    .line 2288
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2291
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2292
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v3, "user_id"

    .line 2297
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2299
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v3, "id"

    .line 2300
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2303
    :cond_0
    new-instance v3, Lcom/amazon/identity/auth/device/bd;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/h$4;->val$options:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/h$4;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {v3, v1, v4, v2, v5}, Lcom/amazon/identity/auth/device/bd;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Set;Lcom/amazon/identity/auth/device/ej;)V

    .line 2306
    invoke-virtual {v3, v0}, Lcom/amazon/identity/auth/device/bd;->c(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2311
    invoke-static {}, Lcom/amazon/identity/auth/device/h;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot fetch user profile from Panda"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$4;->k:Lcom/amazon/identity/auth/device/api/Callback;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 2317
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v2

    const-string v3, "MAP cannot get user profile from Panda"

    .line 2315
    invoke-static {v1, v3, v2, v3}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void

    .line 2322
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2325
    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$4;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/util/ArrayList;)V

    return-void

    .line 2329
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$4;->val$options:Landroid/os/Bundle;

    const-string v2, "AccountMissingAttributes"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2330
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$4;->val$options:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string/jumbo v2, "set_cookie_for_authenticate_account_with_ui"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2331
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$4;->val$options:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/h$4;->H:Ljava/lang/String;

    const-string v3, "com.amazon.dcp.sso.property.account.acctId"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$4;->val$options:Landroid/os/Bundle;

    const-string v2, "isAccountStateFixUpFlow"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2333
    iget-object v3, p0, Lcom/amazon/identity/auth/device/h$4;->L:Lcom/amazon/identity/auth/device/h;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/h$4;->val$activity:Landroid/app/Activity;

    sget-object v5, Lcom/amazon/identity/auth/device/api/SigninOption;->WebviewSignin:Lcom/amazon/identity/auth/device/api/SigninOption;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/h$4;->val$options:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/h$4;->k:Lcom/amazon/identity/auth/device/api/Callback;

    iget-object v8, p0, Lcom/amazon/identity/auth/device/h$4;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/identity/auth/device/h;->b(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    return-void

    .line 2279
    :catch_0
    invoke-static {}, Lcom/amazon/identity/auth/device/h;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot get access token"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$4;->k:Lcom/amazon/identity/auth/device/api/Callback;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 2284
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v2

    const-string v3, "MAP cannot get an access token to ensure the account state"

    const-string v4, "MAP cannot get access token for ensuring the account state"

    .line 2282
    invoke-static {v1, v3, v2, v4}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    return-void
.end method
