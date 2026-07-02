.class public Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;
.super Ljava/lang/Object;
.source "HTTPMetricsTransport.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;
.implements Lcom/amazon/whispersync/client/metrics/transport/TransportStateNotifier;


# static fields
.field protected static final PATH:Ljava/lang/String; = "/metricsBatch"

.field private static final SERVICE_NAME:Ljava/lang/String; = "DeviceMetricsService"

.field protected static final USE_DEFAULT_TIMEOUT:I

.field protected static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private mConfiguredRequestSigner:Lamazon/whispersync/communication/authentication/RequestSigner;

.field private mContext:Landroid/content/Context;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

.field private mMetricsHttpRequestSigner:Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;

.field protected mSrrManager:Lamazon/whispersync/communication/srr/SrrManager;

.field private mStaticCredentialRequestSigner:Lamazon/whispersync/communication/authentication/RequestSigner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "HTTPMetricsTransport"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;Lcom/amazon/whispersync/device/utils/DeviceUtil;Lamazon/whispersync/communication/authentication/RequestSigner;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "Failed to create HttpClient from HttpClientFactory: "

    const-string v1, "HTTPMetricsTransport"

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 61
    iput-object v2, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 98
    :try_start_0
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    .line 100
    iput-object p4, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mConfiguredRequestSigner:Lamazon/whispersync/communication/authentication/RequestSigner;

    .line 101
    new-instance p1, Lcom/amazon/whispersync/client/metrics/transport/StaticCredentialRequestSigner;

    invoke-direct {p1, p3}, Lcom/amazon/whispersync/client/metrics/transport/StaticCredentialRequestSigner;-><init>(Lcom/amazon/whispersync/device/utils/DeviceUtil;)V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mStaticCredentialRequestSigner:Lamazon/whispersync/communication/authentication/RequestSigner;

    .line 102
    invoke-direct {p0, p2, p4}, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->createMetricsHttpRequestSigner(Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;Lamazon/whispersync/communication/authentication/RequestSigner;)Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mMetricsHttpRequestSigner:Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;

    const-string p1, "DeviceMetricsService"

    .line 103
    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/transport/HttpClientFactory;->getSecureHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 104
    new-instance p1, Lamazon/whispersync/communication/srr/HttpClientSrrManager;

    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mHttpClient:Lorg/apache/http/client/HttpClient;

    iget-object p3, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mMetricsHttpRequestSigner:Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;

    invoke-direct {p1, p2, p3}, Lamazon/whispersync/communication/srr/HttpClientSrrManager;-><init>(Lorg/apache/http/client/HttpClient;Lamazon/whispersync/communication/authentication/RequestSigner;)V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mSrrManager:Lamazon/whispersync/communication/srr/SrrManager;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 118
    sget-object p2, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    invoke-virtual {p2, v1, v0, p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 115
    sget-object p2, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    invoke-virtual {p2, v1, v0, p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 112
    sget-object p2, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    invoke-virtual {p2, v1, v0, p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 109
    sget-object p2, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    invoke-virtual {p2, v1, v0, p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    .line 106
    sget-object p2, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    invoke-virtual {p2, v1, v0, p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "requestSigner cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceUtil cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "metricsConfiguration cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private attemptToTransmit([BLcom/amazon/whispersync/client/metrics/MetricEvent;Lamazon/whispersync/communication/identity/EndpointIdentity;Z)I
    .locals 7

    const-string/jumbo v0, "transmit"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 215
    :try_start_0
    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/amazon/whispersync/device/utils/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/whispersync/device/utils/NetworkManager;

    move-result-object v4

    const-string v5, "HTTPMetricsTransportWakeLock"

    invoke-virtual {v4, v5}, Lcom/amazon/whispersync/device/utils/NetworkManager;->createWakeLock(Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4
    :try_end_0
    .catch Lamazon/whispersync/communication/MissingCredentialsException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lamazon/whispersync/communication/RequestFailedException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lamazon/whispersync/communication/TimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :try_start_1
    iget-object v5, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/amazon/whispersync/device/utils/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/whispersync/device/utils/NetworkManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/amazon/whispersync/device/utils/NetworkManager;->acquireWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 219
    iget-object v5, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/amazon/whispersync/device/utils/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/whispersync/device/utils/NetworkManager;

    move-result-object v5

    const-string v6, "HTTPMetricsTransport"

    invoke-virtual {v5, v6}, Lcom/amazon/whispersync/device/utils/NetworkManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v5, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/amazon/whispersync/device/utils/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/whispersync/device/utils/NetworkManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/amazon/whispersync/device/utils/NetworkManager;->acquireWifiLock(Landroid/net/wifi/WifiManager$WifiLock;)V

    .line 223
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->makeRequest([BLcom/amazon/whispersync/client/metrics/MetricEvent;Lamazon/whispersync/communication/identity/EndpointIdentity;)I

    move-result p1
    :try_end_1
    .catch Lamazon/whispersync/communication/MissingCredentialsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lamazon/whispersync/communication/RequestFailedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lamazon/whispersync/communication/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 249
    :goto_0
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mMetricsHttpRequestSigner:Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;

    iget-object p3, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mConfiguredRequestSigner:Lamazon/whispersync/communication/authentication/RequestSigner;

    invoke-virtual {p2, p3}, Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;->setNextRequestSigner(Lamazon/whispersync/communication/authentication/RequestSigner;)V

    .line 250
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/amazon/whispersync/device/utils/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/whispersync/device/utils/NetworkManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/amazon/whispersync/device/utils/NetworkManager;->releaseWifiLock(Landroid/net/wifi/WifiManager$WifiLock;)V

    .line 251
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/amazon/whispersync/device/utils/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/whispersync/device/utils/NetworkManager;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/amazon/whispersync/device/utils/NetworkManager;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    return p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_4

    :catch_4
    move-exception p1

    goto :goto_5

    :catch_5
    move-exception p3

    goto :goto_6

    :catchall_0
    move-exception p1

    move-object v4, v1

    goto/16 :goto_7

    :catch_6
    move-exception p1

    move-object v4, v1

    .line 246
    :goto_1
    :try_start_2
    sget-object p2, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string p3, "Exception while transmitting"

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p1, p4, v3

    invoke-virtual {p2, v0, p3, p4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x6

    goto :goto_0

    :catch_7
    move-exception p1

    move-object v4, v1

    .line 243
    :goto_2
    sget-object p2, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string p3, "TimeoutException while transmitting"

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p1, p4, v3

    invoke-virtual {p2, v0, p3, p4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x2

    goto :goto_0

    :catch_8
    move-exception p1

    move-object v4, v1

    .line 240
    :goto_3
    sget-object p2, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string p3, "IllegalAccessException while transmitting"

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p1, p4, v3

    invoke-virtual {p2, v0, p3, p4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0xb

    goto :goto_0

    :catch_9
    move-exception p1

    move-object v4, v1

    .line 237
    :goto_4
    sget-object p2, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string p3, "IOException while getting response content after transmitting"

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p1, p4, v3

    invoke-virtual {p2, v0, p3, p4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0xa

    goto :goto_0

    :catch_a
    move-exception p1

    move-object v4, v1

    .line 234
    :goto_5
    sget-object p2, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string p3, "RequestFailedException while transmitting"

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p1, p4, v3

    invoke-virtual {p2, v0, p3, p4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x9

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_b
    move-exception p3

    move-object v4, v1

    :goto_6
    if-eqz p4, :cond_1

    .line 227
    iget-object p3, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mMetricsHttpRequestSigner:Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;

    iget-object p4, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mStaticCredentialRequestSigner:Lamazon/whispersync/communication/authentication/RequestSigner;

    invoke-virtual {p3, p4}, Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;->setNextRequestSigner(Lamazon/whispersync/communication/authentication/RequestSigner;)V

    .line 228
    iget-object p3, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {p3}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getStaticCredentialEndpointIdentity()Lamazon/whispersync/communication/identity/EndpointIdentity;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->attemptToTransmit([BLcom/amazon/whispersync/client/metrics/MetricEvent;Lamazon/whispersync/communication/identity/EndpointIdentity;Z)I

    move-result p1

    goto/16 :goto_0

    .line 230
    :cond_1
    sget-object p1, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string p2, "MissingCredentialsException while transmitting"

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p3, p4, v3

    invoke-virtual {p1, v0, p2, p4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x5

    goto/16 :goto_0

    .line 249
    :goto_7
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mMetricsHttpRequestSigner:Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;

    iget-object p3, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mConfiguredRequestSigner:Lamazon/whispersync/communication/authentication/RequestSigner;

    invoke-virtual {p2, p3}, Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;->setNextRequestSigner(Lamazon/whispersync/communication/authentication/RequestSigner;)V

    .line 250
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/amazon/whispersync/device/utils/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/whispersync/device/utils/NetworkManager;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/amazon/whispersync/device/utils/NetworkManager;->releaseWifiLock(Landroid/net/wifi/WifiManager$WifiLock;)V

    .line 251
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/amazon/whispersync/device/utils/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/whispersync/device/utils/NetworkManager;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/amazon/whispersync/device/utils/NetworkManager;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    throw p1
.end method

.method private createMetricsHttpRequestSigner(Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;Lamazon/whispersync/communication/authentication/RequestSigner;)Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;
    .locals 3

    .line 129
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getCodecConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;->getCodecType()Lcom/amazon/whispersync/client/metrics/configuration/CodecType;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/client/metrics/configuration/CodecType;->PROTOCOL_BUFFERS:Lcom/amazon/whispersync/client/metrics/configuration/CodecType;

    if-ne v0, v1, :cond_0

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getCodecConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;->getCodecType()Lcom/amazon/whispersync/client/metrics/configuration/CodecType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/configuration/CodecType;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x-codec-format"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getCodecConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;->getCodecVersion()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "x-codec-version"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 137
    :goto_0
    new-instance p1, Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;

    invoke-direct {p1, v0, p2}, Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;-><init>(Ljava/util/Map;Lamazon/whispersync/communication/authentication/RequestSigner;)V

    return-object p1
.end method

.method private makeRequest([BLcom/amazon/whispersync/client/metrics/MetricEvent;Lamazon/whispersync/communication/identity/EndpointIdentity;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/MissingCredentialsException;,
            Lamazon/whispersync/communication/RequestFailedException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;,
            Lamazon/whispersync/communication/TimeoutException;
        }
    .end annotation

    .line 265
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v1, "/metricsBatch"

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 266
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 268
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 270
    new-instance p1, Lamazon/whispersync/communication/srr/SrrRequest$Builder;

    invoke-direct {p1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->setRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lamazon/whispersync/communication/srr/SrrRequest$Builder;

    invoke-virtual {p1, p3}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->setEndpointIdentity(Lamazon/whispersync/communication/identity/EndpointIdentity;)Lamazon/whispersync/communication/srr/SrrRequest$Builder;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->setTimeout(I)Lamazon/whispersync/communication/srr/SrrRequest$Builder;

    invoke-virtual {p1, p2}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->setMetricEvent(Lcom/amazon/whispersync/client/metrics/MetricEvent;)Lamazon/whispersync/communication/srr/SrrRequest$Builder;

    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mMetricsHttpRequestSigner:Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;

    invoke-virtual {p2}, Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;->getNextRequestSigner()Lamazon/whispersync/communication/authentication/RequestSigner;

    move-result-object p2

    instance-of p2, p2, Lcom/amazon/whispersync/communication/authentication/DcpRequestSigner;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sget-object p2, Lamazon/whispersync/communication/authentication/AccountRequestContext;->EMPTY_ACCOUNT:Lamazon/whispersync/communication/authentication/AccountRequestContext;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->setRequestContext(Lamazon/whispersync/communication/authentication/RequestContext;)Lamazon/whispersync/communication/srr/SrrRequest$Builder;

    invoke-virtual {p1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->build()Lamazon/whispersync/communication/srr/SrrRequest;

    move-result-object p1

    .line 279
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mSrrManager:Lamazon/whispersync/communication/srr/SrrManager;

    invoke-interface {p2, p1}, Lamazon/whispersync/communication/srr/SrrManager;->makeRequestSync(Lamazon/whispersync/communication/srr/SrrRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 283
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p2

    .line 284
    sget-object v1, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpResponse status code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, p3, [Ljava/lang/Object;

    const-string/jumbo v4, "transmit"

    invoke-virtual {v1, v4, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 288
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 290
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz p2, :cond_5

    .line 294
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_3

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_3

    .line 295
    sget-object p1, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "Succesfully transmitted Metric"

    invoke-virtual {p1, v4, p3, p2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 297
    :cond_3
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p3, 0x190

    const/16 v0, 0x1f4

    if-lt p1, p3, :cond_4

    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    if-ge p1, v0, :cond_4

    const/4 p1, 0x3

    return p1

    .line 299
    :cond_4
    invoke-interface {p2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    if-lt p1, v0, :cond_5

    const/4 p1, 0x4

    return p1

    :cond_5
    const/16 p1, 0xc

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void
.end method

.method protected isEthernetAvailable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getNetworkTypes()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/client/metrics/configuration/NetworkType;->ETHERNET:Lcom/amazon/whispersync/client/metrics/configuration/NetworkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/whispersync/device/utils/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/whispersync/device/utils/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/device/utils/NetworkManager;->isEthernetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isWanAvailable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getNetworkTypes()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/client/metrics/configuration/NetworkType;->WAN:Lcom/amazon/whispersync/client/metrics/configuration/NetworkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/whispersync/device/utils/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/whispersync/device/utils/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/device/utils/NetworkManager;->isWanConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isWifiAvailable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getNetworkTypes()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/client/metrics/configuration/NetworkType;->WIFI:Lcom/amazon/whispersync/client/metrics/configuration/NetworkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/whispersync/device/utils/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/whispersync/device/utils/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/device/utils/NetworkManager;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listenForTransportWarmed(Lcom/amazon/whispersync/client/metrics/transport/TransportStateNotifier$TransportWarmedListener;)V
    .locals 0

    return-void
.end method

.method public transmit([BLcom/amazon/whispersync/client/metrics/MetricEvent;)I
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "transmit"

    if-eqz p1, :cond_2

    .line 184
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->isWifiAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->isEthernetAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->isWanAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    sget-object p1, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Aborting metrics transmission because there is no usable connection."

    invoke-virtual {p1, v1, v0, p2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x7

    return p1

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getEndpointIdentity()Lamazon/whispersync/communication/identity/EndpointIdentity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->attemptToTransmit([BLcom/amazon/whispersync/client/metrics/MetricEvent;Lamazon/whispersync/communication/identity/EndpointIdentity;Z)I

    move-result p1

    return p1

    .line 185
    :cond_2
    :goto_0
    sget-object p1, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "Transmitted metricBatch cannot be null"

    invoke-virtual {p1, v1, v0, p2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x8

    return p1
.end method
