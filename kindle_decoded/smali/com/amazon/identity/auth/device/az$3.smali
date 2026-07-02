.class Lcom/amazon/identity/auth/device/az$3;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/az;->a(Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic aP:Ljava/lang/String;

.field final synthetic fj:Lcom/amazon/identity/auth/device/bl;

.field final synthetic fk:Lcom/amazon/identity/auth/device/az;

.field final synthetic fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

.field final synthetic fn:Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/az;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;Lcom/amazon/identity/auth/device/bl;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/amazon/identity/auth/device/az$3;->fk:Lcom/amazon/identity/auth/device/az;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/az$3;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/az$3;->aP:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/az$3;->N:Lcom/amazon/identity/auth/device/ej;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/az$3;->fn:Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/az$3;->fj:Lcom/amazon/identity/auth/device/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "ActorManagerLogic"

    const/4 v1, 0x1

    .line 471
    :try_start_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/az$3;->fk:Lcom/amazon/identity/auth/device/az;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/az$3;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getAccountDirectedId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/identity/auth/device/az$3;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getActorDirectedId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/identity/auth/device/az$3;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/az$3;->aP:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/az$3;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-static/range {v2 .. v7}, Lcom/amazon/identity/auth/device/az;->a(Lcom/amazon/identity/auth/device/az;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v2

    .line 472
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 474
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;->Force:Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/az$3;->fn:Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MAP is not able to get a valid actor type for the switch actor call"

    .line 476
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v2, p0, Lcom/amazon/identity/auth/device/az$3;->fj:Lcom/amazon/identity/auth/device/bl;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v4, "Actor type is null or unknown!"

    invoke-static {v3, v4, v1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void

    .line 483
    :cond_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/az$3;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getSuggestedActorType()Ljava/lang/String;

    move-result-object v2

    .line 486
    :cond_1
    iget-object v3, p0, Lcom/amazon/identity/auth/device/az$3;->fk:Lcom/amazon/identity/auth/device/az;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/az$3;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/az$3;->fj:Lcom/amazon/identity/auth/device/bl;

    invoke-static {v3, v4, v2, v5}, Lcom/amazon/identity/auth/device/az;->a(Lcom/amazon/identity/auth/device/az;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    const-string v3, "Received Exception for getActorType"

    .line 520
    invoke-static {v0, v3, v2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 521
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$3;->fj:Lcom/amazon/identity/auth/device/bl;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v3, "Unable to fetch actor type, please retry"

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void

    :catch_1
    const-string v2, "Timeout waiting for actor token after 15s, please check your network status."

    .line 515
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$3;->fj:Lcom/amazon/identity/auth/device/bl;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v3, "Timeout fetching actor type, please retry"

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void

    :catch_2
    move-exception v2

    const-string v3, "Received MAPCallbackErrorException for getActorType, checking detailed error..."

    .line 490
    invoke-static {v0, v3, v2}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 493
    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result v4

    const-string v5, "com.amazon.map.error.errorCode"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v4, v3, :cond_2

    .line 495
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$3;->fj:Lcom/amazon/identity/auth/device/bl;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void

    .line 499
    :cond_2
    iget-object v2, p0, Lcom/amazon/identity/auth/device/az$3;->fk:Lcom/amazon/identity/auth/device/az;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/az$3;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getAccountDirectedId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/identity/auth/device/az$3;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getActorDirectedId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/identity/auth/device/az;->a(Lcom/amazon/identity/auth/device/az;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/az$a;

    move-result-object v2

    iget-object v2, v2, Lcom/amazon/identity/auth/device/az$a;->fr:Ljava/lang/String;

    .line 500
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "No cached actor type. Fail the call if not in force switch mode."

    .line 502
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;->Force:Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/az$3;->fn:Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 505
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$3;->fj:Lcom/amazon/identity/auth/device/bl;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v3, "No cached actor type, please retry"

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void

    .line 508
    :cond_3
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$3;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getSuggestedActorType()Ljava/lang/String;

    move-result-object v2

    .line 511
    :cond_4
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$3;->fk:Lcom/amazon/identity/auth/device/az;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/az$3;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/az$3;->fj:Lcom/amazon/identity/auth/device/bl;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/az;->a(Lcom/amazon/identity/auth/device/az;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-void
.end method
