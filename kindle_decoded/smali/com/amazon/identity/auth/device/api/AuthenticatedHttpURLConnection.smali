.class Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;
.super Lcom/amazon/identity/auth/device/eq;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fA:Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

.field private final fB:[Ljava/lang/Object;

.field private fC:Lcom/amazon/identity/auth/device/jo;

.field private final fz:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/HttpURLConnection;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Ljava/net/HttpURLConnection;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/eq;-><init>(Ljava/net/URL;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fB:[Ljava/lang/Object;

    .line 43
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fA:Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    .line 44
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method bc()[B
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fB:[Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fC:Lcom/amazon/identity/auth/device/jo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 91
    monitor-exit v0

    return-object v1

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fC:Lcom/amazon/identity/auth/device/jo;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/jo;->gX()[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fB:[Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fC:Lcom/amazon/identity/auth/device/jo;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/amazon/identity/auth/device/jo;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/jo;-><init>(Ljava/net/URLConnection;)V

    iput-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fC:Lcom/amazon/identity/auth/device/jo;

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fC:Lcom/amazon/identity/auth/device/jo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getReadTimeout()I
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

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

    .line 168
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public performOnConnectionRequested()Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection$1;

    invoke-direct {v0, p0, p0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection$1;-><init>(Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;)V

    .line 78
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fA:Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->a(Lcom/amazon/identity/auth/device/jp;)V

    .line 1100
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fB:[Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fC:Lcom/amazon/identity/auth/device/jo;

    if-nez v1, :cond_0

    .line 1104
    monitor-exit v0

    goto :goto_0

    .line 1107
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fC:Lcom/amazon/identity/auth/device/jo;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/jo;->gY()V

    .line 1108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    return-object v0

    :catchall_0
    move-exception v1

    .line 1108
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

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

    .line 120
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->fz:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
