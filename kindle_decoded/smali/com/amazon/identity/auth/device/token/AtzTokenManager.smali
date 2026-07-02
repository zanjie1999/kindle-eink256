.class public Lcom/amazon/identity/auth/device/token/AtzTokenManager;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.token.AtzTokenManager"

.field private static final pb:J


# instance fields
.field private final F:Lcom/amazon/identity/auth/device/eh;

.field private final gQ:Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;

.field private final o:Lcom/amazon/identity/auth/device/ed;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jg;->d(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->pb:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 113
    new-instance v0, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/amazon/identity/auth/device/gi;

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/gi;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/identity/auth/device/token/AtzTokenManager;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;Lcom/amazon/identity/auth/device/gc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;Lcom/amazon/identity/auth/device/gc;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    .line 119
    iput-object p2, p0, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->gQ:Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;

    .line 120
    iput-object p3, p0, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->w:Lcom/amazon/identity/auth/device/gc;

    const-string p2, "dcp_system"

    .line 121
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/eh;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->F:Lcom/amazon/identity/auth/device/eh;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;)Z
    .locals 8

    .line 235
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.dcp.sso.token.oauth.amazon.atz_token.refreshed_at"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->w:Lcom/amazon/identity/auth/device/gc;

    .line 237
    invoke-virtual {v1, p1, v0}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 242
    sget-object p1, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->TAG:Ljava/lang/String;

    const-string p2, "No previous token refresh time found. Possible case of no cached token. Refreshing..."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->F:Lcom/amazon/identity/auth/device/eh;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/eh;->currentTimeMillis()J

    move-result-wide v2

    .line 3288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 3293
    invoke-static {v0}, Lcom/amazon/identity/auth/device/jb;->dA(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3295
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 250
    sget-object p1, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->TAG:Ljava/lang/String;

    const-string p2, "Clock skew detected. Refreshing..."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->w:Lcom/amazon/identity/auth/device/gc;

    .line 255
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v4, "com.amazon.dcp.sso.token.oauth.amazon.atz_token.expires_at"

    invoke-static {p2, v4}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 256
    invoke-static {p1}, Lcom/amazon/identity/auth/device/jb;->dA(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 260
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 3307
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0xf

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v6, v7, p2}, Lcom/amazon/identity/auth/device/jg;->d(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    const-string p2, "com.amazon.identity.auth.device.api.TokenKeys.Options.OAuthAccessTokenTTLInMilliSec"

    invoke-virtual {p3, p2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    add-long/2addr v2, p2

    sget-wide p2, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->pb:J

    add-long/2addr v2, p2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p3, v2, p1

    if-ltz p3, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 262
    sget-object p1, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->TAG:Ljava/lang/String;

    const-string p2, "Atz access token near or past expiry. Refreshing..."

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    return v5
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ij;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 382
    invoke-direct {p0, p1, p4, p3}, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "client-id"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "client-id"

    .line 349
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 132
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 143
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/ij;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.amazon.dcp.sso.token.oauth.atz.access_token"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x7

    const/4 v7, 0x0

    if-eqz v4, :cond_7

    const-string v4, "client-id"

    .line 154
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1359
    :try_start_0
    iget-object v8, v1, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v2, :cond_0

    .line 1361
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const/4 v9, 0x0

    if-eqz v8, :cond_1

    .line 1366
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_1
    const-string v8, "com.amazon.identity.auth.device.api.TokenKeys.Options.ForceRefreshOAuthToken"

    .line 2224
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2226
    sget-object v8, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->TAG:Ljava/lang/String;

    const-string v10, "Force refresh the ATZA token."

    invoke-static {v8, v10}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "ATZ_FORCE_REFRESH_OAUTH"

    .line 2227
    invoke-virtual {v3, v8}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$PandaServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    const-string/jumbo v10, "token"

    if-nez v8, :cond_4

    move-object/from16 v8, p3

    .line 1369
    :try_start_1
    invoke-direct {v1, v0, v9, v2, v8}, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ij;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    .line 1375
    :cond_3
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    move-object/from16 v8, p3

    :goto_1
    const-string/jumbo v9, "lwa-scopes"

    .line 2278
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 2279
    new-instance v9, Lcom/amazon/identity/auth/device/bz;

    iget-object v12, v1, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v11, "application-id"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v11, v9

    move-object/from16 v13, p2

    invoke-direct/range {v11 .. v16}, Lcom/amazon/identity/auth/device/bz;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 2280
    iget-object v11, v1, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->gQ:Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;

    invoke-virtual {v11, v0, v9, v3}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/cb;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;

    move-result-object v3

    const-string v9, "exchangeAtnrForAtzaTokenSuccess"

    new-array v11, v7, [Ljava/lang/String;

    .line 2281
    invoke-static {v9, v11}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2273
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/ij;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget v9, v3, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->pr:I

    iget-object v11, v3, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mP:Ljava/lang/String;

    iget-object v12, v3, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mAccessToken:Ljava/lang/String;

    .line 2317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 2318
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v9

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v5, v6, v9}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    add-long/2addr v5, v13

    const-string v9, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    .line 2320
    invoke-static {v8, v9}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2321
    invoke-static {v8}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getAtzTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v7, "com.amazon.dcp.sso.token.oauth.amazon.atz_token.expires_at"

    .line 2322
    invoke-static {v8, v7}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 p2, v3

    const-string v3, "com.amazon.dcp.sso.token.oauth.amazon.atz_token.refreshed_at"

    .line 2323
    invoke-static {v8, v3}, Lcom/amazon/identity/auth/device/gs;->Q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2325
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2327
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 2329
    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2332
    :cond_5
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 2333
    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2334
    invoke-virtual {v9, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2335
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2337
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2338
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2339
    iget-object v2, v1, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {v2, v0, v8}, Lcom/amazon/identity/auth/device/gc;->d(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, p2

    .line 2274
    iget-object v0, v0, Lcom/amazon/identity/auth/device/token/OAuthTokenManager$a;->mAccessToken:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$PandaServiceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "exchangeAtnrForAtzaTokenFailure:UnsupportedOperationException"

    .line 211
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 214
    new-instance v2, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->CUSTOMER_NOT_FOUND:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    .line 215
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MAPError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 216
    invoke-virtual {v5}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "exchangeAtnrForAtzaTokenFailure:PandaServiceException"

    .line 204
    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 207
    new-instance v2, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$PandaServiceException;->getError()Lcom/amazon/identity/auth/device/api/MAPError;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$PandaServiceException;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$PandaServiceException;->bD()I

    move-result v5

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dependency/PandaServiceAccessor$PandaServiceException;->bE()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v2

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "exchangeAtnrForAtzaTokenFailure:JSONException"

    .line 194
    invoke-static {v4, v3}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 197
    new-instance v3, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 198
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "JSONException occurred: %s"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    invoke-direct {v3, v4, v2, v5, v0}, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v3

    :catch_3
    move-exception v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "exchangeAtnrForAtzaTokenFailure:ParseException"

    .line 184
    invoke-static {v4, v3}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    new-instance v3, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 188
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "ParseException occurred: %s"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    invoke-direct {v3, v4, v2, v5, v0}, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v3

    :catch_4
    move-exception v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "exchangeAtnrForAtzaTokenFailure:IOException"

    .line 169
    invoke-static {v4, v3}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "NetworkError12:AtzTokenManager"

    .line 173
    invoke-static {v4, v3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 177
    new-instance v3, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 178
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "Network error occurred: %s"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    .line 180
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v2, v5, v0}, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v3

    .line 158
    :cond_6
    new-instance v0, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v3, "Client id is missing from the passed options bundle"

    const-string v4, "Client id is missing from options passed."

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v8, p3

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    .line 146
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "Token key %s is not a valid key"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v2, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    invoke-direct {v2, v3, v0, v5, v0}, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v2

    .line 137
    :cond_8
    new-instance v0, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/16 v3, 0x8

    const-string v4, "Given AtnToken is not valid"

    invoke-direct {v0, v2, v4, v3, v4}, Lcom/amazon/identity/auth/device/token/AtzTokenManager$AtzTokenManagerException;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;Lcom/amazon/identity/auth/device/ij;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->w:Lcom/amazon/identity/auth/device/gc;

    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ij;->gC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 393
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 396
    :goto_0
    invoke-direct {p0, p1, v2, p3, p2}, Lcom/amazon/identity/auth/device/token/AtzTokenManager;->a(Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ij;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    const-string/jumbo p1, "token"

    .line 402
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method
