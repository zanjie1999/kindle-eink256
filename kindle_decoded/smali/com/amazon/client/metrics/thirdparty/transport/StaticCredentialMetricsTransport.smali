.class public Lcom/amazon/client/metrics/thirdparty/transport/StaticCredentialMetricsTransport;
.super Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;
.source "StaticCredentialMetricsTransport.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;-><init>(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;)V

    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method protected resolveEndpoint()Ljava/net/URL;
    .locals 4

    .line 32
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getHttpConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getStaticCredentialUrlEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/metricsBatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed URL supplied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v3}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getHttpConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getStaticCredentialUrlEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method protected signRequest(Ljava/net/HttpURLConnection;)Z
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchStaticCredential()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "x-credential-token"

    .line 42
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    const-string v0, "Static token cannot be null or empty"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
