.class Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/api/MAPAccountManager;->registerAccount(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic O:Landroid/os/Bundle;

.field final synthetic W:Lcom/amazon/identity/auth/device/bl;

.field final synthetic gf:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/MAPAccountManager;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/bl;Lcom/amazon/identity/auth/device/ej;Landroid/app/Activity;)V
    .locals 0

    .line 2420
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->gf:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->val$options:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->O:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->W:Lcom/amazon/identity/auth/device/bl;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->N:Lcom/amazon/identity/auth/device/ej;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "com.amazon.map.error.errorCode"

    const/4 v1, -0x1

    .line 2501
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2502
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "com.amazon.identity.auth.ChallengeException"

    .line 2505
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 2511
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2512
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "challenge: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazon/identity/auth/device/ht;->J(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2513
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->val$options:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 2516
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2518
    :cond_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->O:Landroid/os/Bundle;

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->c(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2520
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2525
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->gf:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->val$activity:Landroid/app/Activity;

    sget-object v2, Lcom/amazon/identity/auth/device/api/SigninOption;->WebviewSignin:Lcom/amazon/identity/auth/device/api/SigninOption;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->registerAccountWithUI(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void

    .line 2532
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 5

    .line 2428
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->val$options:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "EnsureAccountStateAttributes"

    .line 2429
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2431
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Register account is done, going to check whether the account has assert attributes"

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.amazon.dcp.sso.property.account.acctId"

    .line 2433
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2435
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2438
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Did not get the directedID in the reg success respone so we are going to fix the account we get from getAccount(). It should not happen on Gen6+ and normal 3P devices."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->gf:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 2445
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2446
    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->O:Landroid/os/Bundle;

    const-string v4, "com.amazon.identity.ap.domain"

    .line 2447
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2446
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2448
    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->val$options:Landroid/os/Bundle;

    const-string v4, "com.amazon.identity.ap.request.parameters"

    .line 2449
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 2450
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2452
    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->val$options:Landroid/os/Bundle;

    .line 2453
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2452
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2456
    new-instance v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1$1;-><init>(Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2485
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->N:Lcom/amazon/identity/auth/device/ej;

    const-string v3, "RegisterAccountWithEnsuringAccountState"

    invoke-virtual {p1, v3}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 2486
    iget-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->gf:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->ensureAccountState(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void

    .line 2493
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$1;->W:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/bl;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
