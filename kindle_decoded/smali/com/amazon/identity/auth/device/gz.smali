.class public Lcom/amazon/identity/auth/device/gz;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/gz$c;,
        Lcom/amazon/identity/auth/device/gz$a;,
        Lcom/amazon/identity/auth/device/gz$b;
    }
.end annotation


# instance fields
.field private aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

.field private mContext:Landroid/content/Context;

.field private pp:Lcom/amazon/identity/auth/device/im;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/amazon/identity/auth/device/gz;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/gz;->aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    .line 153
    new-instance v0, Lcom/amazon/identity/auth/device/im;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/im;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/gz;->pp:Lcom/amazon/identity/auth/device/im;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 220
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 222
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    .line 223
    invoke-virtual {v1, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p6, :cond_0

    const-string p5, "authorizationCode"

    .line 224
    invoke-virtual {p6, p5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PandaOAuthUpgradeRequestHelper"

    .line 226
    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string v2, "code_verifier"

    .line 227
    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "code_challenge_method"

    .line 228
    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "code_algorithm"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "client_domain"

    .line 229
    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "client_id"

    .line 230
    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v1, v2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "code_type"

    .line 231
    invoke-virtual {v1, p6, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    :cond_0
    new-instance p5, Lorg/json/JSONArray;

    invoke-direct {p5}, Lorg/json/JSONArray;-><init>()V

    .line 237
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/util/Map$Entry;

    .line 239
    invoke-interface {p6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 240
    invoke-interface {p6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 242
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 245
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string/jumbo v5, "token"

    if-nez v4, :cond_1

    .line 247
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 248
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 250
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 251
    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "actor_refresh_token"

    .line 252
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 259
    invoke-virtual {v4, v5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "account_refresh_token"

    .line 260
    invoke-virtual {v3, p6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p6, "device_type"

    .line 261
    invoke-virtual {v3, p6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    invoke-virtual {p5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 269
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "actor_id"

    .line 271
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string p2, "account_id"

    .line 274
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "upgrade_source"

    .line 275
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "device_tokens"

    .line 276
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gz;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_name"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    invoke-static {}, Lcom/amazon/identity/auth/device/hs;->gv()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_version"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    iget-object p1, p0, Lcom/amazon/identity/auth/device/gz;->pp:Lcom/amazon/identity/auth/device/im;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/im;->gI()Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo p2, "map_version"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Upgrade token body:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)Z
    .locals 0

    .line 396
    invoke-static {p1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->a(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public q(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/gz$c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "device_tokens"

    .line 340
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 341
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 343
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 344
    new-instance v4, Lcom/amazon/identity/auth/device/gz$c;

    const-string v5, "device_type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/amazon/identity/auth/device/gz$c;-><init>(Ljava/lang/String;B)V

    const-string v5, "actor_access_token"

    .line 346
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "expires_in"

    const-string/jumbo v7, "token"

    if-eqz v5, :cond_0

    .line 349
    new-instance v8, Lcom/amazon/identity/auth/device/gz$a;

    .line 350
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 351
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v8, v9, v5, v1}, Lcom/amazon/identity/auth/device/gz$a;-><init>(Ljava/lang/String;IB)V

    .line 1108
    iput-object v8, v4, Lcom/amazon/identity/auth/device/gz$c;->py:Lcom/amazon/identity/auth/device/gz$a;

    :cond_0
    const-string v5, "actor_refresh_token"

    .line 354
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 357
    new-instance v8, Lcom/amazon/identity/auth/device/gz$b;

    .line 358
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "actor_id"

    .line 359
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v9, v5}, Lcom/amazon/identity/auth/device/gz$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    iput-object v8, v4, Lcom/amazon/identity/auth/device/gz$c;->px:Lcom/amazon/identity/auth/device/gz$b;

    :cond_1
    const-string v5, "account_access_token"

    .line 362
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 365
    new-instance v8, Lcom/amazon/identity/auth/device/gz$a;

    .line 366
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 367
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v8, v9, v5, v1}, Lcom/amazon/identity/auth/device/gz$a;-><init>(Ljava/lang/String;IB)V

    .line 3108
    iput-object v8, v4, Lcom/amazon/identity/auth/device/gz$c;->pw:Lcom/amazon/identity/auth/device/gz$a;

    :cond_2
    const-string v5, "account_refresh_token"

    .line 370
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 373
    new-instance v5, Lcom/amazon/identity/auth/device/gz$b;

    .line 374
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "account_id"

    .line 375
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/amazon/identity/auth/device/gz$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4108
    iput-object v5, v4, Lcom/amazon/identity/auth/device/gz$c;->pv:Lcom/amazon/identity/auth/device/gz$b;

    .line 378
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public r(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "PandaOAuthUpgradeRequestHelper"

    .line 387
    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/gz;->aS:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->g(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    move-result-object p1

    return-object p1
.end method
