.class Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "ConnectionWrapper.java"


# instance fields
.field private mExecutionRequested:Z

.field private mExecutionResultsRequested:Z

.field private mHttpURLConnection:Ljava/net/HttpURLConnection;

.field private mHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

.field private mURLConnection:Ljava/net/URLConnection;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    .line 25
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 26
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mExecutionRequested:Z

    .line 28
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mExecutionResultsRequested:Z

    return-void
.end method

.method private requestExecution()V
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mExecutionRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mExecutionRequested:Z

    .line 79
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->onExecutionRequested()V

    :cond_0
    return-void
.end method

.method private requestExecutionResults()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecution()V

    .line 86
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mExecutionResultsRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mExecutionResultsRequested:Z

    .line 89
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->onExecutionResultsRequested()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecution()V

    .line 326
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 191
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mExecutionRequested:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 188
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getConnectTimeout()I

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

    .line 338
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 339
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

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

    .line 345
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 346
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 271
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 272
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 352
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 353
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 359
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 360
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 366
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 367
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 207
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getExpiration()J
    .locals 2

    .line 391
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 392
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 398
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 399
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 424
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 425
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 298
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 299
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 431
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 432
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 438
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 439
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

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

    .line 405
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 406
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 445
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getInnerConnection()Ljava/net/URLConnection;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 452
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLastModified()J
    .locals 2

    .line 458
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 459
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 465
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecution()V

    .line 466
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 412
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

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

    .line 229
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 234
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->requestExecutionResults()V

    .line 245
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method protected onExecutionRequested()V
    .locals 0

    return-void
.end method

.method protected onExecutionResultsRequested()V
    .locals 0

    return-void
.end method

.method protected putInnerConnection(Ljava/net/URLConnection;)V
    .locals 2

    .line 37
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    .line 38
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p1

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 44
    :cond_0
    iput-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 47
    :goto_0
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    .line 49
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_1

    .line 53
    :cond_1
    iput-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    :goto_1
    return-void
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void

    .line 317
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void

    .line 307
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void

    .line 290
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void

    .line 253
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mURLConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0

    .line 263
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
