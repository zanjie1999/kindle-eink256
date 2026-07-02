.class public abstract Lcom/amazon/identity/auth/device/fn;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/fn$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.fn"


# instance fields
.field private mK:Lcom/amazon/identity/auth/device/ms;

.field protected final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    return-void
.end method

.method private a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fn;->getHttpVerb()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fn;->eK()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 413
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 414
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 415
    sget-object v3, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fn;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const-string v5, "Setting panda api %s connection properties:%s to %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1, v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fn;->mK:Lcom/amazon/identity/auth/device/ms;

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fn;->eM()Ljava/net/URL;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    invoke-static {v1, p1, p2}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/ms;->eN(Ljava/lang/String;)V

    .line 382
    iget-object p1, p0, Lcom/amazon/identity/auth/device/fn;->mK:Lcom/amazon/identity/auth/device/ms;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    :cond_1
    return-void
.end method

.method protected a(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/HttpsURLConnection;",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 170
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 172
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/token/MAPCookie;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 174
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%s=%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-virtual {p1, v1, v0}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract b(Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public c(Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/fn$a;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "application/json"

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/identity/auth/device/fn;->eM()Ljava/net/URL;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 199
    :try_start_0
    sget-object v13, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Starting request to amazon backend service. URL : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {v3}, Lcom/amazon/identity/auth/device/mm;->h(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v13

    iput-object v13, v1, Lcom/amazon/identity/auth/device/fn;->mK:Lcom/amazon/identity/auth/device/ms;

    .line 204
    invoke-virtual/range {p0 .. p1}, Lcom/amazon/identity/auth/device/fn;->d(Lcom/amazon/identity/auth/device/ej;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/identity/auth/device/fn;->eH()Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/identity/auth/device/fn;->eH()Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/amazon/identity/auth/device/cy;->openConnection(Ljava/net/HttpURLConnection;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object v14

    check-cast v14, Ljavax/net/ssl/HttpsURLConnection;

    move-object v13, v14

    .line 1396
    :cond_0
    invoke-virtual {v13, v12}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 1397
    invoke-virtual {v13, v12}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const-string v14, "Accept"

    .line 1398
    invoke-virtual {v13, v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "Content-Type"

    .line 1399
    invoke-virtual {v13, v14, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "x-amzn-identity-auth-domain"

    .line 1401
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/identity/auth/device/fn;->eG()Ljava/lang/String;

    move-result-object v14

    .line 1400
    invoke-virtual {v13, v0, v14}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-direct {v1, v13}, Lcom/amazon/identity/auth/device/fn;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/identity/auth/device/fn;->eI()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v13, v0}, Lcom/amazon/identity/auth/device/fn;->a(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/List;)V

    .line 221
    invoke-virtual/range {p0 .. p1}, Lcom/amazon/identity/auth/device/fn;->b(Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;

    move-result-object v0

    .line 222
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-static {v14, v15}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/OutputStream;[B)V

    .line 225
    sget-object v14, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    invoke-static {v14}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v14

    .line 227
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 229
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    .line 231
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 232
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 235
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 237
    :cond_1
    sget-object v6, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    invoke-static {v6}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_2
    sget-object v6, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "Panda request body: "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 243
    invoke-static {v13}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->d(Ljava/net/HttpURLConnection;)I

    move-result v0

    .line 244
    iget-object v6, v1, Lcom/amazon/identity/auth/device/fn;->mK:Lcom/amazon/identity/auth/device/ms;

    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/ms;->iO()V

    .line 247
    invoke-static {v0}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->j(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 249
    invoke-static {v3}, Lcom/amazon/identity/auth/device/mm;->j(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v4, v5}, Lcom/amazon/identity/auth/device/ej;->incrementCounter(Ljava/lang/String;D)V

    goto :goto_2

    .line 253
    :cond_3
    invoke-static {v3}, Lcom/amazon/identity/auth/device/mm;->j(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v7, v8}, Lcom/amazon/identity/auth/device/ej;->incrementCounter(Ljava/lang/String;D)V

    .line 256
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/identity/auth/device/fn;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 258
    sget-object v9, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    const-string v14, "Backend service %s returned response code: %d"

    new-array v15, v10, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v12

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->a(Ljava/lang/Integer;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 263
    sget-object v9, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    const-string v14, "Error happens when calling backend service %s"

    new-array v15, v12, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v11

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_4
    invoke-static {v13}, Lcom/amazon/identity/auth/device/ih;->f(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 269
    invoke-virtual {v1, v9}, Lcom/amazon/identity/auth/device/fn;->k(Lorg/json/JSONObject;)V

    .line 270
    sget-object v14, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    const-string v15, "Panda %s api response json: %s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v6, v4, v11

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v14}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 277
    new-instance v4, Lcom/amazon/identity/auth/device/fn$a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v4, v0, v9}, Lcom/amazon/identity/auth/device/fn$a;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v13, :cond_5

    .line 343
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5
    return-object v4

    .line 274
    :cond_6
    :try_start_2
    sget-object v4, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    const-string v5, "Fail to get backend service response from %s"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v4, Lcom/amazon/identity/auth/device/fn$a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v5, v6}, Lcom/amazon/identity/auth/device/fn$a;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/Exception;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v13, :cond_7

    .line 343
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_7
    return-object v4

    :catch_0
    move-exception v0

    move-object v9, v13

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    const/4 v9, 0x0

    .line 332
    :goto_3
    :try_start_3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Error parsing backend service response from %s response. Not of an expected format. Error: %s"

    new-array v5, v10, [Ljava/lang/Object;

    .line 335
    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v11

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v12

    .line 333
    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 336
    sget-object v3, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v2, Lcom/amazon/identity/auth/device/fn$a;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/amazon/identity/auth/device/fn$a;-><init>(Ljava/lang/Exception;Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v9, :cond_8

    .line 343
    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_8
    return-object v2

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    const/4 v13, 0x0

    .line 281
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v5, "Received authentication challenge is"

    .line 283
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 285
    sget-object v0, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    const-string v4, "Encountered bug around 401 returned from the server. Assuming this means invalid credentials"

    invoke-static {v0, v4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {v3}, Lcom/amazon/identity/auth/device/mm;->j(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v7, v8}, Lcom/amazon/identity/auth/device/ej;->incrementCounter(Ljava/lang/String;D)V

    .line 289
    sget-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->CredentialError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getCode()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x191

    .line 290
    invoke-static {v3, v4, v0}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 291
    new-instance v0, Lcom/amazon/identity/auth/device/fn$a;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v4, v3}, Lcom/amazon/identity/auth/device/fn$a;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Ljava/lang/Exception;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v13, :cond_9

    .line 343
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_9
    return-object v0

    .line 294
    :cond_a
    :try_start_5
    invoke-static {v3}, Lcom/amazon/identity/auth/device/mm;->i(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 295
    iget-object v5, v1, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v3, v0, v5}, Lcom/amazon/identity/auth/device/mm;->a(Ljava/net/URL;Ljava/io/IOException;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 296
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Error getting response from server. Error: %s"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object v4, v7, v11

    .line 297
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 298
    sget-object v5, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v4, v1, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v4}, Lcom/amazon/identity/auth/device/mm;->aN(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 302
    sget-object v2, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    const-string v3, "The device is not connected to internet. Please check your device network connection."

    invoke-static {v2, v3}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 308
    :cond_b
    instance-of v4, v0, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_c

    .line 310
    sget-object v2, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    const-string v4, "Cannot parse url %s, Please check your device network connection."

    new-array v5, v12, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 313
    :cond_c
    instance-of v4, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_d

    .line 315
    sget-object v2, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    const-string v4, "Cannot hit url %s. Please check your device network connection."

    new-array v5, v12, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 322
    :cond_d
    invoke-static {v3}, Lcom/amazon/identity/auth/device/mm;->j(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/amazon/identity/auth/device/ej;->incrementCounter(Ljava/lang/String;D)V

    .line 323
    sget-object v2, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to reach "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", despite valid network connection due to "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Please contact service owners for investigation if it is not BackoffException"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-static {v2, v3, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v10, 0x1

    .line 328
    :goto_5
    new-instance v2, Lcom/amazon/identity/auth/device/fn$a;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/amazon/identity/auth/device/fn$a;-><init>(Ljava/lang/Exception;Ljava/lang/Integer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v13, :cond_e

    .line 343
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_e
    return-object v2

    :catchall_2
    move-exception v0

    move-object v9, v13

    :goto_6
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 345
    :cond_f
    throw v0
.end method

.method protected d(Lcom/amazon/identity/auth/device/ej;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fn;->eM()Ljava/net/URL;

    move-result-object v0

    .line 390
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fn;->eL()Lcom/amazon/identity/auth/device/framework/RetryLogic;

    move-result-object v1

    .line 391
    iget-object v2, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0, v1, p1, v2}, Lcom/amazon/identity/auth/device/cy;->a(Ljava/net/URL;Lcom/amazon/identity/auth/device/framework/RetryLogic;Lcom/amazon/identity/auth/device/ej;Landroid/content/Context;)Ljava/net/HttpURLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    return-object p1
.end method

.method protected abstract eF()Ljava/lang/String;
.end method

.method protected abstract eG()Ljava/lang/String;
.end method

.method protected abstract eH()Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
.end method

.method protected eI()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/token/MAPCookie;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected eK()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fn;->eL()Lcom/amazon/identity/auth/device/framework/RetryLogic;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->cR()I

    move-result v1

    if-lez v1, :cond_0

    .line 153
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x-amzn-identity-retry-attempt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected eL()Lcom/amazon/identity/auth/device/framework/RetryLogic;
    .locals 3

    .line 185
    new-instance v0, Lcom/amazon/identity/auth/device/jv;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/jv;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/ju;)V

    return-object v0
.end method

.method public eM()Ljava/net/URL;
    .locals 6

    .line 350
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fn;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    :try_start_0
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fn;->eF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 364
    sget-object v2, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fn;->eF()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    .line 368
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "Domain or path for service call invalid"

    .line 364
    invoke-static {v2, v0, v3}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 354
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    const-string v1, "No path specified for service call"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getHttpVerb()Ljava/lang/String;
.end method

.method protected abstract getPath()Ljava/lang/String;
.end method

.method protected abstract j(Lorg/json/JSONObject;)Ljava/lang/String;
.end method

.method protected k(Lorg/json/JSONObject;)V
    .locals 2

    .line 423
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/fn;->j(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 424
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    sget-object v0, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Error index is found in error response: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-object p1, Lcom/amazon/identity/auth/device/fn;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
