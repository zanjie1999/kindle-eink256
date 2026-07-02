.class public Lcom/amazon/identity/auth/device/bb;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/token/OAuthTokenManager;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bb;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    return-void
.end method

.method private b(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "ui_action"

    .line 163
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "ActorSignUpAndEnrollHelper"

    .line 167
    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 168
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Cannot get loading url from json response"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private o(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "return_to_domain"

    .line 174
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "key_sign_in_full_endpoint"

    .line 175
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-static {p1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/bl;Landroid/os/Bundle;Lorg/json/JSONObject;Lcom/amazon/identity/auth/device/ej;)V
    .locals 2

    .line 75
    const-class v0, Lcom/amazon/identity/auth/device/activity/ActorSignUpAndEnrollActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/if;->t(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p6, :cond_0

    .line 82
    invoke-virtual {p6, v0}, Lcom/amazon/identity/auth/device/ej;->e(Landroid/content/Intent;)V

    :cond_0
    :try_start_0
    const-string v1, "account_id"

    .line 89
    invoke-virtual {p4, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "load_url"

    .line 90
    invoke-direct {p0, p5}, Lcom/amazon/identity/auth/device/bb;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p5, "return_to_url"

    .line 91
    invoke-direct {p0, p4}, Lcom/amazon/identity/auth/device/bb;->o(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p5, p0, Lcom/amazon/identity/auth/device/bb;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    const-string v1, "key_sign_in_full_endpoint"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, p2, v1, p4, p6}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 108
    new-instance p2, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    invoke-direct {p2, p3}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    const-string p3, "callback"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    instance-of p2, p1, Landroid/app/Activity;

    if-nez p2, :cond_1

    const/high16 p2, 0x10000000

    .line 111
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 103
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string p2, "Cannot parse response"

    invoke-static {p3, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p1

    const-string p2, "Cannot get cookies before launching the signUpAndEnroll UI"

    const-string p4, "ActorSignUpAndEnrollHelper"

    .line 97
    invoke-static {p4, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No activity can handle the intent. Probably because you do not declare ActorSignUpAndEnrollActivity in Android manifest"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/bl;Landroid/os/Bundle;Lorg/json/JSONObject;Lcom/amazon/identity/auth/device/ej;)V
    .locals 8

    .line 118
    const-class v0, Lcom/amazon/identity/auth/device/activity/ActorEnrollActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/if;->t(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p7, :cond_0

    .line 121
    invoke-virtual {p7, v0}, Lcom/amazon/identity/auth/device/ej;->e(Landroid/content/Intent;)V

    :cond_0
    if-eqz v0, :cond_2

    :try_start_0
    const-string v1, "account_id"

    .line 132
    invoke-virtual {p5, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "load_url"

    .line 133
    invoke-direct {p0, p6}, Lcom/amazon/identity/auth/device/bb;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p6, "return_to_url"

    .line 134
    invoke-direct {p0, p5}, Lcom/amazon/identity/auth/device/bb;->o(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, p6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/amazon/identity/auth/device/bb;->B:Lcom/amazon/identity/auth/device/token/OAuthTokenManager;

    const-string p6, "key_sign_in_full_endpoint"

    invoke-virtual {p5, p6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    invoke-virtual {v0, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 151
    new-instance p2, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    invoke-direct {p2, p4}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;-><init>(Lcom/amazon/identity/auth/device/api/Callback;)V

    const-string p3, "callback"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 152
    instance-of p2, p1, Landroid/app/Activity;

    if-nez p2, :cond_1

    const/high16 p2, 0x10000000

    .line 154
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 146
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string p2, "Cannot parse response for enroll actor request."

    invoke-static {p4, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p1

    const-string p2, "Cannot get cookies before launching the actor enroll UI"

    const-string p3, "ActorSignUpAndEnrollHelper"

    .line 140
    invoke-static {p3, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object p1

    invoke-static {p4, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->onError(Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No activity can handle the intent. Probably because you do not declare ActorEnrollActivity in Android manifest"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/amazon/identity/auth/device/bl;Lcom/amazon/identity/auth/device/fn$a;)V
    .locals 4

    .line 47
    iget-object v0, p2, Lcom/amazon/identity/auth/device/fn$a;->mL:Lorg/json/JSONObject;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p2, "No json in the response!"

    const-string v0, "ActorSignUpAndEnrollHelper"

    .line 49
    invoke-static {v0, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {v0, p2, v1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string v2, "error"

    const-string v3, "ParseError"

    .line 54
    invoke-static {v0, v2, v3}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object p2, p2, Lcom/amazon/identity/auth/device/fn$a;->mL:Lorg/json/JSONObject;

    const-string v2, "error_description"

    const-string v3, "Service returned known error."

    invoke-static {p2, v2, v3}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 57
    sget-object v2, Lcom/amazon/identity/auth/device/bb$1;->fs:[I

    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getAuthErrorTypeFromCode(Ljava/lang/String;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 69
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {v0, p2, v1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void

    .line 66
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$ActorError;->ACTOR_NOT_ASSOCIATED:Lcom/amazon/identity/auth/device/api/MAPError$ActorError;

    invoke-static {v0, p2, v2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void

    .line 63
    :cond_2
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$ActorError;->ACTOR_SIGNUP_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$ActorError;

    invoke-static {v0, p2, v1}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void

    .line 60
    :cond_3
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-static {v0, p2, v2}, Lcom/amazon/identity/auth/device/api/MAPErrorCallbackHelper;->getErrorBundleForActorAPI(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/bl;->onError(Landroid/os/Bundle;)V

    return-void
.end method
