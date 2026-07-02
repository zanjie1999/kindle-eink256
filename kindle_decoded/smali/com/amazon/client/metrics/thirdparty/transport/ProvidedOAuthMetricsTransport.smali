.class public Lcom/amazon/client/metrics/thirdparty/transport/ProvidedOAuthMetricsTransport;
.super Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;
.source "ProvidedOAuthMetricsTransport.java"


# instance fields
.field private final mOAuthHelper:Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;-><init>(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;)V

    .line 26
    iput-object p4, p0, Lcom/amazon/client/metrics/thirdparty/transport/ProvidedOAuthMetricsTransport;->mOAuthHelper:Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;

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

    .line 31
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method protected signRequest(Ljava/net/HttpURLConnection;)Z
    .locals 3

    const/4 v0, 0x0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/ProvidedOAuthMetricsTransport;->mOAuthHelper:Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;

    invoke-interface {v1}, Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "x-amz-access-token"

    .line 41
    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception p1

    .line 44
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    const-string v2, "Exception getting OAuth token"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
