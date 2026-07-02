.class public Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "ConnectionWrapper.java"


# instance fields
.field private executionRequested:Z

.field private executionResultsRequested:Z

.field private httpURLConnection:Ljava/net/HttpURLConnection;

.field private httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

.field private urlConnection:Ljava/net/URLConnection;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    .line 26
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 27
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->executionRequested:Z

    .line 29
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->executionResultsRequested:Z

    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;)V
    .locals 1

    .line 36
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    .line 26
    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 27
    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->executionRequested:Z

    .line 29
    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->executionResultsRequested:Z

    .line 37
    invoke-virtual {p0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    return-void
.end method

.method private requestExecution()V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->executionRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->executionRequested:Z

    .line 72
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->onExecutionRequested()V

    :cond_0
    return-void
.end method

.method private requestExecutionResults()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecution()V

    .line 78
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->executionResultsRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->executionResultsRequested:Z

    .line 80
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->onExecutionResultsRequested()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

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

    .line 271
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecution()V

    .line 272
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 162
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->executionRequested:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 159
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

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

    .line 282
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 283
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

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

    .line 288
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 289
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 227
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 228
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 294
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 295
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 300
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 301
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 306
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 307
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 175
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getExpiration()J
    .locals 2

    .line 327
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 328
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 333
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 334
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 355
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 356
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 249
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 250
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 361
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 362
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 367
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 368
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

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

    .line 339
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 340
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getInnerConnection()Ljava/net/URLConnection;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 379
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLastModified()J
    .locals 2

    .line 384
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 385
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    .line 119
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

    .line 390
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecution()V

    .line 391
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

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

    .line 110
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    .line 111
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

    .line 180
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
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

    .line 345
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

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

    .line 193
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 197
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0

    .line 194
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

    .line 202
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->requestExecutionResults()V

    .line 206
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0

    .line 151
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

    .line 102
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

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

    .line 41
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    .line 42
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    move-object v0, p1

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 45
    :cond_0
    iput-object v1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 48
    :goto_0
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    .line 49
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_1

    .line 51
    :cond_1
    iput-object v1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    :goto_1
    return-void
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void

    .line 264
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void

    .line 256
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void

    .line 242
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

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

    .line 211
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void

    .line 143
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
