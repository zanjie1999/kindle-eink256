.class Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionPrototype;
.super Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;
.source "ConnectionPrototype.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionFactory;


# instance fields
.field private mChunkLength:Ljava/lang/Integer;

.field private mContentLength:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;-><init>(Ljava/net/URL;)V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionPrototype;->mChunkLength:Ljava/lang/Integer;

    .line 17
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionPrototype;->mContentLength:Ljava/lang/Integer;

    .line 23
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    return-void
.end method


# virtual methods
.method public createConnection()Ljava/net/URLConnection;
    .locals 3

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionPrototype;->populateConnectionParameters(Ljava/net/URLConnection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot open connection"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTargetURL()Ljava/net/URL;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method protected onExecutionRequested()V
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prototype should not be executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public populateConnectionParameters(Ljava/net/URLConnection;)V
    .locals 5

    .line 52
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 55
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 56
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 59
    :cond_0
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    .line 61
    move-object v0, p1

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionPrototype;->mChunkLength:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionPrototype;->mContentLength:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getInstanceFollowRedirects()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    goto :goto_0

    .line 68
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection has been already executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getAllowUserInteraction()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getConnectTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 86
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getDefaultUseCaches()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getDoInput()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getDoOutput()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getIfModifiedSince()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 90
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getReadTimeout()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 91
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getUseCaches()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setChunkedStreamingMode(I)V

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionPrototype;->mChunkLength:Ljava/lang/Integer;

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 0

    .line 113
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->setFixedLengthStreamingMode(I)V

    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionPrototype;->mContentLength:Ljava/lang/Integer;

    return-void
.end method
