.class public Lcom/amazon/identity/auth/device/jt;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/kk;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.jt"


# instance fields
.field private final bO:Lcom/amazon/identity/auth/device/ej;

.field iO:Lcom/amazon/identity/auth/device/lh;

.field private final mContext:Landroid/content/Context;

.field rC:Lcom/amazon/identity/auth/device/kj;

.field rD:Lcom/amazon/identity/auth/device/ma;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/kj;Lcom/amazon/identity/auth/device/lh;Lcom/amazon/identity/auth/device/ej;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/amazon/identity/auth/device/jt;->rC:Lcom/amazon/identity/auth/device/kj;

    .line 35
    iput-object v0, p0, Lcom/amazon/identity/auth/device/jt;->rD:Lcom/amazon/identity/auth/device/ma;

    .line 36
    iput-object v0, p0, Lcom/amazon/identity/auth/device/jt;->iO:Lcom/amazon/identity/auth/device/lh;

    .line 47
    iput-object p2, p0, Lcom/amazon/identity/auth/device/jt;->rD:Lcom/amazon/identity/auth/device/ma;

    .line 48
    iput-object p4, p0, Lcom/amazon/identity/auth/device/jt;->iO:Lcom/amazon/identity/auth/device/lh;

    .line 50
    iput-object p3, p0, Lcom/amazon/identity/auth/device/jt;->rC:Lcom/amazon/identity/auth/device/kj;

    .line 51
    iput-object p1, p0, Lcom/amazon/identity/auth/device/jt;->mContext:Landroid/content/Context;

    .line 52
    iput-object p5, p0, Lcom/amazon/identity/auth/device/jt;->bO:Lcom/amazon/identity/auth/device/ej;

    return-void
.end method

.method public static a(Lcom/amazon/identity/auth/device/ma;Ljava/net/HttpURLConnection;)Lcom/amazon/identity/auth/device/mb;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Couldn\'t close write body stream"

    const-string v1, "Couldn\'t flush write body stream"

    .line 271
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ma;->iC()Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    move-result-object v2

    .line 272
    sget-object v3, Lcom/amazon/identity/kcpsdk/common/HttpVerb;->HttpVerbGet:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    const-string v3, "GET"

    .line 274
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_0
    sget-object v3, Lcom/amazon/identity/kcpsdk/common/HttpVerb;->HttpVerbPost:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    if-ne v2, v3, :cond_1

    const-string v3, "POST"

    .line 278
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_0

    .line 281
    :cond_1
    sget-object v3, Lcom/amazon/identity/kcpsdk/common/HttpVerb;->HttpVerbPut:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    if-ne v2, v3, :cond_c

    const-string v3, "PUT"

    .line 283
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :goto_0
    const/4 v3, 0x0

    .line 291
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ma;->iE()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 293
    invoke-virtual {p0, v3}, Lcom/amazon/identity/auth/device/ma;->o(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/amazon/identity/auth/device/ma;->p(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 296
    :cond_2
    sget-object v3, Lcom/amazon/identity/kcpsdk/common/HttpVerb;->HttpVerbPost:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/amazon/identity/kcpsdk/common/HttpVerb;->HttpVerbPut:Lcom/amazon/identity/kcpsdk/common/HttpVerb;

    if-ne v2, v3, :cond_6

    .line 3348
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ma;->iF()[B

    move-result-object p0

    if-eqz p0, :cond_5

    .line 3349
    array-length v2, p0

    if-nez v2, :cond_4

    goto :goto_5

    .line 3353
    :cond_4
    array-length v2, p0

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 3355
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 3359
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3365
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 3369
    sget-object v3, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    invoke-static {v3, v1, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3374
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    .line 3378
    sget-object v1, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    .line 3365
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 3369
    sget-object v3, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    invoke-static {v3, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3374
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 3378
    sget-object v1, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3380
    :goto_4
    throw p0

    .line 299
    :cond_5
    :goto_5
    sget-object p0, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    const-string v0, "Finished write body."

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_6
    sget-object p0, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object p0

    .line 305
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 311
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 313
    :cond_7
    sget-object v2, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_6

    .line 316
    :cond_8
    sget-object p0, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    const-string v0, "Starting get response code"

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {p1}, Lcom/amazon/identity/auth/device/framework/RetryLogic;->d(Ljava/net/HttpURLConnection;)I

    move-result p0

    .line 318
    sget-object v0, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received response: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    .line 325
    new-instance v0, Lcom/amazon/identity/auth/device/mb;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/mb;-><init>()V

    int-to-long v1, p0

    .line 326
    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/mb;->a(J)V

    .line 333
    :cond_9
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p0

    .line 334
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 337
    invoke-virtual {v0, p0, v1}, Lcom/amazon/identity/auth/device/mb;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    :cond_a
    if-nez v1, :cond_9

    return-object v0

    .line 322
    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid response code"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 288
    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "unrecognized HttpVerb: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/ju;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/identity/kcpsdk/auth/ParseErrorException;
        }
    .end annotation

    const-string v0, "NetworkNotAvailable"

    const-string v1, "Error closing stream to "

    .line 186
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ma;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 2035
    invoke-static {}, Lcom/amazon/identity/auth/device/fj;->ey()V

    .line 2037
    sget-object v3, Lcom/amazon/identity/auth/device/fj;->mA:Lcom/amazon/identity/auth/device/mr;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/mm;->eQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "WebserviceCallTime"

    invoke-static {v3, v4, v2}, Lcom/amazon/identity/auth/device/ms;->a(Lcom/amazon/identity/auth/device/mr;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ms;->start()V

    const/4 v3, 0x0

    .line 191
    :try_start_0
    new-instance v4, Lcom/amazon/identity/auth/device/jv;

    invoke-direct {v4, p0, p2}, Lcom/amazon/identity/auth/device/jv;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/ju;)V

    .line 192
    invoke-virtual {p1, v4, p0, p3}, Lcom/amazon/identity/auth/device/ma;->a(Lcom/amazon/identity/auth/device/framework/RetryLogic;Landroid/content/Context;Lcom/amazon/identity/auth/device/ej;)Ljava/net/HttpURLConnection;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 193
    :try_start_1
    invoke-static {p3}, Lcom/amazon/identity/auth/device/jt;->b(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 195
    :try_start_2
    sget-object p3, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "X-Amzn-RequestId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "X-Amzn-RequestId"

    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p3, v6}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object p3, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    const-string v6, "Opened WebRequest Connection."

    invoke-static {p3, v6}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v4, v5}, Lcom/amazon/identity/auth/device/jv;->h(Ljava/net/HttpURLConnection;)V

    .line 200
    invoke-static {p1, v5}, Lcom/amazon/identity/auth/device/jt;->a(Lcom/amazon/identity/auth/device/ma;Ljava/net/HttpURLConnection;)Lcom/amazon/identity/auth/device/mb;

    move-result-object p3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 208
    :catch_0
    :try_start_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    if-eqz v4, :cond_0

    .line 2385
    :try_start_5
    invoke-static {v4}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 217
    :cond_0
    invoke-interface {p2, p3, v3}, Lcom/amazon/identity/auth/device/ju;->a(Lcom/amazon/identity/auth/device/mb;[B)Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_1

    .line 247
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 251
    sget-object p3, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazon/identity/auth/device/jt;->a(Lcom/amazon/identity/auth/device/ma;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 256
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 259
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_7

    :catch_4
    move-exception p0

    move-object v4, v3

    :goto_2
    move-object v3, v5

    goto :goto_4

    :catch_5
    move-exception p2

    move-object v4, v3

    :goto_3
    move-object v3, v5

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v5, p3

    goto/16 :goto_7

    :catch_6
    move-exception p0

    move-object v4, v3

    move-object v3, p3

    goto :goto_4

    :catch_7
    move-exception p2

    move-object v4, v3

    move-object v3, p3

    goto :goto_5

    :catchall_3
    move-exception p0

    move-object v5, v3

    goto :goto_7

    :catch_8
    move-exception p0

    move-object v4, v3

    .line 234
    :goto_4
    :try_start_7
    sget-object p2, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "UnsupportedOperationException making request to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazon/identity/auth/device/jt;->a(Lcom/amazon/identity/auth/device/ma;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ma;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/identity/auth/device/fj;->bQ(Ljava/lang/String;)V

    .line 238
    throw p0

    :catch_9
    move-exception p2

    move-object v4, v3

    .line 221
    :goto_5
    sget-object p3, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOException making request to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazon/identity/auth/device/jt;->a(Lcom/amazon/identity/auth/device/ma;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5, p2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    invoke-static {p0, v2}, Lcom/amazon/identity/auth/device/mm;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/ms;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 225
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ma;->getUrl()Ljava/lang/String;

    move-result-object p0

    .line 3042
    invoke-static {}, Lcom/amazon/identity/auth/device/fj;->ey()V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 3044
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/amazon/identity/auth/device/mm;->eQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v5

    invoke-static {v0, p3}, Lcom/amazon/identity/auth/device/fj;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 228
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ma;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/fj;->bQ(Ljava/lang/String;)V

    .line 230
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception p0

    move-object v5, v3

    :goto_6
    move-object v3, v4

    :goto_7
    if-eqz v3, :cond_4

    .line 247
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_8

    :catch_a
    move-exception p2

    .line 251
    sget-object p3, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazon/identity/auth/device/jt;->a(Lcom/amazon/identity/auth/device/ma;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_8
    if-eqz v5, :cond_5

    .line 256
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 259
    :cond_5
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 260
    throw p0
.end method

.method public static a(Landroid/content/Context;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/ju;Lcom/amazon/identity/auth/device/lh;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/identity/kcpsdk/auth/ParseErrorException;
        }
    .end annotation

    .line 166
    invoke-static {p1, p3}, Lcom/amazon/identity/auth/device/jt;->a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/lh;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 169
    sget-object p0, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to sign request, aborting call to "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ma;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 173
    :cond_0
    sget-object p3, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    const-string v0, "Starting web request"

    invoke-static {p3, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ma;->getUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    const-string v0, "URL: %s"

    invoke-static {v0, p3}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-static {p0, p1, p2, p4}, Lcom/amazon/identity/auth/device/jt;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/ju;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/amazon/identity/auth/device/ma;)Ljava/lang/String;
    .locals 2

    .line 265
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ma;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ma;->iB()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/lh;)Z
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ma;->iG()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1, p0}, Lcom/amazon/identity/auth/device/lh;->b(Lcom/amazon/identity/auth/device/ma;)Z

    move-result p0

    return p0

    .line 105
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    const-string p1, "The request requires authentication, but no authentication credentials were supplied."

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/net/URLConnection;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 57
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Amzn-RequestId"

    .line 58
    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "X-Amzn-RequestId:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/amazon/identity/auth/device/jt;->he()I

    move-result v0

    .line 65
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 67
    invoke-static {}, Lcom/amazon/identity/auth/device/jt;->he()I

    move-result v0

    .line 68
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-object p0
.end method

.method private static he()I
    .locals 4

    .line 75
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method


# virtual methods
.method public cC()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jt;->rD:Lcom/amazon/identity/auth/device/ma;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/jt;->iO:Lcom/amazon/identity/auth/device/lh;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/jt;->a(Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/lh;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to sign request, aborting call to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/jt;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ma;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jt;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string v1, "FailureToSignRequest"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jt;->rC:Lcom/amazon/identity/auth/device/kj;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/kj;->cE()V

    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/jt;->TAG:Ljava/lang/String;

    const-string v1, "Starting web request"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 91
    iget-object v2, p0, Lcom/amazon/identity/auth/device/jt;->rD:Lcom/amazon/identity/auth/device/ma;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/ma;->getUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "URL: %s"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1116
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jt;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/jt;->rD:Lcom/amazon/identity/auth/device/ma;

    new-instance v2, Lcom/amazon/identity/auth/device/jt$1;

    invoke-direct {v2, p0}, Lcom/amazon/identity/auth/device/jt$1;-><init>(Lcom/amazon/identity/auth/device/jt;)V

    iget-object v3, p0, Lcom/amazon/identity/auth/device/jt;->bO:Lcom/amazon/identity/auth/device/ej;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/jt;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/ma;Lcom/amazon/identity/auth/device/ju;Lcom/amazon/identity/auth/device/ej;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/amazon/identity/kcpsdk/auth/ParseErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1156
    :catch_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jt;->rC:Lcom/amazon/identity/auth/device/kj;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/kj;->onNetworkError()V

    :catch_1
    return-void

    .line 1146
    :catch_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jt;->rC:Lcom/amazon/identity/auth/device/kj;

    invoke-interface {v0}, Lcom/amazon/identity/auth/device/kj;->onNetworkError()V

    return-void
.end method
