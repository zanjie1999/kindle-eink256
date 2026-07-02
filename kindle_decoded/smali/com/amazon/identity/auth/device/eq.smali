.class public abstract Lcom/amazon/identity/auth/device/eq;
.super Ljava/net/HttpURLConnection;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fz:Ljava/net/HttpURLConnection;

.field private kS:Ljava/io/IOException;

.field private lI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/identity/auth/device/eq;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/eq;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/eq;->lI:Z

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/amazon/identity/auth/device/eq;->kS:Ljava/io/IOException;

    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .locals 2

    .line 504
    instance-of p1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p1, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/eq;->getURL()Ljava/net/URL;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request host:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gG()V

    :cond_1
    return-void
.end method

.method private declared-synchronized ek()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 38
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/eq;->lI:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 40
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->kS:Ljava/io/IOException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    .line 53
    :try_start_2
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/eq;->performOnConnectionRequested()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 70
    :try_start_3
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/eq;->lI:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 67
    :cond_1
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection could not be established"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 57
    iput-object v0, p0, Lcom/amazon/identity/auth/device/eq;->kS:Ljava/io/IOException;

    .line 58
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_2

    .line 60
    sget-object v1, Lcom/amazon/identity/auth/device/eq;->TAG:Ljava/lang/String;

    const-string v2, "SSL Handshake fail when performOnConnectionRequested"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :cond_2
    throw v0

    .line 47
    :cond_3
    sget-object v0, Lcom/amazon/identity/auth/device/eq;->TAG:Ljava/lang/String;

    const-string v1, "The first connection attempt ended in IOException so throwing the same"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->kS:Ljava/io/IOException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abstract addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 154
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 158
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 159
    throw v0
.end method

.method public declared-synchronized disconnect()V
    .locals 1

    monitor-enter p0

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/eq;->lI:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getAllowUserInteraction()Z
.end method

.method public abstract getConnectTimeout()I
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 172
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 176
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 177
    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 187
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 191
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 192
    throw p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 3

    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 202
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 206
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 207
    sget-object v1, Lcom/amazon/identity/auth/device/eq;->TAG:Ljava/lang/String;

    const-string v2, "Could not get Content Encoding"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()I
    .locals 3

    .line 218
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 219
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 223
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 224
    sget-object v1, Lcom/amazon/identity/auth/device/eq;->TAG:Ljava/lang/String;

    const-string v2, "Could not get Content Length"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 3

    .line 235
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 236
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 240
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 241
    sget-object v1, Lcom/amazon/identity/auth/device/eq;->TAG:Ljava/lang/String;

    const-string v2, "Could not get Content Type"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate()J
    .locals 3

    .line 252
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 253
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 257
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 258
    sget-object v1, Lcom/amazon/identity/auth/device/eq;->TAG:Ljava/lang/String;

    const-string v2, "Could not get Date"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getDefaultUseCaches()Z
.end method

.method public abstract getDoInput()Z
.end method

.method public abstract getDoOutput()Z
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpiration()J
    .locals 3

    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 279
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 283
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 284
    sget-object v1, Lcom/amazon/identity/auth/device/eq;->TAG:Ljava/lang/String;

    const-string v2, "Could not get expiration"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 2

    .line 295
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 296
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 300
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 301
    sget-object v0, Lcom/amazon/identity/auth/device/eq;->TAG:Ljava/lang/String;

    const-string v1, "Could not get header field"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 335
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 336
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 340
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 341
    sget-object v0, Lcom/amazon/identity/auth/device/eq;->TAG:Ljava/lang/String;

    const-string v1, "Could not get header field"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2

    .line 352
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 353
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 357
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 358
    sget-object v0, Lcom/amazon/identity/auth/device/eq;->TAG:Ljava/lang/String;

    const-string v1, "Could not get header field date"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide p2
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 2

    .line 369
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 370
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 374
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 375
    sget-object v0, Lcom/amazon/identity/auth/device/eq;->TAG:Ljava/lang/String;

    const-string v1, "Could not get header field int"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p2
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 2

    .line 386
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 387
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 391
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 392
    sget-object v0, Lcom/amazon/identity/auth/device/eq;->TAG:Ljava/lang/String;

    const-string v1, "Could not get header field key"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 312
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 313
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 317
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 318
    sget-object v1, Lcom/amazon/identity/auth/device/eq;->TAG:Ljava/lang/String;

    const-string v2, "Could not get header fields"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public abstract getIfModifiedSince()J
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 407
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 411
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 412
    throw v0
.end method

.method public abstract getInstanceFollowRedirects()Z
.end method

.method public getLastModified()J
    .locals 3

    .line 421
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 422
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 426
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 427
    sget-object v1, Lcom/amazon/identity/auth/device/eq;->TAG:Ljava/lang/String;

    const-string v2, "Could not get last modified date"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 439
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 443
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 444
    throw v0
.end method

.method public abstract getReadTimeout()I
.end method

.method public abstract getRequestMethod()Ljava/lang/String;
.end method

.method public abstract getRequestProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 112
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 116
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 117
    throw v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/eq;->ek()V

    .line 127
    iget-object v0, p0, Lcom/amazon/identity/auth/device/eq;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 131
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/eq;->a(Ljava/io/IOException;)V

    .line 132
    throw v0
.end method

.method public abstract getURL()Ljava/net/URL;
.end method

.method public abstract getUseCaches()Z
.end method

.method protected abstract performOnConnectionRequested()Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setAllowUserInteraction(Z)V
.end method

.method public abstract setChunkedStreamingMode(I)V
.end method

.method public abstract setConnectTimeout(I)V
.end method

.method public abstract setDefaultUseCaches(Z)V
.end method

.method public abstract setDoInput(Z)V
.end method

.method public abstract setDoOutput(Z)V
.end method

.method public abstract setFixedLengthStreamingMode(I)V
.end method

.method public abstract setFixedLengthStreamingMode(J)V
.end method

.method public abstract setIfModifiedSince(J)V
.end method

.method public abstract setInstanceFollowRedirects(Z)V
.end method

.method public abstract setReadTimeout(I)V
.end method

.method public abstract setRequestMethod(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation
.end method

.method public abstract setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setUseCaches(Z)V
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract usingProxy()Z
.end method
