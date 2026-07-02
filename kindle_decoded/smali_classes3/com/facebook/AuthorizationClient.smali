.class Lcom/facebook/AuthorizationClient;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AuthorizationClient$Result;,
        Lcom/facebook/AuthorizationClient$AuthorizationRequest;,
        Lcom/facebook/AuthorizationClient$AuthDialogBuilder;,
        Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;,
        Lcom/facebook/AuthorizationClient$KatanaAuthHandler;,
        Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;,
        Lcom/facebook/AuthorizationClient$WebViewAuthHandler;,
        Lcom/facebook/AuthorizationClient$AuthHandler;,
        Lcom/facebook/AuthorizationClient$StartActivityDelegate;,
        Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;,
        Lcom/facebook/AuthorizationClient$OnCompletedListener;
    }
.end annotation


# static fields
.field private static final EVENT_NAME_LOGIN_METHOD_COMPLETE:Ljava/lang/String; = "fb_mobile_login_method_complete"

.field private static final EVENT_NAME_LOGIN_METHOD_START:Ljava/lang/String; = "fb_mobile_login_method_start"

.field private static final EVENT_PARAM_METHOD_RESULT_SKIPPED:Ljava/lang/String; = "skipped"

.field private static final TAG:Ljava/lang/String; = "Facebook-AuthorizationClient"

.field private static final WEB_VIEW_AUTH_HANDLER_STORE:Ljava/lang/String; = "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

.field private static final WEB_VIEW_AUTH_HANDLER_TOKEN_KEY:Ljava/lang/String; = "TOKEN"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient appEventsLogger:Lcom/facebook/AppEventsLogger;

.field transient backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

.field transient checkedInternetPermission:Z

.field transient context:Landroid/content/Context;

.field currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

.field handlersToTry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/AuthorizationClient$AuthHandler;",
            ">;"
        }
    .end annotation
.end field

.field loggingExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field transient onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

.field pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

.field transient startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/AuthorizationClient;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStop()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-static {}, Lcom/facebook/AuthorizationClient;->getE2E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/AuthorizationClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/facebook/AuthorizationClient;->logWebLoginCompleted(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/AuthorizationClient;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V

    return-void
.end method

.method private addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 251
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 253
    :cond_1
    iget-object p3, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private completeWithFailure()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "Login attempt failed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V

    return-void
.end method

.method private getAppEventsLogger()Lcom/facebook/AppEventsLogger;
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    return-object v0
.end method

.method private static getE2E()Ljava/lang/String;
    .locals 4

    .line 878
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "init"

    .line 880
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHandlerTypes(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AuthorizationClient$AuthorizationRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/AuthorizationClient$AuthHandler;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lcom/facebook/SessionLoginBehavior;->allowsKatanaAuth()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy()Z

    move-result p1

    if-nez p1, :cond_0

    .line 190
    new-instance p1, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;

    invoke-direct {p1, p0}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_0
    new-instance p1, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;

    invoke-direct {p1, p0}, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/SessionLoginBehavior;->allowsWebViewAuth()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 196
    new-instance p1, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;

    invoke-direct {p1, p0}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private logAuthorizationMethodComplete(Ljava/lang/String;Lcom/facebook/AuthorizationClient$Result;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/AuthorizationClient$Result;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 480
    iget-object v0, p2, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    iget-object v5, p2, Lcom/facebook/AuthorizationClient$Result;->errorCode:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/AuthorizationClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "5_error_message"

    const-string v2, "2_result"

    if-nez v0, :cond_0

    const-string p2, ""

    .line 489
    invoke-static {p2}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 490
    sget-object p3, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    invoke-virtual {p3}, Lcom/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "Unexpected call to logAuthorizationMethodComplete with null pendingRequest."

    .line 491
    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 496
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 499
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    const-string p2, "4_error_code"

    .line 502
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p5, :cond_4

    .line 504
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 505
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 506
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "6_extras"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object p2, v0

    :goto_0
    const-string p3, "3_method"

    .line 509
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    const-string p1, "1_timestamp_ms"

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 512
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->getAppEventsLogger()Lcom/facebook/AppEventsLogger;

    move-result-object p1

    const/4 p3, 0x0

    const-string p4, "fb_mobile_login_method_complete"

    invoke-virtual {p1, p4, p3, p2}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method private logAuthorizationMethodStart(Ljava/lang/String;)V
    .locals 4

    .line 472
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "1_timestamp_ms"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "3_method"

    .line 474
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->getAppEventsLogger()Lcom/facebook/AppEventsLogger;

    move-result-object p1

    const-string v1, "fb_mobile_login_method_start"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method private logWebLoginCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 887
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    .line 889
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fb_web_login_e2e"

    .line 890
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string p2, "fb_web_login_switchback_time"

    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "app_id"

    .line 892
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fb_dialogs_web_login_dialog_complete"

    const/4 p2, 0x0

    .line 894
    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method static newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .line 517
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "1_timestamp_ms"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "0_auth_logger_id"

    .line 519
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    const-string v1, "3_method"

    .line 520
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "2_result"

    .line 521
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "5_error_message"

    .line 522
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "4_error_code"

    .line 523
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "6_extras"

    .line 524
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private notifyBackgroundProcessingStart()V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0}, Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;->onBackgroundProcessingStarted()V

    :cond_0
    return-void
.end method

.method private notifyBackgroundProcessingStop()V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0}, Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;->onBackgroundProcessingStopped()V

    :cond_0
    return-void
.end method

.method private notifyOnCompleteListener(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

    if-eqz v0, :cond_0

    .line 455
    invoke-interface {v0, p1}, Lcom/facebook/AuthorizationClient$OnCompletedListener;->onCompleted(Lcom/facebook/AuthorizationClient$Result;)V

    :cond_0
    return-void
.end method


# virtual methods
.method authorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-nez v0, :cond_2

    .line 147
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->needsNewTokenValidation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->checkInternetPermission()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 151
    :cond_1
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .line 152
    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient;->getHandlerTypes(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    .line 153
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V

    return-void

    .line 144
    :cond_2
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Attempted to authorize while a request is pending."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method cancelCurrentHandler()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->cancel()V

    :cond_0
    return-void
.end method

.method checkInternetPermission()Z
    .locals 3

    .line 203
    iget-boolean v0, p0, Lcom/facebook/AuthorizationClient;->checkedInternetPermission:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "android.permission.INTERNET"

    .line 207
    invoke-virtual {p0, v0}, Lcom/facebook/AuthorizationClient;->checkPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    sget v1, Lcom/facebook/android/R$string;->com_facebook_internet_permission_error_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    sget v2, Lcom/facebook/android/R$string;->com_facebook_internet_permission_error_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    iget-object v2, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v2, v0, v1}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V

    const/4 v0, 0x0

    return v0

    .line 216
    :cond_1
    iput-boolean v1, p0, Lcom/facebook/AuthorizationClient;->checkedInternetPermission:Z

    return v1
.end method

.method checkPermission(Ljava/lang/String;)I
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method complete(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;

    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/AuthorizationClient;->logAuthorizationMethodComplete(Ljava/lang/String;Lcom/facebook/AuthorizationClient$Result;Ljava/util/Map;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 294
    iput-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->loggingExtras:Ljava/util/Map;

    :cond_1
    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    .line 298
    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    .line 299
    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .line 300
    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    .line 302
    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient;->notifyOnCompleteListener(Lcom/facebook/AuthorizationClient$Result;)V

    return-void
.end method

.method completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 1

    .line 276
    iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->needsNewTokenValidation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->validateSameFbidAndFinish(Lcom/facebook/AuthorizationClient$Result;)V

    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V

    :goto_0
    return-void
.end method

.method continueAuth()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->needsRestart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->cancel()V

    .line 163
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->tryCurrentHandler()Z

    :cond_0
    return-void

    .line 158
    :cond_1
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Attempted to continue authorization without a pending request."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method createGetPermissionsRequest(Ljava/lang/String;)Lcom/facebook/Request;
    .locals 6

    .line 434
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "access_token"

    .line 435
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance p1, Lcom/facebook/Request;

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    const/4 v1, 0x0

    const-string v2, "me/permissions"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object p1
.end method

.method createGetProfileIdRequest(Ljava/lang/String;)Lcom/facebook/Request;
    .locals 6

    .line 440
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fields"

    const-string v1, "id"

    .line 441
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "access_token"

    .line 442
    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    new-instance p1, Lcom/facebook/Request;

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    const/4 v1, 0x0

    const-string v2, "me"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object p1
.end method

.method createReauthValidationBatch(Lcom/facebook/AuthorizationClient$Result;)Lcom/facebook/RequestBatch;
    .locals 9

    .line 362
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 363
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 364
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 365
    iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 367
    new-instance v1, Lcom/facebook/AuthorizationClient$3;

    invoke-direct {v1, p0, v2}, Lcom/facebook/AuthorizationClient$3;-><init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V

    .line 380
    iget-object v3, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v3}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPreviousAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-virtual {p0, v3}, Lcom/facebook/AuthorizationClient;->createGetProfileIdRequest(Ljava/lang/String;)Lcom/facebook/Request;

    move-result-object v6

    .line 382
    invoke-virtual {v6, v1}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 384
    invoke-virtual {p0, v0}, Lcom/facebook/AuthorizationClient;->createGetProfileIdRequest(Ljava/lang/String;)Lcom/facebook/Request;

    move-result-object v0

    .line 385
    invoke-virtual {v0, v1}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 387
    invoke-virtual {p0, v3}, Lcom/facebook/AuthorizationClient;->createGetPermissionsRequest(Ljava/lang/String;)Lcom/facebook/Request;

    move-result-object v1

    .line 388
    new-instance v3, Lcom/facebook/AuthorizationClient$4;

    invoke-direct {v3, p0, v4, v5}, Lcom/facebook/AuthorizationClient$4;-><init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 402
    new-instance v7, Lcom/facebook/RequestBatch;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/facebook/Request;

    const/4 v8, 0x0

    aput-object v6, v3, v8

    const/4 v6, 0x1

    aput-object v0, v3, v6

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-direct {v7, v3}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    .line 404
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/RequestBatch;->setBatchApplicationId(Ljava/lang/String;)V

    .line 405
    new-instance v6, Lcom/facebook/AuthorizationClient$5;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AuthorizationClient$5;-><init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;Lcom/facebook/AuthorizationClient$Result;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v6}, Lcom/facebook/RequestBatch;->addCallback(Lcom/facebook/RequestBatch$Callback;)V

    return-object v7
.end method

.method getInProgress()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    if-eqz v0, :cond_0

    return-object v0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_1

    .line 326
    new-instance v0, Lcom/facebook/AuthorizationClient$2;

    invoke-direct {v0, p0}, Lcom/facebook/AuthorizationClient$2;-><init>(Lcom/facebook/AuthorizationClient;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/AuthorizationClient$AuthHandler;->onActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method setBackgroundProcessingListener(Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    return-void
.end method

.method setContext(Landroid/app/Activity;)V
    .locals 1

    .line 113
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    .line 117
    new-instance v0, Lcom/facebook/AuthorizationClient$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/AuthorizationClient$1;-><init>(Lcom/facebook/AuthorizationClient;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    return-void
.end method

.method setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

    return-void
.end method

.method startOrContinueAuth(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->getInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->continueAuth()V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->authorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    :goto_0
    return-void
.end method

.method tryCurrentHandler()Z
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->needsInternetPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->checkInternetPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "no_internet_permission"

    const-string v2, "1"

    .line 258
    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/AuthorizationClient;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient$AuthHandler;->tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/AuthorizationClient;->logAuthorizationMethodStart(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "not_tried"

    invoke-direct {p0, v3, v1, v2}, Lcom/facebook/AuthorizationClient;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v0
.end method

.method tryNextHandler()V
    .locals 7

    .line 221
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    iget-object v6, v0, Lcom/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;

    const-string v3, "skipped"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/AuthorizationClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/AuthorizationClient$AuthHandler;

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    .line 229
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->tryCurrentHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_2

    .line 238
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->completeWithFailure()V

    :cond_2
    return-void
.end method

.method validateSameFbidAndFinish(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 1

    .line 346
    iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->createReauthValidationBatch(Lcom/facebook/AuthorizationClient$Result;)Lcom/facebook/RequestBatch;

    move-result-object p1

    .line 352
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V

    .line 354
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->executeAsync()Lcom/facebook/RequestAsyncTask;

    return-void

    .line 347
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t validate without a token"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
