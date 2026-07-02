.class public abstract Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;
.super Ljava/lang/Object;
.source "AbstractHTTPMetricsTransport.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;
.implements Lcom/amazon/client/metrics/thirdparty/transport/TransportStateNotifier;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field protected final mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

.field protected final mFallbackTransport:Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

.field protected final mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

.field protected final mURL:Ljava/net/URL;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->validate(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;Lcom/amazon/device/utils/thirdparty/DeviceUtil;)V

    .line 61
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    .line 63
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    .line 64
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->resolveEndpoint()Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mURL:Ljava/net/URL;

    .line 65
    iput-object p4, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mFallbackTransport:Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    return-void
.end method

.method private acquireWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 5

    .line 345
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getHttpConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getWakeLockTimeout()J

    move-result-wide v0

    .line 346
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Acquiring wake lock with timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object v2

    const-string v3, "HTTPMetricsTransportWakeLock"

    invoke-virtual {v2, v3}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->createWakeLock(Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 350
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 351
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->acquireWakeLock(Landroid/os/PowerManager$WakeLock;J)V

    :cond_0
    return-object v2
.end method

.method private acquireWifiLock()Landroid/net/wifi/WifiManager$WifiLock;
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    const-string v1, "Acquiring wifi lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object v0

    const-string v1, "HTTPMetricsTransport"

    invoke-virtual {v0, v1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->acquireWifiLock(Landroid/net/wifi/WifiManager$WifiLock;)V

    return-object v0
.end method

.method private addProtobufHeaders(Ljava/net/HttpURLConnection;)V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getCodecConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;->getCodecType()Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;

    move-result-object v1

    sget-object v2, Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;->PROTOCOL_BUFFERS:Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;

    if-ne v1, v2, :cond_0

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    .line 338
    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;->getCodecType()Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x-codec-format"

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;->getCodecVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-codec-version"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private consumeInputStream(Ljava/net/HttpURLConnection;)V
    .locals 8

    const-string v0, "IOException closing response InputStream"

    const/4 v1, 0x0

    .line 294
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception v2

    .line 300
    :try_start_1
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    const-string v4, "IOException opening response InputStream"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 298
    :catch_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 305
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x400

    :try_start_2
    new-array v1, v1, [C

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v5, 0x0

    .line 312
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/Reader;->read([C)I

    move-result v6

    if-ltz v6, :cond_0

    const/4 v7, 0x4

    if-ge v5, v7, :cond_0

    .line 313
    invoke-virtual {v3, v1, p1, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response body: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v1, v2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 319
    :try_start_3
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    const-string v3, "IOException reading response InputStream"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    move-object v1, v2

    :cond_1
    if-eqz v1, :cond_2

    .line 327
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 329
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_3

    .line 327
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    .line 329
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    :cond_3
    :goto_5
    throw p1
.end method

.method private handleResponse(Ljava/net/HttpURLConnection;)Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 255
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->consumeInputStream(Ljava/net/HttpURLConnection;)V

    const/16 p1, 0x190

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, p1, :cond_0

    const/16 p1, 0x191

    if-eq v0, p1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 281
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object v1, v3, v4

    const-string v1, "Unexpected response code while uploading metrics; code: %s, message: %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    const/4 v1, 0x6

    invoke-direct {p1, v1, v0}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(II)V

    return-object p1

    .line 278
    :pswitch_0
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object v1, v3, v4

    const-string v1, "Server error while uploading metrics; code: %s, message: %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    const/4 v1, 0x4

    invoke-direct {p1, v1, v0}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(II)V

    return-object p1

    .line 262
    :pswitch_1
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object v1, v3, v4

    const-string v1, "Successfully uploaded metrics data; code: %s, message: %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    invoke-direct {p1, v4, v0}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(II)V

    return-object p1

    .line 270
    :cond_0
    :pswitch_2
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    aput-object v1, v3, v4

    const-string v1, "Client error while uploading metrics; code: %s, message: %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    const/4 v1, 0x3

    invoke-direct {p1, v1, v0}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(II)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x193
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private validate(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;Lcom/amazon/device/utils/thirdparty/DeviceUtil;)V
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    return-void

    .line 249
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DeviceUtil may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MetricsConfiguration may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected attemptTransmit([B)Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;
    .locals 9

    const-string v0, "Manually releasing wake lock"

    const-string v1, "Manually releasing wifi lock"

    if-eqz p1, :cond_1c

    .line 100
    array-length v2, p1

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->isWifiAvailable()Z

    move-result v2

    const/4 v3, 0x7

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->isEthernetAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->isWANAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    const-string v0, "Aborting metrics transmission because there is no usable connection"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    invoke-direct {p1, v3}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(I)V

    return-object p1

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getHttpConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 115
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->acquireWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v6
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$NoCredentialsException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->acquireWifiLock()Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v7
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$NoCredentialsException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :try_start_2
    iget-object v8, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mURL:Ljava/net/URL;

    invoke-virtual {p0, v8}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 120
    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getConnectTimeout()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 121
    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getConnectTimeout()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 122
    array-length v2, p1

    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/4 v2, 0x1

    .line 123
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v2, "POST"

    .line 124
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, v5}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->addProtobufHeaders(Ljava/net/HttpURLConnection;)V

    .line 130
    invoke-virtual {p0, v5}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->signRequest(Ljava/net/HttpURLConnection;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 131
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    invoke-direct {p1, v4}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(I)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$NoCredentialsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_2

    .line 158
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    .line 162
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWifiLock(Landroid/net/wifi/WifiManager$WifiLock;)V

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_4

    .line 166
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    :cond_4
    return-object p1

    .line 134
    :cond_5
    :try_start_3
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 136
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 138
    invoke-direct {p0, v5}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->handleResponse(Ljava/net/HttpURLConnection;)Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    move-result-object p1
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$NoCredentialsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v5, :cond_6

    .line 158
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 160
    :cond_6
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_7

    .line 162
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWifiLock(Landroid/net/wifi/WifiManager$WifiLock;)V

    .line 164
    :cond_7
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_8

    .line 166
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    :cond_8
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto/16 :goto_1

    :catch_2
    move-exception p1

    goto/16 :goto_2

    :catch_3
    move-exception p1

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    move-object v7, v5

    goto/16 :goto_4

    :catch_4
    move-exception p1

    move-object v7, v5

    goto :goto_0

    :catch_5
    move-exception p1

    move-object v7, v5

    goto/16 :goto_1

    :catch_6
    move-exception p1

    move-object v7, v5

    goto/16 :goto_2

    :catch_7
    move-exception p1

    move-object v7, v5

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    move-object v6, v5

    move-object v7, v6

    goto/16 :goto_4

    :catch_8
    move-exception p1

    move-object v6, v5

    move-object v7, v6

    .line 149
    :goto_0
    :try_start_4
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    const-string v4, "IOException thrown while uploading"

    invoke-static {v2, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->isConnectionRefusedError(Ljava/io/IOException;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 151
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    const-string v4, "IOException is an ECONNREFUSED. Reporting unusable connection."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v2, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    invoke-direct {v2, v3, p1}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(ILjava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_9

    .line 158
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 160
    :cond_9
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_a

    .line 162
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWifiLock(Landroid/net/wifi/WifiManager$WifiLock;)V

    .line 164
    :cond_a
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_b

    .line 166
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    :cond_b
    return-object v2

    .line 154
    :cond_c
    :try_start_5
    new-instance v2, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    const/16 v3, 0xa

    invoke-direct {v2, v3, p1}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(ILjava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_d

    .line 158
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 160
    :cond_d
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_e

    .line 162
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWifiLock(Landroid/net/wifi/WifiManager$WifiLock;)V

    .line 164
    :cond_e
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_f

    .line 166
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    :cond_f
    return-object v2

    :catch_9
    move-exception p1

    move-object v6, v5

    move-object v7, v6

    .line 146
    :goto_1
    :try_start_6
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    const-string v4, "UnknownHostException thrown while uploading"

    invoke-static {v2, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    new-instance v2, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    invoke-direct {v2, v3, p1}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(ILjava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v5, :cond_10

    .line 158
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 160
    :cond_10
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_11

    .line 162
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWifiLock(Landroid/net/wifi/WifiManager$WifiLock;)V

    .line 164
    :cond_11
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_12

    .line 166
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    :cond_12
    return-object v2

    :catch_a
    move-exception p1

    move-object v6, v5

    move-object v7, v6

    .line 143
    :goto_2
    :try_start_7
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    const-string v3, "NoCredentialsException thrown while uploading"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    new-instance v2, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    invoke-direct {v2, v4, p1}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(ILjava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v5, :cond_13

    .line 158
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 160
    :cond_13
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_14

    .line 162
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWifiLock(Landroid/net/wifi/WifiManager$WifiLock;)V

    .line 164
    :cond_14
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_15

    .line 166
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    :cond_15
    return-object v2

    :catch_b
    move-exception p1

    move-object v6, v5

    move-object v7, v6

    .line 140
    :goto_3
    :try_start_8
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    const-string v3, "SocketTimeoutException thrown while uploading"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    new-instance v2, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(ILjava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v5, :cond_16

    .line 158
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 160
    :cond_16
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_17

    .line 162
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWifiLock(Landroid/net/wifi/WifiManager$WifiLock;)V

    .line 164
    :cond_17
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_18

    .line 166
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    :cond_18
    return-object v2

    :catchall_2
    move-exception p1

    :goto_4
    if-eqz v5, :cond_19

    .line 158
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 160
    :cond_19
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1a

    .line 162
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWifiLock(Landroid/net/wifi/WifiManager$WifiLock;)V

    .line 164
    :cond_1a
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1b

    .line 166
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 168
    :cond_1b
    throw p1

    .line 101
    :cond_1c
    :goto_5
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    const-string v0, "Transmitted metricBatch cannot be null or empty"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(I)V

    return-object p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method protected isConnectionRefusedError(Ljava/io/IOException;)Z
    .locals 4

    .line 182
    instance-of v0, p1, Ljava/net/ConnectException;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 186
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 187
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 188
    instance-of v2, v0, Landroid/system/ErrnoException;

    if-eqz v2, :cond_1

    sget v2, Landroid/system/OsConstants;->ECONNREFUSED:I

    check-cast v0, Landroid/system/ErrnoException;

    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    if-ne v2, v0, :cond_1

    return v3

    .line 194
    :cond_1
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "ECONNREFUSED"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method protected isEthernetAvailable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getNetworkConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;->getNetworkTypes()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/configuration/NetworkType;->ETHERNET:Lcom/amazon/client/metrics/thirdparty/configuration/NetworkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->isEthernetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isWANAvailable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getNetworkConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;->getNetworkTypes()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/configuration/NetworkType;->WAN:Lcom/amazon/client/metrics/thirdparty/configuration/NetworkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v1}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchWANSupportedDeviceMode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/device/utils/thirdparty/DeviceUtil;->fetchDeviceMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 238
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->isWanConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method protected isWifiAvailable()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getNetworkConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;->getNetworkTypes()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/client/metrics/thirdparty/configuration/NetworkType;->WIFI:Lcom/amazon/client/metrics/thirdparty/configuration/NetworkType;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->instance(Landroid/content/Context;)Lcom/amazon/device/utils/thirdparty/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/utils/thirdparty/NetworkManager;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listenForTransportWarmed(Lcom/amazon/client/metrics/thirdparty/transport/TransportStateNotifier$TransportWarmedListener;)V
    .locals 0

    return-void
.end method

.method protected abstract openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected resolveEndpoint()Ljava/net/URL;
    .locals 4

    .line 204
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getHttpConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getUrlEndpoint()Ljava/lang/String;

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

    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed URL provided: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v3}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getHttpConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getUrlEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract signRequest(Ljava/net/HttpURLConnection;)Z
.end method

.method public transmit([B)Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;
    .locals 3

    .line 79
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->attemptTransmit([B)Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mFallbackTransport:Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->getUploadStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    const-string v1, "Attempting transmission using fallback transport"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mFallbackTransport:Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    invoke-interface {v0, p1}, Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;->transmit([B)Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    move-result-object v0

    :cond_0
    return-object v0
.end method
