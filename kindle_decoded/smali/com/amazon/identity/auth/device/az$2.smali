.class Lcom/amazon/identity/auth/device/az$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/az;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic fg:Ljava/lang/String;

.field final synthetic fh:Ljava/lang/String;

.field final synthetic fi:Ljava/lang/String;

.field final synthetic fj:Lcom/amazon/identity/auth/device/bl;

.field final synthetic fk:Lcom/amazon/identity/auth/device/az;

.field final synthetic fl:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/az;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/bl;Landroid/content/Context;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/amazon/identity/auth/device/az$2;->fk:Lcom/amazon/identity/auth/device/az;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/az$2;->fg:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/az$2;->fl:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/az$2;->N:Lcom/amazon/identity/auth/device/ej;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/az$2;->fh:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/az$2;->fi:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/identity/auth/device/az$2;->val$options:Landroid/os/Bundle;

    iput-object p8, p0, Lcom/amazon/identity/auth/device/az$2;->fj:Lcom/amazon/identity/auth/device/bl;

    iput-object p9, p0, Lcom/amazon/identity/auth/device/az$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "ActorManagerLogic"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 388
    :try_start_0
    iget-object v4, p0, Lcom/amazon/identity/auth/device/az$2;->fk:Lcom/amazon/identity/auth/device/az;

    const-string v5, "com.amazon.dcp.sso.token.oauth.amazon.actor.access_token"

    iget-object v6, p0, Lcom/amazon/identity/auth/device/az$2;->fg:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/az$2;->fl:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/identity/auth/device/az$2;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/amazon/identity/auth/device/az;->a(Lcom/amazon/identity/auth/device/az;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v12

    .line 389
    iget-object v4, p0, Lcom/amazon/identity/auth/device/az$2;->fk:Lcom/amazon/identity/auth/device/az;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/az$2;->fh:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/az$2;->fg:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/az$2;->fl:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/identity/auth/device/az$2;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-static {v4, v5, v6, v7, v8}, Lcom/amazon/identity/auth/device/az;->b(Lcom/amazon/identity/auth/device/az;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object v14

    .line 391
    iget-object v4, p0, Lcom/amazon/identity/auth/device/az$2;->fk:Lcom/amazon/identity/auth/device/az;

    .line 392
    invoke-static {v4}, Lcom/amazon/identity/auth/device/az;->a(Lcom/amazon/identity/auth/device/az;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v9

    iget-object v10, p0, Lcom/amazon/identity/auth/device/az$2;->fg:Ljava/lang/String;

    iget-object v11, p0, Lcom/amazon/identity/auth/device/az$2;->fi:Ljava/lang/String;

    iget-object v13, p0, Lcom/amazon/identity/auth/device/az$2;->val$options:Landroid/os/Bundle;

    invoke-static/range {v9 .. v14}, Lcom/amazon/identity/auth/device/fm$a;->a(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/fm$a;

    move-result-object v4

    .line 394
    iget-object v5, p0, Lcom/amazon/identity/auth/device/az$2;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-virtual {v4, v5}, Lcom/amazon/identity/auth/device/fn;->c(Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/fn$a;

    move-result-object v4

    .line 397
    new-instance v5, Lcom/amazon/identity/auth/device/bb;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/az$2;->fk:Lcom/amazon/identity/auth/device/az;

    invoke-static {v6}, Lcom/amazon/identity/auth/device/az;->b(Lcom/amazon/identity/auth/device/az;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/amazon/identity/auth/device/bb;-><init>(Lcom/amazon/identity/auth/device/token/OAuthTokenManager;)V

    .line 399
    iget-object v6, v4, Lcom/amazon/identity/auth/device/fn$a;->mM:Ljava/lang/Integer;

    invoke-static {v6}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->a(Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 401
    iget-object v6, p0, Lcom/amazon/identity/auth/device/az$2;->fj:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {v5, v6, v4}, Lcom/amazon/identity/auth/device/bb;->a(Lcom/amazon/identity/auth/device/bl;Lcom/amazon/identity/auth/device/fn$a;)V

    const-string v4, "Fail to call Panda for actor enroll call."

    .line 402
    invoke-static {v0, v4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v6, "Handling success response for enroll actor call. Proceed to webview."

    .line 406
    invoke-static {v0, v6}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v6, p0, Lcom/amazon/identity/auth/device/az$2;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/az$2;->fg:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/identity/auth/device/az$2;->fl:Ljava/lang/String;

    iget-object v9, p0, Lcom/amazon/identity/auth/device/az$2;->fj:Lcom/amazon/identity/auth/device/bl;

    iget-object v10, p0, Lcom/amazon/identity/auth/device/az$2;->val$options:Landroid/os/Bundle;

    iget-object v11, v4, Lcom/amazon/identity/auth/device/fn$a;->mL:Lorg/json/JSONObject;

    iget-object v12, p0, Lcom/amazon/identity/auth/device/az$2;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-virtual/range {v5 .. v12}, Lcom/amazon/identity/auth/device/bb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/bl;Landroid/os/Bundle;Lorg/json/JSONObject;Lcom/amazon/identity/auth/device/ej;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v4

    .line 429
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v6, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    .line 430
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "Received an exception before sending the enroll actor request. ErrorCode: %d ErrorMessage: %s "

    .line 429
    invoke-static {v5, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$2;->fj:Lcom/amazon/identity/auth/device/bl;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void

    :catch_1
    move-exception v4

    .line 423
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    .line 424
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "Received an error when getting actor token or cookies before sending the enroll actor request. ErrorCode: %d ErrorMessage: %s "

    .line 423
    invoke-static {v5, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$2;->fj:Lcom/amazon/identity/auth/device/bl;

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v1

    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void

    :catch_2
    move-exception v1

    const-string v2, "Received an IOException when parsing the enroll actor response."

    .line 418
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$2;->fj:Lcom/amazon/identity/auth/device/bl;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void

    :catch_3
    move-exception v1

    const-string v2, "Received a JSONException when parsing the enroll actor response"

    .line 413
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/amazon/identity/auth/device/az$2;->fj:Lcom/amazon/identity/auth/device/bl;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v3}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void
.end method
