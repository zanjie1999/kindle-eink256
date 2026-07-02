.class public Lcom/amazon/identity/auth/device/dv;
.super Ljava/net/HttpURLConnection;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fB:[Ljava/lang/Object;

.field private final kN:Ljava/net/HttpURLConnection;

.field private kO:[B

.field private kP:Ljava/io/IOException;

.field private kQ:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/identity/auth/device/dv;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/dv;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    iput-object v0, p0, Lcom/amazon/identity/auth/device/dv;->fB:[Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->fB:[Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dv;->kQ:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 83
    :try_start_1
    iget-object v3, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/identity/auth/device/dv;->kQ:[B

    goto :goto_0

    .line 90
    :cond_0
    sget-object v3, Lcom/amazon/identity/auth/device/dv;->TAG:Ljava/lang/String;

    const-string v4, "No Error Stream found"

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v2, [B

    .line 91
    iput-object v3, p0, Lcom/amazon/identity/auth/device/dv;->kQ:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :goto_0
    :try_start_2
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    :try_start_3
    new-array v2, v2, [B

    .line 96
    iput-object v2, p0, Lcom/amazon/identity/auth/device/dv;->kQ:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 100
    :goto_1
    :try_start_4
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    .line 101
    throw v2

    .line 104
    :cond_1
    :goto_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dv;->kQ:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    .line 105
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public getExpiration()J
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
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

    .line 243
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->fB:[Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dv;->kO:[B

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/dv;->kP:Ljava/io/IOException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 48
    :try_start_1
    iget-object v2, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/identity/auth/device/dv;->kO:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    :try_start_3
    new-array v3, v3, [B

    .line 53
    iput-object v3, p0, Lcom/amazon/identity/auth/device/dv;->kO:[B

    .line 54
    iput-object v2, p0, Lcom/amazon/identity/auth/device/dv;->kP:Ljava/io/IOException;

    .line 55
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    :goto_0
    :try_start_4
    invoke-static {v1}, Lcom/amazon/identity/auth/device/ja;->a(Ljava/io/Closeable;)V

    .line 60
    throw v2

    .line 63
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dv;->kP:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 68
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/dv;->kO:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    monitor-exit v0

    return-object v1

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dv;->kP:Ljava/io/IOException;

    throw v1

    :catchall_1
    move-exception v1

    .line 69
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
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

    .line 249
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dv;->kN:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
