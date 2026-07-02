.class public final Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;
.super Ljava/lang/Object;
.source "InstrumentedURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder$Factory;
    }
.end annotation


# instance fields
.field private mAddStandardAmazonHeaders:Z

.field private mAuthenticatedConnectionFactoryFactory:Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mBasicEstablisherFactory:Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mConnectionLoggerFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mEnforcementEstablisherFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mExternalConnectionFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ExternalConnectionFactory;

.field private mExternalEstablisherFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mIdentificationEstablisherFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

.field private mRetryEstablisherFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mStandardHeadersEstablisherFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/net/URL;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    .line 63
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->setUrl(Ljava/net/URL;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/URL;Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;-><init>(Ljava/net/URL;)V

    return-void
.end method

.method private adjustConnectionInterface(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    const-string v1, "http"

    .line 212
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/HttpsToHttpAdapter;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/HttpsToHttpAdapter;-><init>(Ljava/net/URLConnection;)V

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

    .line 217
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildEstablisherWithRequestedFunctionality(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mExternalConnectionFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ExternalConnectionFactory;

    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mExternalEstablisherFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory$Factory;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory$Factory;->create(Lcom/amazon/whispersync/dcp/framework/iuc/ExternalConnectionFactory;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithExternalConnectionFactory;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mBasicEstablisherFactory:Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher$Factory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher$Factory;->create(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Lcom/amazon/whispersync/dcp/framework/iuc/BasicConnectionEstablisher;

    move-result-object v0

    .line 246
    :goto_0
    iget-boolean v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mAddStandardAmazonHeaders:Z

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mStandardHeadersEstablisherFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders$Factory;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders$Factory;->create()Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithStandardHeaders;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->chainEstablisher(Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;

    move-result-object v0

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->getRetries()I

    move-result v1

    if-lez v1, :cond_2

    .line 253
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mRetryEstablisherFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry$Factory;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->getRetries()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry$Factory;->create(ILcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithRetry;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->chainEstablisher(Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;

    move-result-object v0

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->isWithIdentification()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 261
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection;->generateConnectionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->setIdentifier(Ljava/lang/String;)V

    .line 264
    :cond_3
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 265
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mIdentificationEstablisherFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$Factory;

    invoke-virtual {v2, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification$Factory;->create(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithIdentification;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->chainEstablisher(Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;

    move-result-object v0

    .line 268
    :cond_4
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mEnforcementEstablisherFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$Factory;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->getConnectivityWaitTimeoutMs()J

    move-result-wide v2

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v4}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->getNetworkType()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement$Factory;->create(JILcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisherWithConnectivityEnforcement;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->chainEstablisher(Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;

    move-result-object p1

    return-object p1
.end method

.method private buildWrapperWithRequestedFunctionality(Ljava/net/URLConnection;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Ljava/net/URLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->isWithCompression()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWithCompression;-><init>(Ljava/net/URL;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)V

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->chainWrapper(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;Ljava/net/URLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private chainEstablisher(Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;
    .locals 0

    .line 279
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ChainedConnectionEstablisher;->setEstablisher(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;)V

    return-object p1
.end method

.method private chainWrapper(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;Ljava/net/URLConnection;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;
    .locals 0

    .line 226
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionWrapper;->putInnerConnection(Ljava/net/URLConnection;)V

    return-object p1
.end method


# virtual methods
.method public build()Ljava/net/URLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mConnectionLoggerFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$Factory;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger$Factory;->create(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;

    move-result-object v0

    .line 181
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->buildEstablisherWithRequestedFunctionality(Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;

    move-result-object v1

    .line 183
    new-instance v2, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedConnection;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v3}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->getUrl()Ljava/net/URL;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedConnection;-><init>(Ljava/net/URL;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionEstablisher;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)V

    .line 185
    invoke-direct {p0, v2, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->buildWrapperWithRequestedFunctionality(Ljava/net/URLConnection;Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionLogger;)Ljava/net/URLConnection;

    move-result-object v0

    .line 187
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->adjustConnectionInterface(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public viaNetworkType(I)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->setNetworkType(I)V

    return-object p0
.end method

.method public withAuthMethod(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->setmWithAuthentication(Z)V

    .line 142
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mAuthenticatedConnectionFactoryFactory:Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory$Factory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory$Factory;->create(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mExternalConnectionFactory:Lcom/amazon/whispersync/dcp/framework/iuc/ExternalConnectionFactory;

    return-object p0
.end method

.method public withCompression()Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->setWithCompression(Z)V

    return-object p0
.end method

.method public withConnectivityEnforced(JLjava/util/concurrent/TimeUnit;)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->setConnectivityWaitTimeoutMs(J)V

    return-object p0
.end method

.method public withIdentifier()Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->setWithIdentification(Z)V

    return-object p0
.end method

.method public withIdentifier(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->setWithIdentification(Z)V

    .line 168
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->setIdentifier(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMetrics(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->setMetricName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withRetryLogic(I)Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mParameters:Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->setRetries(I)V

    return-object p0
.end method

.method public withStandardAmazonHeaders()Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/InstrumentedURLConnection$Builder;->mAddStandardAmazonHeaders:Z

    return-object p0
.end method
