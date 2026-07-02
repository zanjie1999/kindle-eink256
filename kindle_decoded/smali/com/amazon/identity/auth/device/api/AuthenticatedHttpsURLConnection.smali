.class Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fA:Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

.field private final fE:Ljavax/net/ssl/HttpsURLConnection;

.field private final fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Ljavax/net/ssl/HttpsURLConnection;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 45
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fA:Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    .line 46
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fE:Ljavax/net/ssl/HttpsURLConnection;

    .line 48
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/HttpURLConnection;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    return-void
.end method

.method constructor <init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;-><init>(Ljava/net/URL;Ljavax/net/ssl/HttpsURLConnection;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->disconnect()V

    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fE:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->getConnectTimeout()I

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

    .line 199
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getContent()Ljava/lang/Object;

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

    .line 205
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/eq;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/eq;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/eq;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/eq;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/eq;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/eq;->getHeaderFieldKey(I)Ljava/lang/String;

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

    .line 276
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fE:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fE:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fE:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

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

    .line 121
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fE:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

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

    .line 346
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->getRequestMethod()Ljava/lang/String;

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

    .line 283
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

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

    .line 151
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getResponseCode()I

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

    .line 157
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fE:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fE:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fE:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fE:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpsURLConnection;->fF:Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedHttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
