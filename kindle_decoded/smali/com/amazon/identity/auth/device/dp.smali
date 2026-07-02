.class public Lcom/amazon/identity/auth/device/dp;
.super Lcom/amazon/identity/auth/device/do;
.source "DCP"


# instance fields
.field private final jU:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/do;-><init>(Ljava/net/URL;)V

    .line 23
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/do;->cT()Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 24
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/dp;->jU:Ljavax/net/ssl/HttpsURLConnection;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "url must be https"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-super {p0, p1, p2}, Lcom/amazon/identity/auth/device/do;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected c(Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/do;->c(Ljava/net/HttpURLConnection;)V

    .line 83
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 90
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dp;->jU:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 91
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dp;->jU:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public bridge synthetic getAllowUserInteraction()Z
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/identity/auth/device/do;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dp;->jU:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConnectTimeout()I
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/identity/auth/device/do;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultUseCaches()Z
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/identity/auth/device/do;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDoInput()Z
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/identity/auth/device/do;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDoOutput()Z
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/identity/auth/device/do;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dp;->jU:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIfModifiedSince()J
    .locals 2

    .line 15
    invoke-super {p0}, Lcom/amazon/identity/auth/device/do;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getInstanceFollowRedirects()Z
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/identity/auth/device/do;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dp;->jU:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dp;->jU:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/identity/auth/device/do;->getOutputStream()Ljava/io/OutputStream;

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

    .line 70
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dp;->jU:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReadTimeout()I
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/identity/auth/device/do;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/identity/auth/device/do;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestProperties()Ljava/util/Map;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/identity/auth/device/do;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/do;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dp;->jU:Ljavax/net/ssl/HttpsURLConnection;

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

    .line 65
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dp;->jU:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getURL()Ljava/net/URL;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/identity/auth/device/do;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUseCaches()Z
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/identity/auth/device/do;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAllowUserInteraction(Z)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/do;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public bridge synthetic setChunkedStreamingMode(I)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/do;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public bridge synthetic setConnectTimeout(I)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/do;->setConnectTimeout(I)V

    return-void
.end method

.method public bridge synthetic setDefaultUseCaches(Z)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/do;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic setDoInput(Z)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/do;->setDoInput(Z)V

    return-void
.end method

.method public bridge synthetic setDoOutput(Z)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/do;->setDoOutput(Z)V

    return-void
.end method

.method public bridge synthetic setFixedLengthStreamingMode(J)V
    .locals 0

    .line 15
    invoke-super {p0, p1, p2}, Lcom/amazon/identity/auth/device/do;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dp;->jU:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public bridge synthetic setIfModifiedSince(J)V
    .locals 0

    .line 15
    invoke-super {p0, p1, p2}, Lcom/amazon/identity/auth/device/do;->setIfModifiedSince(J)V

    return-void
.end method

.method public bridge synthetic setInstanceFollowRedirects(Z)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/do;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public bridge synthetic setReadTimeout(I)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/do;->setReadTimeout(I)V

    return-void
.end method

.method public bridge synthetic setRequestMethod(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/do;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-super {p0, p1, p2}, Lcom/amazon/identity/auth/device/do;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dp;->jU:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public bridge synthetic setUseCaches(Z)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/identity/auth/device/do;->setUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/identity/auth/device/do;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic usingProxy()Z
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/identity/auth/device/do;->usingProxy()Z

    move-result v0

    return v0
.end method
