.class public Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection;
.super Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;
.source "CustomResponseFailedConnection.java"


# instance fields
.field private final mMessage:Ljava/lang/String;

.field private final mResponseCode:I


# direct methods
.method public constructor <init>(Ljava/net/URL;ILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;-><init>(Ljava/net/URL;)V

    .line 20
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection;->mMessage:Ljava/lang/String;

    .line 21
    iput p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection;->mResponseCode:I

    return-void
.end method


# virtual methods
.method public bridge synthetic addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public disconnect()V
    .locals 0

    return-void
.end method

.method public bridge synthetic getAllowUserInteraction()Z
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConnectTimeout()I
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getContent is not expected to be called on a failed connection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getContent is not expected to be called on a failed connection."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getContentLength is not expected to be called on a failed connection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getContentType is not expected to be called on a failed connection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getDate()J
    .locals 2

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDefaultUseCaches()Z
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDoInput()Z
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDoOutput()Z
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 2

    .line 33
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection;->mMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public bridge synthetic getExpiration()J
    .locals 2

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHeaderField(I)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 0

    .line 13
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 0

    .line 13
    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getHeaderFieldKey(I)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHeaderFields()Ljava/util/Map;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIfModifiedSince()J
    .locals 2

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getInputStream is not expected to be called on a failed connection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getInstanceFollowRedirects()Z
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getLastModified()J
    .locals 2

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getLocalPrincipal()Ljava/security/Principal;

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

    .line 87
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection$1;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection;)V

    return-object v0
.end method

.method public bridge synthetic getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReadTimeout()I
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestProperties()Ljava/util/Map;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

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

    .line 39
    iget v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection;->mResponseCode:I

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/CustomResponseFailedConnection;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getURL()Ljava/net/URL;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUseCaches()Z
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAllowUserInteraction(Z)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public bridge synthetic setChunkedStreamingMode(I)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public bridge synthetic setConnectTimeout(I)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setConnectTimeout(I)V

    return-void
.end method

.method public bridge synthetic setDefaultUseCaches(Z)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic setDoInput(Z)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setDoInput(Z)V

    return-void
.end method

.method public bridge synthetic setDoOutput(Z)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setDoOutput(Z)V

    return-void
.end method

.method public bridge synthetic setFixedLengthStreamingMode(I)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public bridge synthetic setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public bridge synthetic setIfModifiedSince(J)V
    .locals 0

    .line 13
    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setIfModifiedSince(J)V

    return-void
.end method

.method public bridge synthetic setInstanceFollowRedirects(Z)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public bridge synthetic setReadTimeout(I)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setReadTimeout(I)V

    return-void
.end method

.method public bridge synthetic setRequestMethod(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public bridge synthetic setUseCaches(Z)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic usingProxy()Z
    .locals 1

    .line 13
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->usingProxy()Z

    move-result v0

    return v0
.end method
