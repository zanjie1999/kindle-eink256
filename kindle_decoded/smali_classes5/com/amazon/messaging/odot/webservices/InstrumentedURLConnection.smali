.class public Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;
.super Ljava/lang/Object;
.source "InstrumentedURLConnection.java"


# instance fields
.field private addStandardAmazonHeaders:Z

.field private context:Landroid/content/Context;

.field private externalConnectionFactory:Lcom/amazon/messaging/odot/webservices/ExternalConnectionFactory;

.field private parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->context:Landroid/content/Context;

    .line 28
    new-instance p1, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-direct {p1}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;-><init>()V

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    .line 29
    invoke-virtual {p1, p2}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->setUrl(Ljava/net/URL;)V

    return-void
.end method

.method private adjustConnectionInterface(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    const-string v1, "http"

    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    new-instance v0, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;

    invoke-direct {v0, p1}, Lcom/amazon/messaging/odot/webservices/HttpsToHttpAdapter;-><init>(Ljava/net/URLConnection;)V

    return-object v0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "<null>"

    :cond_2
    aput-object v0, p1, v1

    const-string v0, "Unsupported protocol type :%s. Http and Https are only supported"

    .line 167
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildEstablisherWithRequestedFunctionality(Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->externalConnectionFactory:Lcom/amazon/messaging/odot/webservices/ExternalConnectionFactory;

    if-eqz v0, :cond_0

    .line 185
    new-instance v1, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;

    invoke-direct {v1, v0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithExternalConnectionFactory;-><init>(Lcom/amazon/messaging/odot/webservices/ExternalConnectionFactory;Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)V

    goto :goto_0

    .line 187
    :cond_0
    new-instance v1, Lcom/amazon/messaging/odot/webservices/BasicConnectionEstablisher;

    invoke-direct {v1, p1}, Lcom/amazon/messaging/odot/webservices/BasicConnectionEstablisher;-><init>(Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)V

    .line 190
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->addStandardAmazonHeaders:Z

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;

    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithStandardHeaders;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->chainEstablisher(Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;)Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;

    move-object v1, v0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->getRetries()I

    move-result v0

    if-lez v0, :cond_2

    .line 195
    new-instance v0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;

    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    .line 196
    invoke-virtual {v2}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->getRetries()I

    move-result v2

    invoke-direct {v0, v2, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithRetry;-><init>(ILcom/amazon/messaging/odot/webservices/ConnectionLogger;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->chainEstablisher(Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;)Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;

    move-object v1, v0

    .line 199
    :cond_2
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->isWithIdentification()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 200
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 201
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-static {}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->generateConnectionID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->setIdentifier(Ljava/lang/String;)V

    .line 204
    :cond_3
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    .line 205
    new-instance v0, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithIdentification;

    invoke-direct {v0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionEstablisherWithIdentification;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->chainEstablisher(Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;)Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;

    move-object v1, v0

    :cond_4
    return-object v1
.end method

.method private buildWrapperWithRequestedFunctionality(Ljava/net/URLConnection;Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)Ljava/net/URLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->isWithCompression()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Lcom/amazon/messaging/odot/webservices/ConnectionWithCompression;

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-virtual {v1}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/amazon/messaging/odot/webservices/ConnectionWithCompression;-><init>(Ljava/net/URL;Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)V

    invoke-direct {p0, v0, p1}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->chainWrapper(Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;Ljava/net/URLConnection;)Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method private chainEstablisher(Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;)Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;
    .locals 0

    .line 212
    invoke-virtual {p1, p2}, Lcom/amazon/messaging/odot/webservices/ChainedConnectionEstablisher;->setEstablisher(Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;)V

    return-object p1
.end method

.method private chainWrapper(Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;Ljava/net/URLConnection;)Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;
    .locals 0

    .line 174
    invoke-virtual {p1, p2}, Lcom/amazon/messaging/odot/webservices/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    return-object p1
.end method

.method public static generateConnectionID()Ljava/lang/String;
    .locals 1

    .line 217
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Ljava/net/URLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-direct {v0, v1}, Lcom/amazon/messaging/odot/webservices/ConnectionLogger;-><init>(Lcom/amazon/messaging/odot/webservices/ConnectionParameters;)V

    .line 136
    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->buildEstablisherWithRequestedFunctionality(Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;

    move-result-object v1

    .line 138
    new-instance v2, Lcom/amazon/messaging/odot/webservices/InstrumentedConnection;

    iget-object v3, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-virtual {v3}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->getUrl()Ljava/net/URL;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/amazon/messaging/odot/webservices/InstrumentedConnection;-><init>(Ljava/net/URL;Lcom/amazon/messaging/odot/webservices/ConnectionEstablisher;Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)V

    .line 140
    invoke-direct {p0, v2, v0}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->buildWrapperWithRequestedFunctionality(Ljava/net/URLConnection;Lcom/amazon/messaging/odot/webservices/ConnectionLogger;)Ljava/net/URLConnection;

    move-result-object v0

    .line 142
    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->adjustConnectionInterface(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public withAuthMethod(Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;)Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->setmWithAuthentication(Z)V

    .line 101
    new-instance v0, Lcom/amazon/messaging/odot/webservices/MapR5ConnectionFactory;

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->context:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/amazon/messaging/odot/webservices/MapR5ConnectionFactory;-><init>(Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->externalConnectionFactory:Lcom/amazon/messaging/odot/webservices/ExternalConnectionFactory;

    return-object p0
.end method

.method public withCompression()Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->setWithCompression(Z)V

    return-object p0
.end method

.method public withConnectivityEnforced(JLjava/util/concurrent/TimeUnit;)Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->setConnectivityWaitTimeoutMs(J)V

    return-object p0
.end method

.method public withIdentifier()Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->setWithIdentification(Z)V

    return-object p0
.end method

.method public withMetrics(Ljava/lang/String;)Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-virtual {v0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->setMetricName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withRetryLogic(I)Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->parameters:Lcom/amazon/messaging/odot/webservices/ConnectionParameters;

    invoke-virtual {v0, p1}, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->setRetries(I)V

    return-object p0
.end method

.method public withStandardAmazonHeaders()Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;
    .locals 1

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->addStandardAmazonHeaders:Z

    return-object p0
.end method
