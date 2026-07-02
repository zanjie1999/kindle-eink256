.class Lcom/amazon/identity/auth/device/az$4;
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

.field final synthetic fo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/az;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;Lcom/amazon/identity/auth/device/bl;Ljava/lang/String;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/amazon/identity/auth/device/az$4;->fk:Lcom/amazon/identity/auth/device/az;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/az$4;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/az$4;->aP:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/az$4;->N:Lcom/amazon/identity/auth/device/ej;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/az$4;->fn:Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/az$4;->fj:Lcom/amazon/identity/auth/device/bl;

    iput-object p7, p0, Lcom/amazon/identity/auth/device/az$4;->fo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "ActorManagerLogic"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 556
    :try_start_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/az$4;->fk:Lcom/amazon/identity/auth/device/az;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/az$4;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getAccountDirectedId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/identity/auth/device/az$4;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getActorDirectedId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/identity/auth/device/az$4;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/az$4;->aP:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/identity/auth/device/az$4;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-static/range {v3 .. v8}, Lcom/amazon/identity/auth/device/az;->a(Lcom/amazon/identity/auth/device/az;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v3

    .line 557
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 559
    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;->Force:Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/az$4;->fn:Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "MAP is not able to get a valid actor type for switch actor call. Received actor type: "

    .line 561
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "1P_SWITCH_ACTOR_FAILED:CANNOT_FETCH_ACTOR_TYPE_NORMAL"

    new-array v4, v2, [Ljava/lang/String;

    .line 562
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 563
    iget-object v3, p0, Lcom/amazon/identity/auth/device/az$4;->fj:Lcom/amazon/identity/auth/device/bl;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v5, "Actor type is null or unknown!"

    invoke-static {v4, v5, v1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void

    .line 569
    :cond_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/az$4;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getSuggestedActorType()Ljava/lang/String;

    move-result-object v3

    .line 572
    :cond_1
    iget-object v4, p0, Lcom/amazon/identity/auth/device/az$4;->fk:Lcom/amazon/identity/auth/device/az;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/az$4;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/az$4;->fo:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/az$4;->fj:Lcom/amazon/identity/auth/device/bl;

    invoke-static {v4, v5, v3, v6, v7}, Lcom/amazon/identity/auth/device/az;->a(Lcom/amazon/identity/auth/device/az;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    const-string v4, "Received Exception for getActorType"

    .line 609
    invoke-static {v0, v4, v3}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 610
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$4;->fj:Lcom/amazon/identity/auth/device/bl;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v4, "Unable to fetch actor type, please retry"

    invoke-static {v3, v4, v1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "1P_SWITCH_ACTOR_FAILED:OTHER_EXCEPTION"

    .line 611
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :catch_1
    const-string v3, "Timeout waiting for actor token after 15s, please check your network status."

    .line 603
    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$4;->fj:Lcom/amazon/identity/auth/device/bl;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v4, "Timeout fetching actor type, please retry"

    invoke-static {v3, v4, v1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "1P_SWITCH_ACTOR_FAILED:TIMEOUT_FETCHING_ACTOR_TOKEN"

    .line 605
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v1

    const-string v3, "Received MAPCallbackErrorException for getActorType, checking detailed error..."

    .line 576
    invoke-static {v0, v3, v1}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 578
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 579
    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result v4

    const-string v5, "com.amazon.map.error.errorCode"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eq v4, v6, :cond_2

    .line 581
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$4;->fj:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1P_SWITCH_ACTOR_FAILED:MAP_CALLBACK_ERROR_WITH_CODE:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 586
    :cond_2
    iget-object v3, p0, Lcom/amazon/identity/auth/device/az$4;->fk:Lcom/amazon/identity/auth/device/az;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/az$4;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getAccountDirectedId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/identity/auth/device/az$4;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getActorDirectedId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/amazon/identity/auth/device/az;->a(Lcom/amazon/identity/auth/device/az;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/az$a;

    move-result-object v3

    iget-object v3, v3, Lcom/amazon/identity/auth/device/az$a;->fr:Ljava/lang/String;

    .line 587
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "No cached actor type. Fail the call if not in force switch mode."

    .line 589
    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;->Force:Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/az$4;->fn:Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "1P_SWITCH_ACTOR_FAILED:CANNOT_FETCH_ACTOR_TYPE_AND_NO_CACHE"

    .line 592
    invoke-static {v2, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$4;->fj:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void

    .line 596
    :cond_3
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$4;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/ActorInfo;->getSuggestedActorType()Ljava/lang/String;

    move-result-object v3

    .line 599
    :cond_4
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$4;->fk:Lcom/amazon/identity/auth/device/az;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/az$4;->fm:Lcom/amazon/identity/auth/device/api/ActorInfo;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/az$4;->fo:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/az$4;->fj:Lcom/amazon/identity/auth/device/bl;

    invoke-static {v0, v1, v3, v2, v4}, Lcom/amazon/identity/auth/device/az;->a(Lcom/amazon/identity/auth/device/az;Lcom/amazon/identity/auth/device/api/ActorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)V

    return-void
.end method
