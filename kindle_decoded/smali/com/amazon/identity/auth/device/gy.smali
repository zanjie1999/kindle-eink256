.class public Lcom/amazon/identity/auth/device/gy;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private final ar:Lcom/amazon/identity/auth/device/ea;

.field private final hM:Lcom/amazon/identity/auth/device/iv;

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final pp:Lcom/amazon/identity/auth/device/im;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/iv;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gy;->o:Lcom/amazon/identity/auth/device/ed;

    .line 94
    iput-object p2, p0, Lcom/amazon/identity/auth/device/gy;->hM:Lcom/amazon/identity/auth/device/iv;

    const-string p2, "dcp_device_info"

    .line 95
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/identity/auth/device/ea;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/gy;->ar:Lcom/amazon/identity/auth/device/ea;

    .line 96
    new-instance p2, Lcom/amazon/identity/auth/device/im;

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/im;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/identity/auth/device/gy;->pp:Lcom/amazon/identity/auth/device/im;

    return-void
.end method

.method private D(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "app_identifier"

    const-string/jumbo v1, "program"

    .line 403
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 409
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 410
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "app_platform"

    const-string v5, "android"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const-string p1, "PandaOAuthExchangeRequestHelper"

    const-string v0, "Cannot build switchContextJSon, return null."

    .line 415
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 518
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    aput-object p3, p0, p1

    const-string p1, "%s is not set in the response, ignoring..."

    .line 522
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PandaOAuthExchangeRequestHelper"

    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private cJ(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gy;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/ho;->c(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 433
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v0

    const-string v1, "/auth/token"

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 437
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should never occur, hardcoded constant."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private p(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gy;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 424
    invoke-static {}, Lcom/amazon/identity/auth/device/hs;->gv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_version"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 459
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 462
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "device_type"

    const-string v3, "PandaOAuthExchangeRequestHelper"

    if-eqz v1, :cond_0

    .line 464
    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 465
    iget-object p3, p0, Lcom/amazon/identity/auth/device/gy;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p3}, Lcom/amazon/identity/auth/device/ib;->aw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 469
    :cond_0
    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/amazon/identity/auth/device/gy;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1, p3}, Lcom/amazon/identity/auth/device/ib;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    :goto_0
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "token"

    .line 475
    invoke-virtual {p3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "account_refresh_token"

    .line 476
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 479
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 481
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "actor_refresh_token"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "JSON: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p4

    .line 142
    invoke-direct {p0, v9}, Lcom/amazon/identity/auth/device/gy;->cJ(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v10

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Refreshing Actor OAuth token with exchange token endpoint "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/amazon/identity/auth/device/gy;->o:Lcom/amazon/identity/auth/device/ed;

    move-object/from16 v11, p9

    .line 144
    invoke-virtual {v11, v1}, Lcom/amazon/identity/auth/device/ej;->O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PandaOAuthExchangeRequestHelper"

    .line 143
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object/from16 v7, p8

    goto :goto_0

    :cond_0
    const-string v0, "actor_cookies_for_request"

    move-object/from16 v7, p8

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/amazon/identity/auth/device/hx;->e(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v12, v0

    .line 148
    iget-object v13, v8, Lcom/amazon/identity/auth/device/gy;->hM:Lcom/amazon/identity/auth/device/iv;

    iget-object v14, v8, Lcom/amazon/identity/auth/device/gy;->o:Lcom/amazon/identity/auth/device/ed;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 150
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/identity/auth/device/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v3

    move-object v0, v13

    move-object v1, v14

    move-object v2, v10

    move-object v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p9

    .line 148
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/identity/auth/device/iv;->a(Landroid/content/Context;Ljava/net/URL;Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 279
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 280
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gy;->p(Lorg/json/JSONObject;)V

    const-string/jumbo v1, "source_token_type"

    const-string v2, "authorization_code"

    .line 281
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "source_token"

    .line 282
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "requested_token_type"

    const-string v1, "access_token"

    .line 283
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "code_verifier"

    .line 284
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "code_algorithm"

    .line 285
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "client_id"

    .line 286
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "client_domain"

    .line 287
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gy;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_name"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gy;->pp:Lcom/amazon/identity/auth/device/im;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/im;->gI()Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo p2, "map_version"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 381
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 383
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gy;->p(Lorg/json/JSONObject;)V

    const-string/jumbo v1, "source_token_type"

    const-string/jumbo v2, "refresh_token"

    .line 384
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "requested_token_type"

    const-string v2, "actor_access_token"

    .line 385
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2446
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 2447
    invoke-direct {p0, p1, p3, v2}, Lcom/amazon/identity/auth/device/gy;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 2448
    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    if-eqz p2, :cond_0

    .line 2449
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2451
    invoke-direct {p0, p2, v2, p5}, Lcom/amazon/identity/auth/device/gy;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2452
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    const-string/jumbo p1, "source_device_tokens"

    .line 386
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "actor_id"

    .line 387
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    invoke-direct {p0, p7}, Lcom/amazon/identity/auth/device/gy;->D(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "actor_switch_context"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "token_validation_failure_context"

    .line 391
    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "auth_portal_config"

    .line 392
    invoke-virtual {p7, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 2539
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string p4, "com.amazon.identity.auth.device.api.TokenKeys.Options.ChallengeURLAssocHandle"

    .line 2541
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "client_config"

    invoke-virtual {p3, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "com.amazon.identity.auth.device.api.TokenKeys.Options.ChallengeURLPageId"

    .line 2542
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string/jumbo p5, "ui_config"

    invoke-virtual {p3, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "com.amazon.identity.auth.device.api.TokenKeys.Options.ChallengeURLDomain"

    .line 2543
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "domain"

    invoke-virtual {p3, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "com.amazon.identity.auth.device.api.TokenKeys.Options.ChallengeURLReturnToDomain"

    .line 2544
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string/jumbo p6, "redirect_uri"

    invoke-virtual {p3, p6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2545
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "cancel_uri"

    invoke-virtual {p3, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 392
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    invoke-static {}, Lcom/amazon/identity/auth/device/activity/MAPWebviewActivityTemplate;->aZ()Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo p2, "ui_capacity"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "RefreshActorTokenBodyJSON"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "PandaOAuthExchangeRequestHelper"

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gy;->hM:Lcom/amazon/identity/auth/device/iv;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/iv;->a(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 117
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/gy;->cJ(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Refreshing Normal OAuth token with exchange token endpoint "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gy;->o:Lcom/amazon/identity/auth/device/ed;

    .line 119
    invoke-virtual {p4, v1}, Lcom/amazon/identity/auth/device/ej;->O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PandaOAuthExchangeRequestHelper"

    .line 118
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1, p4}, Lcom/amazon/identity/auth/device/gy;->f(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;

    move-result-object v3

    .line 121
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gy;->hM:Lcom/amazon/identity/auth/device/iv;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/gy;->o:Lcom/amazon/identity/auth/device/ed;

    const/4 v4, 0x0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/identity/auth/device/iv;->a(Landroid/content/Context;Ljava/net/URL;Lorg/json/JSONObject;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method b(Lorg/json/JSONArray;)[Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 490
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 491
    new-array v1, v0, [Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 495
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "device_type"

    .line 496
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "actor_access_token"

    .line 499
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "token"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "actor_refresh_token"

    const-string v8, "Actor refresh token"

    .line 502
    invoke-static {v3, v5, v6, v8}, Lcom/amazon/identity/auth/device/gy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "account_refresh_token"

    const-string v8, "Account refresh token"

    .line 505
    invoke-static {v3, v5, v6, v8}, Lcom/amazon/identity/auth/device/gy;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 507
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "expires_in"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 508
    new-instance v4, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;

    move-object v5, v4

    move-object v6, v7

    move v7, v3

    invoke-direct/range {v5 .. v10}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 328
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 329
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/gy;->p(Lorg/json/JSONObject;)V

    const-string/jumbo v1, "source_token_type"

    .line 330
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "source_token"

    .line 331
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "requested_token_type"

    .line 332
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gy;->o:Lcom/amazon/identity/auth/device/ed;

    .line 337
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 336
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/ib;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/identity/auth/device/gy;->ar:Lcom/amazon/identity/auth/device/ea;

    .line 338
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/ea;->ct()Ljava/lang/String;

    move-result-object p3

    .line 335
    invoke-static {p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/fi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "device_metadata"

    .line 334
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gy;->pp:Lcom/amazon/identity/auth/device/im;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/im;->gI()Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo p2, "map_version"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method f(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "refresh_token"

    const-string v1, "access_token"

    .line 349
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/amazon/identity/auth/device/gy;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "refresh_token"

    const-string v1, "delegated_access_token"

    .line 316
    invoke-virtual {p0, v0, p1, v1, p3}, Lcom/amazon/identity/auth/device/gy;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "directed_id"

    .line 320
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Delegated token exchange body: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PandaOAuthExchangeRequestHelper"

    invoke-static {p2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object p1
.end method

.method public l(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "expires_in"

    .line 167
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "token_type"

    .line 168
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "access_token"

    .line 169
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "refresh_token"

    .line 170
    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "bearer"

    .line 172
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    .line 182
    new-instance v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;

    invoke-direct {v0, v3, v1, p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 179
    :cond_0
    new-instance p1, Ljava/text/ParseException;

    const-string v1, "Incomplete response."

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 174
    :cond_1
    new-instance p1, Ljava/text/ParseException;

    const-string v1, "Unexpected token type."

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 164
    :cond_2
    new-instance p1, Ljava/text/ParseException;

    const-string v1, "Null response"

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public m(Lorg/json/JSONObject;)[Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string/jumbo v1, "ui_action"

    .line 1530
    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/ih;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "next_step"

    invoke-static {v2, v4, v3}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "OpenInWebView"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1532
    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/ih;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-static {v1, v2, v3}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    :try_start_0
    const-string/jumbo v1, "token_type"

    .line 197
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bearer"

    .line 198
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "device_tokens"

    .line 203
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/gy;->b(Lorg/json/JSONArray;)[Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;

    move-result-object p1

    return-object p1

    .line 206
    :cond_1
    new-instance p1, Ljava/text/ParseException;

    const-string v1, "Incomplete response, device tokens is null."

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 200
    :cond_2
    new-instance p1, Ljava/text/ParseException;

    const-string v1, "Unexpected token type."

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 213
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 218
    :cond_3
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->AUTHENTICATION_CHALLENGED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v1

    invoke-direct {p1, v0, v3, v1, v3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw p1

    .line 190
    :cond_4
    new-instance p1, Ljava/text/ParseException;

    const-string v1, "Null response"

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public n(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-string v2, "PandaOAuthExchangeRequestHelper"

    if-nez v0, :cond_0

    .line 234
    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    const-string v3, "error_description"

    .line 241
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "error"

    .line 242
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "error_index"

    .line 243
    invoke-static {v0, v4, v1}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 245
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getAuthErrorTypeFromCode(Ljava/lang/String;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 250
    :catch_0
    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 251
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    sget-object v11, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ParseError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v12, "Unable to parse response JSON."

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public o(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/az$a;
    .locals 3

    :try_start_0
    const-string v0, "actor_info"

    .line 299
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "actor_sub_type"

    .line 300
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "actor_entity_type"

    .line 301
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "actor_converted_type"

    .line 302
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 303
    new-instance v2, Lcom/amazon/identity/auth/device/az$a;

    invoke-direct {v2, v0, v1, p1}, Lcom/amazon/identity/auth/device/az$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    const-string v0, "PandaOAuthExchangeRequestHelper"

    const-string v1, "Failed to parse actor info from the response. Just return null."

    .line 307
    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
