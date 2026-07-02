.class public Lcom/amazon/identity/auth/device/token/OAuthTokenManager;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;,
        Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;,
        Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
    }
.end annotation


# static fields
.field private static final pb:J

.field private static final pl:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final F:Lcom/amazon/identity/auth/device/eh;

.field private final aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

.field private final av:Lcom/amazon/identity/auth/device/co;

.field private final dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field private final hM:Lcom/amazon/identity/auth/device/iv;

.field private final mR:Lcom/amazon/identity/auth/device/gz;

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final pc:Lcom/amazon/identity/auth/device/hh;

.field private final pm:Lcom/amazon/identity/auth/device/gi;

.field private final pn:Lcom/amazon/identity/auth/device/ha;

.field private final po:Lcom/amazon/identity/auth/device/hq;

.field private final pp:Lcom/amazon/identity/auth/device/im;

.field private final pq:Lcom/amazon/identity/auth/device/gy;

.field private final z:Lcom/amazon/identity/auth/device/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 289
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jg;->d(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pb:J

    .line 314
    const-class v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    .line 315
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pl:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 348
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    const-string v1, "dcp_system"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/amazon/identity/auth/device/eh;

    new-instance v4, Lcom/amazon/identity/auth/device/gi;

    invoke-direct {v4, p1}, Lcom/amazon/identity/auth/device/gi;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/amazon/identity/auth/device/iv;

    invoke-direct {v5}, Lcom/amazon/identity/auth/device/iv;-><init>()V

    new-instance v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v6, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/amazon/identity/auth/device/w;

    invoke-direct {v7}, Lcom/amazon/identity/auth/device/w;-><init>()V

    new-instance v8, Lcom/amazon/identity/auth/device/gy;

    .line 353
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    new-instance v1, Lcom/amazon/identity/auth/device/iv;

    invoke-direct {v1}, Lcom/amazon/identity/auth/device/iv;-><init>()V

    invoke-direct {v8, v0, v1}, Lcom/amazon/identity/auth/device/gy;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/iv;)V

    new-instance v9, Lcom/amazon/identity/auth/device/im;

    invoke-direct {v9, p1}, Lcom/amazon/identity/auth/device/im;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/amazon/identity/auth/device/ha;

    .line 355
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    new-instance v1, Lcom/amazon/identity/auth/device/gi;

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/gi;-><init>(Landroid/content/Context;)V

    invoke-direct {v10, v0, v1}, Lcom/amazon/identity/auth/device/ha;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/gi;)V

    new-instance v11, Lcom/amazon/identity/auth/device/gz;

    invoke-direct {v11, p1}, Lcom/amazon/identity/auth/device/gz;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    .line 347
    invoke-direct/range {v1 .. v11}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/eh;Lcom/amazon/identity/auth/device/gi;Lcom/amazon/identity/auth/device/iv;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/identity/auth/device/w;Lcom/amazon/identity/auth/device/gy;Lcom/amazon/identity/auth/device/im;Lcom/amazon/identity/auth/device/ha;Lcom/amazon/identity/auth/device/gz;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/eh;Lcom/amazon/identity/auth/device/gi;Lcom/amazon/identity/auth/device/iv;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/identity/auth/device/w;Lcom/amazon/identity/auth/device/gy;Lcom/amazon/identity/auth/device/im;Lcom/amazon/identity/auth/device/ha;Lcom/amazon/identity/auth/device/gz;)V
    .locals 0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 375
    iput-object p2, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->F:Lcom/amazon/identity/auth/device/eh;

    .line 377
    iput-object p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    .line 379
    iput-object p4, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->hM:Lcom/amazon/identity/auth/device/iv;

    .line 381
    iput-object p5, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    .line 383
    iput-object p6, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->z:Lcom/amazon/identity/auth/device/w;

    .line 385
    iput-object p9, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pn:Lcom/amazon/identity/auth/device/ha;

    .line 387
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dV()Lcom/amazon/identity/auth/device/co;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->av:Lcom/amazon/identity/auth/device/co;

    .line 389
    new-instance p1, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    .line 391
    new-instance p1, Lcom/amazon/identity/auth/device/hq;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/hq;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->po:Lcom/amazon/identity/auth/device/hq;

    .line 393
    iput-object p7, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    .line 395
    iput-object p8, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pp:Lcom/amazon/identity/auth/device/im;

    .line 397
    iput-object p10, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->mR:Lcom/amazon/identity/auth/device/gz;

    .line 399
    invoke-static {}, Lcom/amazon/identity/auth/device/hh;->gm()Lcom/amazon/identity/auth/device/hh;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pc:Lcom/amazon/identity/auth/device/hh;

    return-void
.end method

.method private Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2373
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pc:Lcom/amazon/identity/auth/device/hh;

    monitor-enter v0

    .line 2375
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    const-string v2, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    .line 25389
    invoke-static {p2, v2}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2375
    invoke-virtual {v1, p1, p2}, Lcom/amazon/identity/auth/device/gi;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2376
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private Z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2381
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pc:Lcom/amazon/identity/auth/device/hh;

    monitor-enter v0

    .line 2383
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    .line 25399
    invoke-static {p2}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getAccessTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2383
    invoke-virtual {v1, p1, p2}, Lcom/amazon/identity/auth/device/gi;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2384
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, "An invalid response was received: %s"

    const-string v5, "A network error occurred: %s"

    const-string v6, "exchangeDMSCredentialsForOAuthTokenFailure:IOException"

    if-eqz v0, :cond_5

    .line 1213
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exchange DMS token to OAuth token for package "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " due to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 1215
    invoke-virtual {v3, v8}, Lcom/amazon/identity/auth/device/ej;->O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OAuthTokenManager"

    .line 1213
    invoke-static {v8, v7}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_0
    const-string v12, "exchangeDMSCredentialsForOAuthToken"

    .line 1220
    invoke-static {v8, v12}, Lcom/amazon/identity/auth/device/mn;->az(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v12

    .line 1222
    new-instance v13, Lcom/amazon/identity/auth/device/gy;

    iget-object v14, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v14}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v14

    new-instance v15, Lcom/amazon/identity/auth/device/iv;

    invoke-direct {v15}, Lcom/amazon/identity/auth/device/iv;-><init>()V

    invoke-direct {v13, v14, v15}, Lcom/amazon/identity/auth/device/gy;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/iv;)V

    iget-object v14, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v13, v14, v0, v2}, Lcom/amazon/identity/auth/device/fr;->a(Lcom/amazon/identity/auth/device/gy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/fr$b;

    move-result-object v13

    .line 1227
    invoke-virtual {v13, v3}, Lcom/amazon/identity/auth/device/fn;->c(Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/fn$a;

    move-result-object v3

    .line 1228
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Exchanging DMS token with exchange token endpoint: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/amazon/identity/auth/device/fn;->eM()Ljava/net/URL;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    invoke-virtual {v12}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 1231
    iget-object v12, v3, Lcom/amazon/identity/auth/device/fn$a;->mM:Ljava/lang/Integer;

    .line 1232
    iget-object v3, v3, Lcom/amazon/identity/auth/device/fn$a;->mL:Lorg/json/JSONObject;

    const-string v13, "Response received for exchange DMS to OAuth end-point"

    .line 1233
    invoke-static {v8, v13}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    iget-object v8, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-virtual {v8, v12}, Lcom/amazon/identity/auth/device/gy;->a(Ljava/lang/Integer;)Z

    move-result v8

    if-nez v8, :cond_2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v8, "exchangeDMSCredentialsForOAuthTokenSuccess"

    new-array v12, v11, [Ljava/lang/String;

    .line 1250
    invoke-static {v8, v12}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1251
    iget-object v8, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-virtual {v8, v3}, Lcom/amazon/identity/auth/device/gy;->l(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;

    move-result-object v3

    .line 1252
    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;)V

    if-eqz p3, :cond_1

    .line 1256
    iget-object v0, v3, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mP:Ljava/lang/String;

    return-object v0

    .line 1260
    :cond_1
    iget-object v0, v3, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mAccessToken:Ljava/lang/String;

    return-object v0

    :cond_2
    :goto_0
    const-string v2, "Error Response: %s"

    new-array v8, v10, [Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 1237
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_3
    const-string v13, "Null Json Response"

    :goto_1
    aput-object v13, v8, v11

    invoke-static {v2, v8}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1240
    iget-object v2, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-virtual {v2, v3}, Lcom/amazon/identity/auth/device/gy;->n(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    move-result-object v2

    .line 1242
    sget-object v3, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->DMSTokenToOauthTokenExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    invoke-virtual {v1, v0, v2, v12, v3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Ljava/lang/Integer;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :goto_2
    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "exchangeDMSCredentialsForOAuthTokenFailure:JSONException"

    .line 1325
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1328
    new-instance v2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v5, v10, [Ljava/lang/Object;

    .line 1329
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1331
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v7, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v2

    :goto_3
    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "exchangeDMSCredentialsForOAuthTokenFailure:ParseException"

    .line 1313
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1316
    new-instance v2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v5, v10, [Ljava/lang/Object;

    .line 1317
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1319
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v7, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v2

    :goto_4
    new-array v2, v11, [Ljava/lang/String;

    .line 1298
    invoke-static {v6, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "NetworkError9:OAuthTokenManager"

    .line 1302
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1306
    new-instance v2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v4, v10, [Ljava/lang/Object;

    .line 1307
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v9, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    .line 1265
    :goto_5
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;->getAccountRecoverContextBundle()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1269
    new-instance v2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v13, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->CORRUPTED_DATABASE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1271
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v15

    new-instance v17, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    sget-object v4, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidToken:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v5, "RecoverAccount"

    const-string v6, "MAP client side database is corrupted."

    move-object/from16 v3, v17

    invoke-direct/range {v3 .. v8}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;->getAccountRecoverContextBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/fl;->B(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v18

    const-string v14, "MAP Database is corrupted"

    const-string v16, "MAP Database is corrupted"

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Lcom/amazon/identity/auth/device/fl;)V

    throw v2

    :cond_4
    new-array v2, v11, [Ljava/lang/String;

    .line 1282
    invoke-static {v6, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "NetworkError8:OAuthTokenManager"

    .line 1286
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1290
    new-instance v2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v4, v10, [Ljava/lang/Object;

    .line 1291
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1293
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v9, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v2

    .line 1207
    :cond_5
    new-instance v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/16 v3, 0x8

    const-string v4, "Given Account is currently not valid"

    invoke-direct {v0, v2, v4, v3, v4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;[Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 2219
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 2221
    iget-object v4, v3, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->bi:Ljava/lang/String;

    .line 2222
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2224
    iget-object v5, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v5, p1}, Lcom/amazon/identity/auth/device/ib;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2226
    iget-object p1, v3, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mAccessToken:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "OAuthTokenManager"

    .line 2230
    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2231
    new-instance p1, Ljava/text/ParseException;

    const-string p2, "Can not get actor token from service response"

    invoke-direct {p1, p2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;)V
    .locals 7

    .line 2204
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->isAccountRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2206
    :cond_0
    iget v4, p3, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->pr:I

    iget-object v5, p3, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mP:Ljava/lang/String;

    iget-object v6, p3, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mAccessToken:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2212
    iget-object p2, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pn:Lcom/amazon/identity/auth/device/ha;

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/ha;->cM(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 2278
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pc:Lcom/amazon/identity/auth/device/hh;

    monitor-enter v0

    .line 2280
    :try_start_0
    iget-object v1, p4, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mP:Ljava/lang/String;

    .line 2281
    iget-object v2, p4, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->ps:Ljava/lang/String;

    .line 2282
    iget-object v3, p4, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mAccessToken:Ljava/lang/String;

    .line 2283
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2289
    iget v4, p4, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->pr:I

    .line 2290
    iget-object p4, p4, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->bi:Ljava/lang/String;

    .line 2291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2292
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 2294
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2296
    iget-object v9, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v9}, Lcom/amazon/identity/auth/device/ib;->aw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 2297
    invoke-virtual {v9, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2298
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    .line 24389
    invoke-static {p3, p4}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2300
    invoke-interface {v4, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "com.amazon.dcp.sso.token.oauth.amazon.actor.refresh_token"

    .line 24394
    invoke-static {p3, p4}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2304
    invoke-interface {v4, p4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p4, "com.amazon.dcp.sso.token.oauth.amazon.actor.access_token"

    .line 24404
    invoke-static {p3, p4}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2306
    invoke-interface {v4, p4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "com.amazon.dcp.sso.token.oauth.amazon.access_token.expires_at"

    .line 24409
    invoke-static {p3, p4}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2307
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "com.amazon.dcp.sso.token.oauth.amazon.access_token.refreshed_at"

    .line 24414
    invoke-static {p3, p4}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2308
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v4, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    iget-object p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {p3, p1, p2, v4}, Lcom/amazon/identity/auth/device/gi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2311
    monitor-exit v0

    return-void

    :cond_3
    const-string p1, "OAuthTokenManager"

    .line 2285
    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2286
    new-instance p1, Ljava/text/ParseException;

    const-string p2, "No access token received for package: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catchall_0
    move-exception p1

    .line 2311
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Ljava/util/List;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/gz$c;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 672
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pc:Lcom/amazon/identity/auth/device/hh;

    monitor-enter v0

    .line 4648
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v1, p3}, Lcom/amazon/identity/auth/device/gi;->ca(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 4649
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5438
    iget-object v3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pc:Lcom/amazon/identity/auth/device/hh;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v4, "OAuthTokenManager"

    const-string v5, "Expiring actor access tokens for actor: "

    .line 5440
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v4}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 5441
    iget-object v4, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v4, p3}, Lcom/amazon/identity/auth/device/gi;->ce(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 5442
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5444
    invoke-direct {p0, v5, v2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->ac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "OAuthTokenManager"

    const-string v7, "Expiring token key: "

    .line 5446
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v6}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 5449
    iget-object v6, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v6, p3, v5}, Lcom/amazon/identity/auth/device/gi;->J(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5452
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4652
    :try_start_2
    invoke-direct {p0, p3, v2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->ab(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5452
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 6027
    :cond_2
    iget-object v1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v1, p3}, Lcom/amazon/identity/auth/device/gi;->ce(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 6028
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "com.amazon.dcp.sso.token.amazon.cookies."

    .line 6030
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6032
    iget-object v3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v3, p3, v2}, Lcom/amazon/identity/auth/device/gi;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4659
    :cond_4
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7018
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 7399
    invoke-static {v2}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getAccessTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7019
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v4, "com.amazon.dcp.sso.token.oauth.amazon.access_token.expires_at"

    .line 7409
    invoke-static {v2, v4}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7020
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v4, "com.amazon.dcp.sso.token.oauth.amazon.access_token.refreshed_at"

    .line 7414
    invoke-static {v2, v4}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7021
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7022
    iget-object v2, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v2, p3, v1, v3}, Lcom/amazon/identity/auth/device/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_3

    .line 678
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/identity/auth/device/gz$c;

    .line 680
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gz$c;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OAuthTokenManager"

    const-string v4, "Store account upgraded token for device type "

    .line 682
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gz$c;->gc()Lcom/amazon/identity/auth/device/gz$b;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 685
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/gz$b;->isValid()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "OAuthTokenManager"

    const-string v5, "Store upgraded account refresh token."

    .line 687
    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/gz$b;->fY()Ljava/lang/String;

    move-result-object v3

    .line 7989
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    .line 8389
    invoke-static {v2, v5}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7991
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7993
    iget-object v3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v3, p3, v1, v4}, Lcom/amazon/identity/auth/device/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_5

    :cond_7
    const-string v3, "OAuthTokenManager"

    const-string v4, "No valid upgraded token in the response, this should never happen!"

    .line 692
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "invalidUpgradedAccountRefreshToken"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 693
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 696
    :goto_5
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gz$c;->gb()Lcom/amazon/identity/auth/device/gz$a;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 697
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/gz$a;->isValid()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "OAuthTokenManager"

    const-string v5, "Store upgraded account access token."

    .line 699
    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/gz$a;->fX()I

    move-result v4

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/gz$a;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 9003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 9004
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 9006
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 9399
    invoke-static {v2}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getAccessTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 9008
    invoke-interface {v4, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.amazon.dcp.sso.token.oauth.amazon.access_token.expires_at"

    .line 9409
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9009
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "com.amazon.dcp.sso.token.oauth.amazon.access_token.refreshed_at"

    .line 9414
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9010
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9011
    iget-object v3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v3, p3, v1, v4}, Lcom/amazon/identity/auth/device/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_6

    :cond_8
    const-string v3, "OAuthTokenManager"

    const-string v4, "Upgraded account access token is invalid, not store it."

    .line 704
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :goto_6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "OAuthTokenManager"

    const-string v4, "Update local actor token for device type "

    .line 709
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gz$c;->ga()Lcom/amazon/identity/auth/device/gz$b;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 711
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/gz$b;->isValid()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "OAuthTokenManager"

    const-string v5, "Store upgraded actor refresh token."

    .line 713
    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/gz$b;->fY()Ljava/lang/String;

    move-result-object v3

    .line 10322
    iget-object v4, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pc:Lcom/amazon/identity/auth/device/hh;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 10324
    :try_start_5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "com.amazon.dcp.sso.token.oauth.amazon.actor.refresh_token"

    .line 10394
    invoke-static {v2, v6}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10325
    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10326
    iget-object v3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v3, p3, p4, v1, v5}, Lcom/amazon/identity/auth/device/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 10330
    monitor-exit v4

    goto :goto_7

    :catchall_1
    move-exception p1

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :cond_9
    const-string v3, "OAuthTokenManager"

    const-string v4, "Upgraded actor refresh token is invalid, not store it."

    .line 718
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    :goto_7
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gz$c;->fZ()Lcom/amazon/identity/auth/device/gz$a;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 722
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gz$a;->isValid()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "OAuthTokenManager"

    const-string v4, "Store upgraded actor access token."

    .line 724
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gz$a;->fX()I

    move-result v3

    .line 730
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/gz$a;->getAccessToken()Ljava/lang/String;

    move-result-object p2

    .line 11341
    iget-object v4, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pc:Lcom/amazon/identity/auth/device/hh;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 11343
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 11344
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 11346
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v9, "com.amazon.dcp.sso.token.oauth.amazon.actor.access_token"

    .line 11404
    invoke-static {v2, v9}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 11348
    invoke-interface {v3, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "com.amazon.dcp.sso.token.oauth.amazon.access_token.expires_at"

    .line 11409
    invoke-static {v2, p2}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11349
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "com.amazon.dcp.sso.token.oauth.amazon.access_token.refreshed_at"

    .line 11414
    invoke-static {v2, p2}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11350
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11351
    iget-object p2, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {p2, p3, p4, v1, v3}, Lcom/amazon/identity/auth/device/gi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 11352
    monitor-exit v4

    goto/16 :goto_4

    :catchall_2
    move-exception p1

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1

    :cond_a
    const-string p2, "OAuthTokenManager"

    const-string v1, "Upgraded actor access token is invalid, not store it."

    .line 734
    invoke-static {p2, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 738
    :cond_b
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1
.end method

.method private a(JLjava/lang/String;)Z
    .locals 4

    .line 1183
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1188
    :cond_0
    invoke-static {p3}, Lcom/amazon/identity/auth/device/jb;->dA(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1190
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p3, p1, v2

    if-gez p3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private a(Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)Z
    .locals 4

    .line 1178
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p2, "com.amazon.identity.auth.device.api.TokenKeys.Options.OAuthAccessTokenTTLInMilliSec"

    const-wide/16 v2, 0x0

    invoke-virtual {p3, p2, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    add-long/2addr v0, p2

    sget-wide p2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pb:J

    add-long/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p3, v0, p1

    if-ltz p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private aa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2419
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pc:Lcom/amazon/identity/auth/device/hh;

    monitor-enter v0

    :try_start_0
    const-string v1, "OAuthTokenManager"

    const-string v2, "Expiring all actor tokens for actor: "

    .line 2421
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2422
    iget-object v1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/gi;->ce(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 2423
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "/"

    .line 25473
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25476
    invoke-direct {p0, v2, p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->ac(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const-string v6, "com.amazon.dcp.sso.token.oauth.amazon.actor.refresh_token"

    .line 26394
    invoke-static {v5, v6}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 25477
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_0

    const-string v3, "OAuthTokenManager"

    const-string v4, "Expiring token key: "

    .line 2427
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2430
    iget-object v3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v3, p1, v2}, Lcom/amazon/identity/auth/device/gi;->J(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2433
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private ab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2456
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pc:Lcom/amazon/identity/auth/device/hh;

    monitor-enter v0

    :try_start_0
    const-string v1, "OAuthTokenManager"

    const-string v2, "Expiring actor cookies for actor: "

    .line 2458
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2459
    iget-object v1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/gi;->ce(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 2460
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "com.amazon.dcp.sso.token.amazon.actor.cookies"

    .line 26494
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    const-string v3, "OAuthTokenManager"

    const-string v4, "Expiring cookie key: "

    .line 2464
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2465
    iget-object v3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {v3, p1, v2}, Lcom/amazon/identity/auth/device/gi;->J(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2468
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private ac(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 2482
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "com.amazon.dcp.sso.token.oauth.amazon.actor.access_token"

    .line 27404
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2485
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.amazon.dcp.sso.token.oauth.amazon.access_token.expires_at"

    .line 27409
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2486
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.amazon.dcp.sso.token.oauth.amazon.access_token.refreshed_at"

    .line 27414
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private b(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Z
    .locals 1

    .line 1086
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->X(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1091
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Z

    move-result p1

    return p1
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
        }
    .end annotation

    const-string v0, "An invalid response was received: %s"

    const-string v1, "OAuthTokenManager"

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v5, "refreshDelegatedOAuthToken"

    .line 1886
    invoke-static {v1, v5}, Lcom/amazon/identity/auth/device/mn;->az(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v5

    .line 1888
    new-instance v6, Lcom/amazon/identity/auth/device/gy;

    iget-object v7, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 1889
    invoke-static {v7}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v7

    new-instance v8, Lcom/amazon/identity/auth/device/iv;

    invoke-direct {v8}, Lcom/amazon/identity/auth/device/iv;-><init>()V

    invoke-direct {v6, v7, v8}, Lcom/amazon/identity/auth/device/gy;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/iv;)V

    iget-object v7, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 1888
    invoke-static {v6, v7, p1, p2, p4}, Lcom/amazon/identity/auth/device/fr;->a(Lcom/amazon/identity/auth/device/gy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/fr$c;

    move-result-object p2

    .line 1896
    invoke-virtual {p2, p5}, Lcom/amazon/identity/auth/device/fn;->c(Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/fn$a;

    move-result-object p2

    .line 1897
    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 1899
    iget-object p4, p2, Lcom/amazon/identity/auth/device/fn$a;->mL:Lorg/json/JSONObject;

    .line 1900
    iget-object p2, p2, Lcom/amazon/identity/auth/device/fn$a;->mM:Ljava/lang/Integer;

    const-string p5, "Response received for exchange delegate account token."

    .line 1901
    invoke-static {v1, p5}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iget-object p5, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-virtual {p5, p2}, Lcom/amazon/identity/auth/device/gy;->a(Ljava/lang/Integer;)Z

    move-result p5

    if-nez p5, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "refreshDelegatedOAuthTokenPandaSuccess"

    new-array p5, v4, [Ljava/lang/String;

    .line 1914
    invoke-static {p2, p5}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1915
    iget-object p2, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    .line 1916
    invoke-virtual {p2, p4}, Lcom/amazon/identity/auth/device/gy;->l(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;

    move-result-object p2

    .line 1917
    invoke-direct {p0, p1, p3, p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;)V

    .line 1918
    iget-object p1, p2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mAccessToken:Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const-string p3, "Error Response: %s"

    new-array p5, v3, [Ljava/lang/Object;

    if-eqz p4, :cond_2

    .line 1905
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "Null Json Response"

    :goto_1
    aput-object v1, p5, v4

    invoke-static {p3, p5}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1907
    iget-object p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-virtual {p3, p4}, Lcom/amazon/identity/auth/device/gy;->n(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    move-result-object p3

    .line 1908
    sget-object p4, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->OauthRefreshToDelegationAccessExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Ljava/lang/Integer;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :goto_2
    new-array p2, v4, [Ljava/lang/String;

    const-string/jumbo p3, "refreshDelegatedOAuthTokenFailurePanda:JSONException"

    .line 1950
    invoke-static {p3, p2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1954
    new-instance p2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array p4, v3, [Ljava/lang/Object;

    .line 1955
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, v4

    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4, v2, p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :goto_3
    new-array p2, v4, [Ljava/lang/String;

    const-string/jumbo p3, "refreshDelegatedOAuthTokenFailurePanda:ParseException"

    .line 1937
    invoke-static {p3, p2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1941
    new-instance p2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array p4, v3, [Ljava/lang/Object;

    .line 1942
    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, v4

    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4, v2, p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :goto_4
    new-array p2, v4, [Ljava/lang/String;

    const-string/jumbo p3, "refreshDelegatedOAuthTokenFailurePanda:IOException"

    .line 1922
    invoke-static {p3, p2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    new-array p2, v4, [Ljava/lang/String;

    const-string p3, "NetworkError11:OAuthTokenManager"

    .line 1926
    invoke-static {p3, p2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1930
    new-instance p2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array p4, v3, [Ljava/lang/Object;

    .line 1931
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, v4

    const-string p5, "A network error occurred: %s"

    invoke-static {p5, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x3

    invoke-direct {p2, p3, p4, p5, p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2
.end method

.method private c(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Z
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1070
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v0, "com.amazon.identity.auth.device.api.TokenKeys.Options.ForceRefreshDMSTokenForOAuthToken"

    .line 1072
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "OAuthTokenManager"

    const-string v0, "Force refresh the DMS token for OAuth token."

    .line 1074
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "FORCE_REFRESH_DMS"

    .line 1075
    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private d(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.amazon.dcp.sso.property.account.delegateeaccount"

    .line 958
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 959
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "GetDelegatedTokenUnnecessaryDelegatee"

    .line 961
    invoke-static {v0, p2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 963
    iget-object p2, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->z:Lcom/amazon/identity/auth/device/w;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    .line 964
    invoke-virtual {p2, p1, v0}, Lcom/amazon/identity/auth/device/w;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/gc;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
        }
    .end annotation

    .line 1599
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0, p2}, Lcom/amazon/identity/auth/device/ib;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1602
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1603
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1606
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->g(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    .line 1607
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1609
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "OAuthTokenManager"

    const-string p2, "Fail to get child device type refresh token!"

    .line 1612
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->SERVER_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 p3, 0x1

    const-string v0, "Fail to get child device type refresh token, probably due to child device type registration failed"

    const-string v1, "Unable to get child device type refresh token"

    invoke-direct {p1, p2, v0, p3, v1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw p1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public C(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "com.amazon.dcp.sso.token.oauth.amazon.access_token.expires_at"

    .line 908
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 910
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 913
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    .line 915
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 920
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "OAuthTokenManager"

    const-string v5, "NumberFormatException fetching expiresInSeconds data"

    .line 925
    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v4, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    .line 928
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 931
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    add-long/2addr v7, v5

    const/4 v3, 0x0

    .line 14399
    invoke-static {v3}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getAccessTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 934
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14409
    invoke-static {v3, v0}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15389
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 936
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "com.amazon.dcp.sso.token.oauth.amazon.access_token.refreshed_at"

    .line 15414
    invoke-static {v3, p1}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 937
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public W(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2357
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OAuthTokenManager"

    if-eqz p1, :cond_0

    .line 2359
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Local refresh token is not empty for package: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 2362
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Local refresh token is empty for package: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public X(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 2368
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->Z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Ljava/lang/Integer;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2043
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Ljava/lang/Integer;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Ljava/lang/Integer;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
    .locals 12

    move-object v1, p0

    move-object v0, p1

    move-object/from16 v2, p5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p3, :cond_0

    new-array v8, v5, [Ljava/lang/Object;

    .line 23862
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getCode()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 23863
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 23864
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cG()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 23865
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cH()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    const-string v9, "Received Error code %s from the server. Message: %s Detail: %s Index: %s"

    .line 23861
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    const-string v8, "Invalid error response received from the token exchange endpoint"

    .line 2054
    :goto_0
    iget-object v9, v2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->mFailureMetric:Ljava/lang/String;

    new-array v10, v6, [Ljava/lang/String;

    if-nez p3, :cond_1

    const-string v11, "InvalidErrorResponse"

    goto :goto_1

    .line 2055
    :cond_1
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    :goto_1
    aput-object v11, v10, v7

    .line 2054
    invoke-static {v9, v10}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v9, "A ParseError occurred: %s"

    const-string v10, "OAuthTokenManager"

    if-nez p3, :cond_2

    .line 2058
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p4, v2, v7

    const-string v3, "Received unrecognized error from the server with status code %d"

    .line 2059
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2058
    invoke-static {v10, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    new-array v5, v5, [Ljava/lang/Object;

    .line 2064
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getCode()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v7

    .line 2065
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v6

    .line 2066
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cG()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v4

    .line 2067
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cH()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    const-string v3, "Received error code: %s %n Message: %s %n Detail: %s %n Index: %s"

    .line 2063
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    invoke-static {v10}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 24172
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v3

    sget-object v4, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidToken:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    if-eq v3, v4, :cond_4

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v3

    sget-object v4, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidValue:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_6

    .line 2074
    new-instance v3, Lcom/amazon/identity/auth/device/ds;

    iget-object v4, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v3, v4}, Lcom/amazon/identity/auth/device/ds;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Lcom/amazon/identity/auth/device/ds;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2080
    iget-object v2, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    new-instance v3, Lcom/amazon/identity/auth/device/bl;

    invoke-direct {v3}, Lcom/amazon/identity/auth/device/bl;-><init>()V

    .line 2081
    invoke-virtual {v2, p1, v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->deregisterAccount(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v0

    const-wide/16 v2, 0x5

    .line 2084
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v2, "Exception while waiting for deregistration as the result of an invalid token to complete"

    .line 2090
    invoke-static {v10, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2095
    :goto_4
    new-instance v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v8, v2, v7

    .line 2096
    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 2097
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v5

    const/4 v9, 0x0

    move-object v2, v0

    move-object v6, v8

    move-object v7, p3

    move v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;B)V

    return-object v0

    .line 2106
    :cond_5
    invoke-static {}, Lcom/amazon/identity/auth/device/fl;->eB()Lcom/amazon/identity/auth/device/fl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazon/identity/auth/device/fl;->bR(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/identity/auth/device/fl;->bS(Ljava/lang/String;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v0

    .line 2109
    new-instance v10, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v8, v2, v7

    .line 2110
    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 2111
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v5

    move-object v2, v10

    move-object v6, v8

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Lcom/amazon/identity/auth/device/fl;)V

    return-object v10

    .line 24184
    :cond_6
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v2

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ActorNotAssociated:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    if-ne v2, v3, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_8

    const-string v2, "Received an ActorNotAssociatedError, expire actor tokens and cookies for actor"

    .line 2119
    invoke-static {v10, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->ab(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->aa(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    new-instance v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->getRegistrationError()Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v5

    move-object v2, v0

    move-object v4, v8

    move-object v6, v8

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;)V

    return-object v0

    .line 24196
    :cond_8
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v2

    sget-object v3, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidActorToken:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_a

    const-string v2, "Received an InvalidActorTokenError, expire actor tokens for actor"

    .line 2128
    invoke-static {v10, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->aa(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    new-instance v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->getRegistrationError()Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v5

    move-object v2, v0

    move-object v4, v8

    move-object v6, v8

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;)V

    return-object v0

    .line 2136
    :cond_a
    :goto_7
    new-instance v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v8, v2, v7

    .line 2137
    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 2138
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v5

    move-object v2, v0

    move-object v6, v8

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;)V

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "OAuthTokenManager"

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "refreshNormalOAuthToken"

    .line 1727
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/mn;->az(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v2

    .line 1729
    iget-object v3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-virtual {v3, p3, p1, p2, p4}, Lcom/amazon/identity/auth/device/gy;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 1731
    invoke-static {v1}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->d(Ljava/net/HttpURLConnection;)I

    move-result p2

    const-string p3, "Response received from OAuth refresh to access exchange end-point"

    .line 1732
    invoke-static {v0, p3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    iget-object p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pp:Lcom/amazon/identity/auth/device/im;

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/im;->gJ()V

    .line 1736
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ih;->f(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object p3

    .line 1737
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 1739
    iget-object p4, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/amazon/identity/auth/device/gy;->a(Ljava/lang/Integer;)Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 1754
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-virtual {p1, p3}, Lcom/amazon/identity/auth/device/gy;->l(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;

    move-result-object p1

    const-string/jumbo p2, "refreshNormalOAuthTokenSuccess"

    new-array p3, v0, [Ljava/lang/String;

    .line 1756
    invoke-static {p2, p3}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1763
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    :try_start_1
    const-string p4, "Error Response: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p3, :cond_3

    .line 1741
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, "Null Json Response"

    :goto_1
    aput-object v3, v2, v0

    invoke-static {p4, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1743
    iget-object p4, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-virtual {p4, p3}, Lcom/amazon/identity/auth/device/gy;->n(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    move-result-object p3

    .line 1750
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p4, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->OauthRefreshToAccessExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    .line 1747
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Ljava/lang/Integer;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    .line 1763
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1765
    :cond_4
    throw p1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
        }
    .end annotation

    .line 473
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_7

    .line 480
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 487
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.amazon.dcp.sso.token.oauth.amazon.actor.access_token"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 494
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string p3, "Parameter context is null with non-null tokenValidationFailureContext, please pass the context."

    invoke-direct {p1, p2, p3, v1, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const-string p1, "com.amazon.identity.auth.device.api.TokenKeys.Options.ForceRefreshDMSTokenForOAuthToken"

    .line 501
    invoke-virtual {p6, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "OAuthTokenManager"

    const-string v0, "Key KEY_FORCE_REFRESH_DMS_TO_OAUTH is not supported for get actor access token, ignoring..."

    .line 503
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_2
    invoke-virtual {p0, p2, p3, p4, p6}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "com.amazon.identity.auth.device.api.TokenKeys.Options.ForceRefreshOAuthToken"

    .line 508
    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    .line 513
    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 515
    invoke-virtual {p0, p2, p6}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "auth_portal_config"

    .line 516
    invoke-virtual {p6, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.amazon.identity.auth.device.api.TokenKeys.Options.ChallengeURLDomain"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    move-object v6, p7

    .line 517
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V

    :cond_4
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    move-object v6, p6

    .line 520
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 489
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "Token key %s is not a valid key for getting actor access token"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 490
    new-instance p2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 p4, 0x7

    invoke-direct {p2, p3, p1, p4, p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw p2

    .line 483
    :cond_6
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string p3, "Given actorId is null."

    invoke-direct {p1, p2, p3, v1, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw p1

    .line 476
    :cond_7
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string p3, "Given accountId is null."

    invoke-direct {p1, p2, p3, v1, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
        }
    .end annotation

    .line 407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_d

    .line 418
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_c

    if-nez p3, :cond_0

    .line 428
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    move-object v8, p3

    .line 430
    invoke-direct {p0, p1, v8}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->d(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p3

    .line 433
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    const-string v5, "OAuthTokenManager"

    if-nez v0, :cond_5

    .line 3002
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3013
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3015
    iget-object v1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v1, p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->isAccountRegistered(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3029
    invoke-direct {p0, v8, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3033
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3032
    invoke-direct {p0, p3, v0, v3, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v6

    .line 3038
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move-object v5, p1

    move-object v9, p4

    .line 3036
    invoke-direct/range {v4 .. v9}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 3044
    :cond_1
    invoke-direct {p0, p1, p2, v8, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3046
    invoke-virtual {p0, p3, v0, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v0

    .line 3048
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3052
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3051
    invoke-direct {p0, p3, v0, v3, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object p3

    move-object v6, p3

    goto :goto_0

    :cond_2
    move-object v6, v0

    .line 3059
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move-object v5, p1

    move-object v9, p4

    .line 3057
    invoke-direct/range {v4 .. v9}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_3
    const-string p1, "The delegatee account is already deregistered."

    .line 3017
    invoke-static {v5, p1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p3, p1, v2

    const-string p2, "The delegatee account %s is already deregistered."

    .line 3018
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gE()V

    .line 3022
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->DELEGATEE_ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 3023
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->DELEGATEE_ACCOUNT_ALREADY_DEREGISTERED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 3024
    invoke-virtual {p4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p4

    const-string v0, "The delegatee account is already deregistered on this device"

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw p1

    .line 3007
    :cond_4
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string p3, "Given account or delegated account is currently not valid"

    invoke-direct {p1, p2, p3, v1, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw p1

    .line 3975
    :cond_5
    :try_start_0
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Getting access token for package "

    .line 3977
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 3979
    invoke-virtual {p0, p1, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->W(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v8, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 3988
    :cond_6
    invoke-direct {p0, p1, p2, v8, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 3990
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->e(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_7
    :goto_1
    if-eqz v8, :cond_8

    const-string v0, "authorizationCode"

    .line 4096
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "AUTHORIZATION_CODE_TO_ACCESS_TOKEN"

    .line 4098
    invoke-virtual {p4, v0}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_9

    .line 3983
    invoke-virtual {p0, p1, p3, v8, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 3985
    :cond_9
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3, v2, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :cond_a
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 463
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;)Ljava/lang/String;

    move-result-object v4

    :cond_b
    return-object v4

    :catch_0
    move-exception p1

    .line 452
    new-instance p2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 453
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object p4

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 454
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v0

    invoke-direct {p2, p3, p4, v0, p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :cond_c
    new-array p1, v3, [Ljava/lang/Object;

    .line 422
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "Token key %s is not a valid key"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 423
    new-instance p2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 p4, 0x7

    invoke-direct {p2, p3, p1, p4, p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw p2

    .line 412
    :cond_d
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string p3, "Given Account is currently not valid"

    invoke-direct {p1, p2, p3, v1, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;)Ljava/lang/String;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gi;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .line 753
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;)Ljava/lang/String;

    move-result-object v0

    .line 754
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->b(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    const-string v1, "OAuthTokenManager"

    const-string/jumbo v2, "refreshing actor access token..."

    .line 1629
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 1631
    invoke-direct {v11, v0, v14}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1633
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v0, v1, v13}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->f(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v10

    .line 1635
    iget-object v1, v11, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    const-string v2, "com.amazon.dcp.sso.token.oauth.amazon.actor.refresh_token"

    invoke-virtual {v1, v0, v12, v2}, Lcom/amazon/identity/auth/device/gi;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1645
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v16
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move-object v4, v10

    move-object/from16 v5, p2

    move-object v6, v9

    move-object/from16 v7, v16

    move-object/from16 v8, p4

    move-object/from16 v17, v9

    move-object/from16 v9, p5

    move-object/from16 v18, v10

    move-object/from16 v10, p6

    .line 1639
    :try_start_1
    invoke-virtual/range {v1 .. v10}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)[Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;

    move-result-object v1

    .line 1650
    iget-object v10, v11, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pc:Lcom/amazon/identity/auth/device/hh;

    monitor-enter v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1652
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v0, v2, v13}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->f(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v4

    .line 1653
    invoke-direct {v11, v0, v14}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1654
    iget-object v2, v11, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    const-string v5, "com.amazon.dcp.sso.token.oauth.amazon.actor.refresh_token"

    invoke-virtual {v2, v0, v12, v5}, Lcom/amazon/identity/auth/device/gi;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, v17

    .line 1656
    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_7

    move-object/from16 v2, v18

    .line 1657
    :try_start_3
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1658
    invoke-static {v3, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "OAuthTokenManager"

    const-string v3, "Actor and account refresh token is not changed, store and return it."

    .line 1660
    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 20238
    iget-object v3, v11, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v3, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->isAccountRegistered(Ljava/lang/String;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_1

    :try_start_4
    invoke-static {}, Lcom/amazon/identity/auth/device/jh;->gT()Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    goto :goto_4

    .line 20240
    :cond_1
    :goto_0
    :try_start_5
    array-length v3, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_5

    aget-object v4, v1, v6

    .line 20242
    iget-object v5, v4, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->bi:Ljava/lang/String;

    .line 20243
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 20245
    iget-object v7, v11, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v7, v2}, Lcom/amazon/identity/auth/device/ib;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_3

    .line 20247
    :try_start_6
    invoke-direct {v11, v0, v12, v2, v4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;)V

    .line 20248
    iget-object v14, v4, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mAccessToken:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_2
    :goto_2
    const/4 v15, 0x0

    goto :goto_3

    .line 20250
    :cond_3
    :try_start_7
    iget-object v7, v11, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v7}, Lcom/amazon/identity/auth/device/ib;->aw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_4

    .line 20252
    :try_start_8
    invoke-direct {v11, v0, v12, v2, v4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :cond_4
    :try_start_9
    const-string v4, "OAuthTokenManager"

    const-string v5, "The device type is not supported for the package , ignoring..."

    .line 20257
    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "UNSUPPORTED_DEVICE_TYPE_FROM_SERVER"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v15, 0x0

    :try_start_a
    new-array v5, v15, [Ljava/lang/String;

    .line 20258
    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v15, 0x0

    .line 20262
    iget-object v1, v11, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pn:Lcom/amazon/identity/auth/device/ha;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/ha;->cM(Ljava/lang/String;)V

    .line 20265
    :goto_4
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1661
    monitor-exit v10

    return-object v14

    :cond_6
    const-string v0, "OAuthTokenManager"

    .line 20267
    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 20268
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Can not get actor token from service response"

    invoke-direct {v0, v1, v15}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    const/4 v15, 0x0

    goto :goto_5

    :cond_7
    const/4 v15, 0x0

    const-string v1, "OAuthTokenManager"

    const-string v2, "Actor or account refresh token has been changed, read from database."

    .line 1665
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MAP_CID_PID_ATNR_Changed_TokenExchange"

    new-array v2, v15, [Ljava/lang/String;

    .line 1666
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1667
    iget-object v1, v11, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.amazon.dcp.sso.token.oauth.amazon.actor.access_token"

    .line 20404
    invoke-static {v2, v5}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1667
    invoke-virtual {v1, v0, v12, v2}, Lcom/amazon/identity/auth/device/gi;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1668
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v0, "MAP_CID_PID_ATNR_Changed_TokenExchange_ReturnCached"

    new-array v2, v15, [Ljava/lang/String;

    .line 1670
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "OAuthTokenManager"

    const-string v2, "Local database actor access token is not empty, return it."

    .line 1671
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    monitor-exit v10

    return-object v1

    :cond_8
    const-string v1, "OAuthTokenManager"

    const-string v2, "Local database actor access token is empty, refreshing it."

    .line 1677
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MAP_CID_PID_ATNR_Changed_TokenExchange_Refresh"

    new-array v2, v15, [Ljava/lang/String;

    .line 1678
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1685
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object v12, v10

    move-object/from16 v10, p6

    .line 1679
    :try_start_b
    invoke-virtual/range {v1 .. v10}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)[Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;

    move-result-object v0

    .line 1689
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;[Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v12

    return-object v0

    :catchall_1
    move-exception v0

    :goto_5
    move-object v12, v10

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v12, v10

    const/4 v15, 0x0

    .line 1692
    :goto_6
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    const/4 v15, 0x0

    :goto_7
    const/4 v3, 0x1

    const/4 v4, 0x5

    goto :goto_a

    :catch_4
    move-exception v0

    const/4 v15, 0x0

    :goto_8
    const/4 v3, 0x1

    goto :goto_b

    :catch_5
    move-exception v0

    const/4 v15, 0x0

    :goto_9
    new-array v1, v15, [Ljava/lang/String;

    const-string/jumbo v2, "refreshActorTokenFailure:JSONException"

    .line 1710
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1711
    new-instance v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1712
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    const-string v4, "An invalid response was received: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v1

    :catch_6
    move-exception v0

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v15, 0x0

    :goto_a
    new-array v1, v15, [Ljava/lang/String;

    const-string/jumbo v2, "refreshActorTokenFailure:ParseException"

    .line 1702
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1703
    new-instance v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v3, v3, [Ljava/lang/Object;

    .line 1704
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v15

    const-string v5, "An invalid response was received: %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v1

    :catch_7
    move-exception v0

    const/4 v3, 0x1

    const/4 v15, 0x0

    :goto_b
    new-array v1, v15, [Ljava/lang/String;

    const-string/jumbo v2, "refreshActorTokenFailure:IOException"

    .line 1696
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1697
    new-instance v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v3, v3, [Ljava/lang/Object;

    .line 1698
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    const-string v4, "A network error occurred: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    .line 1967
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1968
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 1970
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 1974
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    .line 23389
    invoke-static {p2, v4}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1976
    invoke-interface {p3, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23399
    :cond_0
    invoke-static {p2}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getAccessTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1978
    invoke-interface {p3, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "com.amazon.dcp.sso.token.oauth.amazon.access_token.expires_at"

    .line 23409
    invoke-static {p2, p4}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1979
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p5

    invoke-interface {p3, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "com.amazon.dcp.sso.token.oauth.amazon.access_token.refreshed_at"

    .line 23414
    invoke-static {p2, p4}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1980
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    iget-object p2, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {p2, p1, p3}, Lcom/amazon/identity/auth/device/gc;->d(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1982
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move-object v10, p2

    const-string v11, "OAuthTokenManager"

    .line 548
    iget-object v2, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    const-string v3, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    invoke-virtual {v2, p1, v3}, Lcom/amazon/identity/auth/device/gi;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 549
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 552
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 555
    iget-object v2, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    const-string v3, "com.amazon.dcp.sso.token.oauth.amazon.actor.refresh_token"

    invoke-virtual {v2, p1, p2, v3}, Lcom/amazon/identity/auth/device/gi;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    .line 560
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    move-object v6, v2

    .line 563
    iget-object v2, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v9, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->mR:Lcom/amazon/identity/auth/device/gz;

    move-object v3, p1

    move-object v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v9}, Lcom/amazon/identity/auth/device/fp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/gz;)Lcom/amazon/identity/auth/device/fp;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 576
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "upgradeOAuthRefreshTokenCIDOnly"

    .line 579
    invoke-static {v11, v5}, Lcom/amazon/identity/auth/device/mn;->az(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string/jumbo v5, "upgradeOAuthRefreshTokenCIDPID"

    .line 584
    invoke-static {v11, v5}, Lcom/amazon/identity/auth/device/mn;->az(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v5

    :goto_1
    move-object/from16 v6, p5

    .line 587
    invoke-virtual {v2, v6}, Lcom/amazon/identity/auth/device/fn;->c(Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/fn$a;

    move-result-object v6

    .line 589
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Upgrade OAuth token with endpoint: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/fn;->eM()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 593
    iget-object v2, v6, Lcom/amazon/identity/auth/device/fn$a;->mM:Ljava/lang/Integer;

    .line 594
    iget-object v5, v6, Lcom/amazon/identity/auth/device/fn$a;->mL:Lorg/json/JSONObject;

    const-string v6, "Response received for token upgrade request"

    .line 595
    invoke-static {v11, v6}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v6, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->mR:Lcom/amazon/identity/auth/device/gz;

    invoke-virtual {v6, v2}, Lcom/amazon/identity/auth/device/gz;->a(Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v5, :cond_2

    goto :goto_2

    .line 607
    :cond_2
    iget-object v2, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->mR:Lcom/amazon/identity/auth/device/gz;

    .line 608
    invoke-virtual {v2, v5}, Lcom/amazon/identity/auth/device/gz;->q(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    .line 607
    invoke-direct {p0, v2, v12, p1, p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/util/List;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v2, p4

    invoke-interface {v2, v0}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    return-void

    :cond_3
    :goto_2
    const-string v0, "Error Response: %s"

    new-array v2, v3, [Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 599
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    const-string v6, "Null Json Response"

    :goto_3
    aput-object v6, v2, v4

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    iget-object v0, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->mR:Lcom/amazon/identity/auth/device/gz;

    invoke-virtual {v0, v5}, Lcom/amazon/identity/auth/device/gz;->r(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    move-result-object v0

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    new-instance v2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v5

    .line 604
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "Unknown exception."

    .line 636
    invoke-static {v11, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "upgradeOAuthRefreshTokenFailurePanda:Exception"

    .line 637
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 638
    new-instance v2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    const-string v2, "A network error occurred."

    .line 628
    invoke-static {v11, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v5, "upgradeOAuthRefreshTokenFailurePanda:IOException"

    .line 629
    invoke-static {v5, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 631
    new-instance v2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v3, v3, [Ljava/lang/Object;

    .line 632
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "A network error occurred: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v0

    const-string v2, "An invalid response was received."

    .line 620
    invoke-static {v11, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v5, "upgradeOAuthRefreshTokenFailurePanda:JSONException"

    .line 621
    invoke-static {v5, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 623
    new-instance v2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v3, v3, [Ljava/lang/Object;

    .line 624
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "An invalid response was received: %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;)V

    throw v2
.end method

.method a(Lcom/amazon/identity/auth/device/ds;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;)Z
    .locals 1

    .line 2154
    sget-object v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pl:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2157
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ds;->dx()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method protected a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;)Z
    .locals 6

    .line 1126
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    .line 1127
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.dcp.sso.token.oauth.amazon.access_token.refreshed_at"

    .line 16414
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1127
    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/gi;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1128
    iget-object v1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->F:Lcom/amazon/identity/auth/device/eh;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/eh;->currentTimeMillis()J

    move-result-wide v1

    .line 1129
    invoke-direct {p0, v1, v2, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(JLjava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    const-string v4, "OAuthTokenManager"

    if-eqz v0, :cond_0

    const-string p1, "Clock skew detected. Refreshing..."

    .line 1131
    invoke-static {v4, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    .line 1136
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v5, "com.amazon.dcp.sso.token.oauth.amazon.access_token.expires_at"

    .line 17409
    invoke-static {p2, v5}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1136
    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gi;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1137
    invoke-static {p1}, Lcom/amazon/identity/auth/device/jb;->dA(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1141
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "OAuth access token near or past expiry. Need to refresh it..."

    .line 1143
    invoke-static {v4, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)[Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;,
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v3, p4

    const-string v1, "OAuthTokenManager"

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v4, "refreshActorToken"

    .line 1532
    invoke-static {v1, v4}, Lcom/amazon/identity/auth/device/mn;->az(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v4

    .line 1533
    iget-object v8, v7, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p9

    move-object/from16 v17, p8

    invoke-virtual/range {v8 .. v17}, Lcom/amazon/identity/auth/device/gy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1544
    :try_start_1
    invoke-static {v8}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->d(Ljava/net/HttpURLConnection;)I

    move-result v2

    .line 1545
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/ms;->stop()V

    const-string v4, "Response received actor access token exchange"

    .line 1546
    invoke-static {v1, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    invoke-static {v8}, Lcom/amazon/identity/auth/device/ih;->f(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1549
    iget-object v4, v7, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/identity/auth/device/gy;->a(Ljava/lang/Integer;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    .line 1563
    :cond_0
    iget-object v2, v7, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-virtual {v2, v1}, Lcom/amazon/identity/auth/device/gy;->m(Lorg/json/JSONObject;)[Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;

    move-result-object v2

    .line 19582
    iget-object v4, v7, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-virtual {v4, v1}, Lcom/amazon/identity/auth/device/gy;->o(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/az$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 19585
    iget-object v4, v7, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    const-string v6, "actor.sub.type"

    iget-object v9, v1, Lcom/amazon/identity/auth/device/az$a;->fp:Ljava/lang/String;

    invoke-virtual {v4, v0, v3, v6, v9}, Lcom/amazon/identity/auth/device/gi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19586
    iget-object v4, v7, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    const-string v6, "actor.entity.type"

    iget-object v9, v1, Lcom/amazon/identity/auth/device/az$a;->fq:Ljava/lang/String;

    invoke-virtual {v4, v0, v3, v6, v9}, Lcom/amazon/identity/auth/device/gi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19587
    iget-object v4, v7, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    const-string v6, "actor.converted.type"

    iget-object v1, v1, Lcom/amazon/identity/auth/device/az$a;->fr:Ljava/lang/String;

    invoke-virtual {v4, v0, v3, v6, v1}, Lcom/amazon/identity/auth/device/gi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "refreshActorTokenSuccess"

    new-array v1, v5, [Ljava/lang/String;

    .line 1567
    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    .line 1575
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-object v2

    :cond_3
    :goto_0
    :try_start_2
    const-string v4, "Error Response: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1551
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_4
    const-string v9, "Null Json Response"

    :goto_1
    aput-object v9, v6, v5

    invoke-static {v4, v6}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1552
    iget-object v4, v7, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-virtual {v4, v1}, Lcom/amazon/identity/auth/device/gy;->n(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    move-result-object v4

    .line 1559
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->OauthRefreshToAccessExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    .line 1555
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Ljava/lang/Integer;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v8

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v2, :cond_5

    .line 1575
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1577
    :cond_5
    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;)J
    .locals 4

    .line 844
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->F:Lcom/amazon/identity/auth/device/eh;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eh;->currentTimeMillis()J

    move-result-wide v0

    .line 845
    iget-object v2, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    .line 846
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v3, "com.amazon.dcp.sso.token.oauth.amazon.access_token.expires_at"

    .line 12409
    invoke-static {p3, v3}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 846
    invoke-virtual {v2, p1, p2, p3}, Lcom/amazon/identity/auth/device/gi;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 847
    invoke-static {p1}, Lcom/amazon/identity/auth/device/jb;->dA(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    .line 849
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method protected b(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;)Ljava/lang/String;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gi;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .line 743
    invoke-virtual {p0, p1, p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->b(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;)Ljava/lang/String;

    move-result-object v0

    .line 744
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
        }
    .end annotation

    .line 815
    new-instance v0, Lcom/amazon/identity/auth/device/gx;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/gx;-><init>(Landroid/content/Context;)V

    .line 821
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "account_cookies_for_request"

    .line 829
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 826
    :catch_0
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p3

    const-string p4, "Unable to fetch account cookies internally."

    invoke-direct {p1, p2, p4, p3, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
        }
    .end annotation

    .line 795
    new-instance v0, Lcom/amazon/identity/auth/device/gx;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/gx;-><init>(Landroid/content/Context;)V

    .line 801
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "actor_cookies_for_request"

    .line 810
    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 807
    :catch_0
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p3

    const-string p4, "Unable to fetch actor cookies internally for get actor token request with failure context."

    invoke-direct {p1, p2, p4, p3, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;)Z
    .locals 6

    .line 1151
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    .line 1152
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.dcp.sso.token.oauth.amazon.access_token.refreshed_at"

    .line 17414
    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1152
    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/identity/auth/device/gi;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    iget-object v1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->F:Lcom/amazon/identity/auth/device/eh;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/eh;->currentTimeMillis()J

    move-result-wide v1

    .line 1154
    invoke-direct {p0, v1, v2, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(JLjava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    const-string v4, "OAuthTokenManager"

    if-eqz v0, :cond_0

    const-string p1, "Clock skew detected. Refreshing..."

    .line 1156
    invoke-static {v4, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    .line 1161
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v5, "com.amazon.dcp.sso.token.oauth.amazon.access_token.expires_at"

    .line 18409
    invoke-static {p3, v5}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1161
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/gi;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1162
    invoke-static {p1}, Lcom/amazon/identity/auth/device/jb;->dA(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1166
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/Long;Ljava/lang/Long;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "OAuth actor access token near or past expiry. Need to refresh it..."

    .line 1168
    invoke-static {v4, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v10, p4

    const-string v11, "An invalid response was received: %s"

    const-string v12, "A network error occurred: %s"

    const-string v13, "authorizationCodeToAccessTokenFailure:IOException"

    if-eqz v0, :cond_4

    .line 1394
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exchange AuthorizationCode to access token for package "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 1396
    invoke-virtual {v10, v4}, Lcom/amazon/identity/auth/device/ej;->O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v14, "OAuthTokenManager"

    .line 1394
    invoke-static {v14, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    const-string v3, "exchangeAuthorizationCodeForAccessToken"
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9

    .line 1401
    :try_start_1
    invoke-static {v14, v3}, Lcom/amazon/identity/auth/device/mn;->az(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v16

    const-string v3, "authorization_code"

    .line 1403
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "code_verifier"

    .line 1404
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "code_challenge_method"

    .line 1405
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v3, "client_id"

    .line 1406
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v3, "client_domain"

    .line 1407
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1409
    new-instance v2, Lcom/amazon/identity/auth/device/gy;

    iget-object v3, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v3

    new-instance v4, Lcom/amazon/identity/auth/device/iv;

    invoke-direct {v4}, Lcom/amazon/identity/auth/device/iv;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/amazon/identity/auth/device/gy;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/iv;)V

    .line 1410
    iget-object v3, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;
    :try_end_1
    .catch Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_9

    move-object/from16 v4, p1

    const/4 v15, 0x0

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    :try_start_2
    invoke-static/range {v2 .. v9}, Lcom/amazon/identity/auth/device/fr;->a(Lcom/amazon/identity/auth/device/gy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/fr$a;

    move-result-object v2

    .line 1419
    invoke-virtual {v2, v10}, Lcom/amazon/identity/auth/device/fn;->c(Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/fn$a;

    move-result-object v3

    .line 1420
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exchanging authorizationCode for access token with exchange token endpoint: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/fn;->eM()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    invoke-virtual/range {v16 .. v16}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 1423
    iget-object v2, v3, Lcom/amazon/identity/auth/device/fn$a;->mM:Ljava/lang/Integer;

    .line 1424
    iget-object v3, v3, Lcom/amazon/identity/auth/device/fn$a;->mL:Lorg/json/JSONObject;

    const-string v4, "Response received for exchanging authorizationCode to access token"

    .line 1425
    invoke-static {v14, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-object v4, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-virtual {v4, v2}, Lcom/amazon/identity/auth/device/gy;->a(Ljava/lang/Integer;)Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "exchangeAuthorizationCodeForAccessTokenSuccess"

    new-array v2, v15, [Ljava/lang/String;

    .line 1440
    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1441
    iget-object v0, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-virtual {v0, v3}, Lcom/amazon/identity/auth/device/gy;->l(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;

    move-result-object v0

    .line 1443
    iget-object v0, v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mAccessToken:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const-string v4, "Error Response: %s"
    :try_end_2
    .catch Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4

    const/4 v5, 0x1

    :try_start_3
    new-array v6, v5, [Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1429
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    const-string v7, "Null Json Response"

    :goto_1
    aput-object v7, v6, v15

    invoke-static {v4, v6}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1432
    iget-object v4, v1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pq:Lcom/amazon/identity/auth/device/gy;

    invoke-virtual {v4, v3}, Lcom/amazon/identity/auth/device/gy;->n(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    move-result-object v3

    .line 1434
    sget-object v4, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;->AuthorizationCodeToOAuthAccessTokenExchange:Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;

    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Ljava/lang/Integer;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$AuthTokenExchangeType;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    const/4 v5, 0x1

    goto :goto_3

    :catch_5
    move-exception v0

    const/4 v5, 0x1

    goto :goto_4

    :catch_6
    move-exception v0

    const/4 v5, 0x1

    goto :goto_5

    :catch_7
    move-exception v0

    const/4 v5, 0x1

    goto :goto_2

    :catch_8
    move-exception v0

    const/4 v5, 0x1

    const/4 v15, 0x0

    :goto_2
    const/4 v6, 0x3

    goto :goto_6

    :catch_9
    move-exception v0

    const/4 v5, 0x1

    const/4 v15, 0x0

    goto :goto_3

    :catch_a
    move-exception v0

    const/4 v5, 0x1

    const/4 v15, 0x0

    goto :goto_4

    :catch_b
    move-exception v0

    const/4 v5, 0x1

    const/4 v15, 0x0

    goto :goto_5

    :catch_c
    move-exception v0

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v15, 0x0

    goto :goto_6

    :goto_3
    new-array v2, v15, [Ljava/lang/String;

    const-string v3, "authorizationCodeToAccessTokenFailure:JSONException"

    .line 1507
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1510
    new-instance v2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v4, v5, [Ljava/lang/Object;

    .line 1511
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v15

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1513
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v2

    :goto_4
    new-array v2, v15, [Ljava/lang/String;

    const-string v3, "authorizationCodeToAccessTokenFailure:ParseException"

    .line 1495
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1498
    new-instance v2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v4, v5, [Ljava/lang/Object;

    .line 1499
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v15

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1501
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v2

    :goto_5
    new-array v2, v15, [Ljava/lang/String;

    .line 1480
    invoke-static {v13, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/String;

    const-string v3, "NetworkError9:OAuthTokenManager"

    .line 1484
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1488
    new-instance v2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v4, v5, [Ljava/lang/Object;

    .line 1489
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v15

    invoke-static {v12, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    invoke-direct {v2, v3, v4, v6, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    .line 1447
    :goto_6
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;->getAccountRecoverContextBundle()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1451
    new-instance v2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v17, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->CORRUPTED_DATABASE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1453
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v19

    new-instance v21, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    sget-object v4, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->InvalidToken:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v5, "RecoverAccount"

    const-string v6, "MAP client side database is corrupted."

    move-object/from16 v3, v21

    invoke-direct/range {v3 .. v8}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;->getAccountRecoverContextBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/fl;->B(Landroid/os/Bundle;)Lcom/amazon/identity/auth/device/fl;

    move-result-object v22

    const-string v18, "MAP Database is corrupted"

    const-string v20, "MAP Database is corrupted"

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;Lcom/amazon/identity/auth/device/fl;)V

    throw v2

    :cond_3
    new-array v2, v15, [Ljava/lang/String;

    .line 1464
    invoke-static {v13, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/String;

    const-string v3, "NetworkError8:OAuthTokenManager"

    .line 1468
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1472
    new-instance v2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v4, v5, [Ljava/lang/Object;

    .line 1473
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v15

    invoke-static {v12, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1475
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v6, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v2

    .line 1388
    :cond_4
    new-instance v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/16 v3, 0x8

    const-string v4, "Given Account is currently not valid"

    invoke-direct {v0, v2, v4, v3, v4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
        }
    .end annotation

    .line 857
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 864
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 765
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "auth_portal_config"

    .line 766
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "com.amazon.identity.auth.device.api.TokenKeys.Options.ChallengeURLDomain"

    .line 769
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 770
    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/ho;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 771
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.amazon.identity.auth.device.api.TokenKeys.Options.ChallengeURLAssocHandle"

    .line 774
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 775
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 777
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->bd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "amzn_device_android"

    goto :goto_1

    .line 778
    :cond_1
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->bd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 780
    :cond_2
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.amazon.identity.auth.device.api.TokenKeys.Options.ChallengeURLPageId"

    .line 784
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 785
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 784
    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.amazon.identity.auth.device.api.TokenKeys.Options.ChallengeURLReturnToDomain"

    .line 788
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    .line 789
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 790
    :goto_3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Z
    .locals 1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1109
    :cond_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v0, "com.amazon.identity.auth.device.api.TokenKeys.Options.ForceRefreshOAuthToken"

    .line 1112
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "OAuthTokenManager"

    const-string p2, "Force refresh the OAuth access token."

    .line 1114
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "FORCE_REFRESH_OAUTH"

    .line 1115
    invoke-virtual {p4, p1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 1120
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    const-string v1, "com.amazon.dcp.sso.token.oauth.amazon.actor.refresh_token"

    const/4 v2, 0x0

    .line 13394
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 892
    invoke-virtual {v0, p1, p2, v3}, Lcom/amazon/identity/auth/device/gi;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "OAuthTokenManager"

    const-string v3, "No local actor refresh token, try get one by calling getActorAccessToken."

    .line 896
    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    new-instance v7, Lcom/amazon/identity/auth/device/ij;

    const-string v0, "com.amazon.dcp.sso.token.oauth.amazon.actor.access_token"

    invoke-direct {v7, v0}, Lcom/amazon/identity/auth/device/ij;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p3

    invoke-virtual/range {v4 .. v10}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Ljava/lang/String;

    .line 898
    iget-object p3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    .line 14394
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    invoke-virtual {p3, p1, p2, v0}, Lcom/amazon/identity/auth/device/gi;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Refreshing access token for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "central"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OAuthTokenManager"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->d(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 1358
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1360
    iget-object v1, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    const-string v2, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    .line 19389
    invoke-static {p2, v2}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1361
    invoke-virtual {v1, v0, v2}, Lcom/amazon/identity/auth/device/gi;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1362
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 1365
    invoke-direct {p0, v0, p2, v1, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v4, v1

    .line 1368
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1376
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->g(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1348
    :cond_3
    new-instance p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/16 p3, 0x8

    const-string v0, "Given Account is currently not valid"

    invoke-direct {p1, p2, v0, p3, v0}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw p1
.end method

.method g(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1774
    :try_start_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    const-string v4, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    .line 21389
    invoke-static {p2, v4}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1775
    invoke-virtual {v3, p1, v4}, Lcom/amazon/identity/auth/device/gi;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1780
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/identity/auth/device/ej;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1782
    :cond_0
    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;

    move-result-object v4

    .line 1784
    iget-object v5, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pc:Lcom/amazon/identity/auth/device/hh;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1786
    :try_start_1
    iget-object v6, p0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->pm:Lcom/amazon/identity/auth/device/gi;

    const-string v7, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    .line 22389
    invoke-static {p2, v7}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1786
    invoke-virtual {v6, p1, v7}, Lcom/amazon/identity/auth/device/gi;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1787
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p3, "OAuthTokenManager"

    const-string v3, "Refresh token is not changed, store the exchanged token."

    .line 1789
    invoke-static {p3, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-direct {p0, p1, p2, v4}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;)V

    .line 1793
    iget-object p1, v4, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mAccessToken:Ljava/lang/String;

    monitor-exit v5

    return-object p1

    :cond_1
    const-string v3, "OAuthTokenManager"

    const-string v4, "Refresh token has been changed, try read from the database."

    .line 1797
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MAP_CID_ATNR_Changed_TokenExchange"

    new-array v4, v2, [Ljava/lang/String;

    .line 1798
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1802
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->Z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1803
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string p1, "MAP_CID_ATNR_Changed_TokenExchange_ReturnCached"

    new-array p2, v2, [Ljava/lang/String;

    .line 1805
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "OAuthTokenManager"

    const-string p2, "Local database access token is not empty, return it."

    .line 1806
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    monitor-exit v5

    return-object v3

    :cond_2
    const-string v3, "MAP_CID_ATNR_Changed_TokenExchange_Refresh"

    new-array v4, v2, [Ljava/lang/String;

    .line 1811
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v3, "OAuthTokenManager"

    const-string v4, "Local database access token is empty, refresh it."

    .line 1812
    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    invoke-virtual {p0, p1, p2, v6, p3}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mAccessToken:Ljava/lang/String;

    monitor-exit v5

    return-object p1

    :catchall_0
    move-exception p1

    .line 1816
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/String;

    const-string/jumbo p3, "refreshNormalOAuthTokenFailure:JSONException"

    .line 1847
    invoke-static {p3, p2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1850
    new-instance p2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v1, v1, [Ljava/lang/Object;

    .line 1851
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "An invalid response was received: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1853
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, v1, v0, p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    new-array p2, v2, [Ljava/lang/String;

    const-string/jumbo p3, "refreshNormalOAuthTokenFailure:ParseException"

    .line 1835
    invoke-static {p3, p2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1838
    new-instance p2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v1, v1, [Ljava/lang/Object;

    .line 1839
    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "An invalid response was received: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1841
    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, v1, v0, p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    new-array p2, v2, [Ljava/lang/String;

    const-string/jumbo p3, "refreshNormalOAuthTokenFailure:IOException"

    .line 1820
    invoke-static {p3, p2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    new-array p2, v2, [Ljava/lang/String;

    const-string p3, "NetworkError10:OAuthTokenManager"

    .line 1824
    invoke-static {p3, p2}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1828
    new-instance p2, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;

    sget-object p3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v0, v1, [Ljava/lang/Object;

    .line 1829
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "A network error occurred: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p2, p3, v0, v1, p1}, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$OAuthTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2
.end method
