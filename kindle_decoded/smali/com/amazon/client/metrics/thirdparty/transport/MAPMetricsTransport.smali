.class public Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;
.super Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;
.source "MAPMetricsTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport$MetricsMAPAccountChangeObserver;
    }
.end annotation


# instance fields
.field protected mAccountChangeObserver:Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport$MetricsMAPAccountChangeObserver;

.field protected mAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field protected mAuthFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;-><init>(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;)V

    .line 29
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    .line 30
    new-instance p1, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object p2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;->mAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    .line 31
    new-instance p1, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    iget-object p2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;->mAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;->mAuthFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    .line 32
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport$MetricsMAPAccountChangeObserver;

    invoke-direct {p1, p0}, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport$MetricsMAPAccountChangeObserver;-><init>(Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;)V

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;->mAccountChangeObserver:Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport$MetricsMAPAccountChangeObserver;

    .line 33
    iget-object p2, p0, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;->mAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {p2, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->registerAccountChangeObserver(Lcom/amazon/identity/auth/device/api/MAPAccountManager$MAPAccountChangeObserver;)V

    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getHttpConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    move-result-object v0

    .line 40
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$HttpRequestSignerType:[I

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getHttpRequestSignerType()Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    .line 50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown request signer type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getHttpRequestSignerType()Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OAUTH request signer type not supported without setting an OAuthHelper"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    goto :goto_0

    .line 42
    :cond_2
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;->mAuthFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v0

    .line 53
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->openConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public shutdown()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;->mAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;->mAccountChangeObserver:Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport$MetricsMAPAccountChangeObserver;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->deregisterAccountChangeObserver(Lcom/amazon/identity/auth/device/api/MAPAccountManager$MAPAccountChangeObserver;)V

    return-void
.end method

.method protected signRequest(Ljava/net/HttpURLConnection;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
