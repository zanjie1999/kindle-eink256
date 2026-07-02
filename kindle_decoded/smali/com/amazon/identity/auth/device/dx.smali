.class Lcom/amazon/identity/auth/device/dx;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bO:Lcom/amazon/identity/auth/device/ej;

.field private final kX:Lcom/amazon/identity/auth/device/framework/RetryLogic;

.field private final kZ:Lcom/amazon/identity/auth/device/dw;

.field private final la:Lcom/amazon/identity/auth/device/dp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/identity/auth/device/dx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/dx;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;Lcom/amazon/identity/auth/device/framework/RetryLogic;Lcom/amazon/identity/auth/device/ej;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 41
    new-instance v0, Lcom/amazon/identity/auth/device/dp;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/dp;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/dx;->la:Lcom/amazon/identity/auth/device/dp;

    .line 42
    iput-object p2, p0, Lcom/amazon/identity/auth/device/dx;->kX:Lcom/amazon/identity/auth/device/framework/RetryLogic;

    .line 44
    new-instance p1, Lcom/amazon/identity/auth/device/dw;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/dx;->la:Lcom/amazon/identity/auth/device/dp;

    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kX:Lcom/amazon/identity/auth/device/framework/RetryLogic;

    invoke-direct {p1, p2, v0, p3, p4}, Lcom/amazon/identity/auth/device/dw;-><init>(Lcom/amazon/identity/auth/device/do;Lcom/amazon/identity/auth/device/framework/RetryLogic;Lcom/amazon/identity/auth/device/ej;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    .line 47
    iput-object p3, p0, Lcom/amazon/identity/auth/device/dx;->bO:Lcom/amazon/identity/auth/device/ej;

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/dw;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->disconnect()V

    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dw;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->la:Lcom/amazon/identity/auth/device/dp;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dp;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dw;->getConnectTimeout()I

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

    .line 180
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

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

    .line 186
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/eq;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dw;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dw;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dw;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/eq;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/eq;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/identity/auth/device/eq;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/eq;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

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

    .line 257
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->la:Lcom/amazon/identity/auth/device/dp;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dp;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dw;->getIfModifiedSince()J

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

    .line 314
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dw;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->la:Lcom/amazon/identity/auth/device/dp;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dp;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->la:Lcom/amazon/identity/auth/device/dp;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dp;->getLocalPrincipal()Ljava/security/Principal;

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

    .line 53
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dw;->getOutputStream()Ljava/io/OutputStream;

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

    .line 102
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->la:Lcom/amazon/identity/auth/device/dp;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dp;->getPeerPrincipal()Ljava/security/Principal;

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

    .line 327
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dw;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dw;->getRequestMethod()Ljava/lang/String;

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

    .line 264
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dw;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/dw;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

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

    .line 132
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

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

    .line 138
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/eq;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->la:Lcom/amazon/identity/auth/device/dp;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dp;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

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

    .line 96
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->la:Lcom/amazon/identity/auth/device/dp;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dp;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dw;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dw;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/dw;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/dw;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/dw;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/dw;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/dw;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/dw;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/dw;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/dw;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->la:Lcom/amazon/identity/auth/device/dp;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/dp;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/dw;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/dw;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/dw;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/dw;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/identity/auth/device/dw;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->la:Lcom/amazon/identity/auth/device/dp;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/dp;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/dw;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dx;->kZ:Lcom/amazon/identity/auth/device/dw;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dw;->usingProxy()Z

    move-result v0

    return v0
.end method
