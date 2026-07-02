.class public Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;
.super Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;
.source "ConnectionWithBufferedOutput.java"


# instance fields
.field private mBodyProcessed:Z

.field final mBodyStream:Ljava/io/ByteArrayOutputStream;

.field private final mReceiver:Lcom/amazon/whispersync/dcp/framework/iuc/BodyReceiver;


# direct methods
.method public constructor <init>(Ljava/net/URLConnection;Lcom/amazon/whispersync/dcp/framework/iuc/BodyReceiver;)V
    .locals 1

    .line 32
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;-><init>(Ljava/net/URL;)V

    .line 17
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput$1;-><init>(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;->mBodyStream:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;->mBodyProcessed:Z

    .line 33
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    .line 34
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;->mReceiver:Lcom/amazon/whispersync/dcp/framework/iuc/BodyReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;->processBody()V

    return-void
.end method

.method private processBody()V
    .locals 2

    .line 39
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;->mBodyProcessed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;->mBodyProcessed:Z

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;->mReceiver:Lcom/amazon/whispersync/dcp/framework/iuc/BodyReceiver;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;->mBodyStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/BodyReceiver;->onBodyAvailable([B)Ljava/net/URLConnection;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
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

.method public bridge synthetic disconnect()V
    .locals 0

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->disconnect()V

    return-void
.end method

.method public bridge synthetic getAllowUserInteraction()Z
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConnectTimeout()I
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentLength()I
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getContentLength()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentType()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDate()J
    .locals 2

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDefaultUseCaches()Z
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDoInput()Z
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDoOutput()Z
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExpiration()J
    .locals 2

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHeaderField(I)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 0

    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 0

    .line 15
    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getHeaderFieldKey(I)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHeaderFields()Ljava/util/Map;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIfModifiedSince()J
    .locals 2

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInstanceFollowRedirects()Z
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getLastModified()J
    .locals 2

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .line 15
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

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;->mBodyStream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public bridge synthetic getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 15
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

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReadTimeout()I
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestProperties()Ljava/util/Map;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 15
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

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getURL()Ljava/net/URL;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUseCaches()Z
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method protected onExecutionResultsRequested()V
    .locals 0

    .line 53
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->onExecutionResultsRequested()V

    .line 54
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithBufferedOutput;->processBody()V

    return-void
.end method

.method public bridge synthetic setAllowUserInteraction(Z)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public bridge synthetic setChunkedStreamingMode(I)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public bridge synthetic setConnectTimeout(I)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setConnectTimeout(I)V

    return-void
.end method

.method public bridge synthetic setDefaultUseCaches(Z)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic setDoInput(Z)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setDoInput(Z)V

    return-void
.end method

.method public bridge synthetic setDoOutput(Z)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setDoOutput(Z)V

    return-void
.end method

.method public bridge synthetic setFixedLengthStreamingMode(I)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public bridge synthetic setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public bridge synthetic setIfModifiedSince(J)V
    .locals 0

    .line 15
    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setIfModifiedSince(J)V

    return-void
.end method

.method public bridge synthetic setInstanceFollowRedirects(Z)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public bridge synthetic setReadTimeout(I)V
    .locals 0

    .line 15
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

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public bridge synthetic setUseCaches(Z)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic usingProxy()Z
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->usingProxy()Z

    move-result v0

    return v0
.end method
