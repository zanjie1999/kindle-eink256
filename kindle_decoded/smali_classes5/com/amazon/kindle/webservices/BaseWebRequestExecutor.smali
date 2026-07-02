.class public Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;
.super Ljava/lang/Object;
.source "BaseWebRequestExecutor.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/IWebRequestExecutor;


# static fields
.field private static final CALL_AFTER_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final DEFAULT_TIMEOUT:I = 0xea60

.field private static final REQUEST_COUNT_PREFS:Ljava/lang/String; = "RequestCounts"

.field static final RETRIED_HTTP_ERROR_CODES:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final countRequestsEnabled:Z

.field private final localeManager:Lcom/amazon/kindle/services/locale/ILocaleManager;

.field private final metricsService:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private final networkController:Lcom/amazon/kindle/network/INetworkService;

.field private final sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

.field private final threadLocalLock:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;",
            ">;"
        }
    .end annotation
.end field

.field private final threadLocalWifiLockHolders:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/webservices/IWebRequest;",
            "Ljava/net/HttpURLConnection;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->CALL_AFTER_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 75
    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->RETRIED_HTTP_ERROR_CODES:[I

    .line 79
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 82
    const-class v0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1f4
        0x1f6
        0x1f7
        0x1f8
        0x194
        0x198
        0x199
        0x19d
    .end array-data
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/services/locale/ILocaleManager;Landroid/content/Context;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 98
    iput-object p2, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->networkController:Lcom/amazon/kindle/network/INetworkService;

    .line 99
    iput-object p3, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->metricsService:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 100
    iput-object p4, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->localeManager:Lcom/amazon/kindle/services/locale/ILocaleManager;

    .line 102
    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->threadLocalLock:Ljava/lang/ThreadLocal;

    .line 103
    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->threadLocalWifiLockHolders:Ljava/lang/ThreadLocal;

    .line 104
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->countRequestsEnabled:Z

    if-eqz p1, :cond_0

    .line 105
    new-instance p1, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    const/4 p2, 0x0

    const-string p3, "RequestCounts"

    invoke-direct {p1, p3, p2, p5}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    return-void
.end method

.method private acquireWifiLock(Lcom/amazon/kindle/webservices/IWebRequest;)V
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->threadLocalLock:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->threadLocalLock:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->networkController:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {v1}, Lcom/amazon/kindle/network/INetworkService;->acquireLock()Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->threadLocalWifiLockHolders:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 724
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->threadLocalWifiLockHolders:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x0

    .line 727
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private connect(Lcom/amazon/kindle/webservices/IWebRequest;I)I
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->UntaggedSocketViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;,
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->LeakedClosableViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 549
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->acquireWifiLock(Lcom/amazon/kindle/webservices/IWebRequest;)V

    .line 551
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getTimeout()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getTimeout()I

    move-result v2

    goto :goto_0

    :cond_0
    const v2, 0xea60

    .line 552
    :goto_0
    new-instance v3, Ljava/net/URL;

    .line 553
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->isAuthenticationRequired()Z

    move-result v4

    .line 552
    invoke-direct {p0, v3, v2, v4}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->createHttpURLConnection(Ljava/net/URL;IZ)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 554
    invoke-direct {p0, p1, v2}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->setLocalConnection(Lcom/amazon/kindle/webservices/IWebRequest;Ljava/net/HttpURLConnection;)V

    .line 556
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 558
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 559
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "request header: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, "X-ADP-AttemptCount"

    .line 563
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getHttpVerb()Ljava/lang/String;

    move-result-object p2

    .line 566
    invoke-virtual {v2, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "POST"

    .line 567
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PUT"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 572
    :cond_2
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 575
    new-instance p2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1

    .line 577
    :try_start_1
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPostFormData()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v3

    .line 579
    :try_start_2
    sget-object v4, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    const-string v5, "System does not support UTF-8 encoding, using the system default"

    invoke-static {v4, v5, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 580
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPostFormData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 582
    :goto_2
    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 588
    :cond_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openHTTPConnection : Response code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 592
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->handleRedirects(Lcom/amazon/kindle/webservices/IWebRequest;I)I

    move-result p1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1

    return p1

    :catch_1
    move-exception p1

    .line 608
    sget-object p2, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get response, missing method."

    invoke-static {p2, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 609
    iget-object p2, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->metricsService:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    new-instance v2, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v3, "AmazonKindle"

    const-string v4, "BaseWebRequestExecutor"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "UnsatisfiedLinkErrorInConnect"

    invoke-virtual {v2, v3, v0, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;ILjava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 611
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    const/4 v0, 0x0

    .line 612
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    .line 609
    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return v1

    :catch_2
    move-exception p1

    .line 599
    iget-object p2, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->networkController:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {p2}, Lcom/amazon/kindle/network/INetworkService;->isWifiConnected()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->networkController:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {p2}, Lcom/amazon/kindle/network/INetworkService;->isWanConnected()Z

    move-result p2

    if-nez p2, :cond_4

    const/16 v1, -0x63

    .line 601
    sget-object p1, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device network connection lost "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 603
    :cond_4
    sget-object p2, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    const-string v0, "error"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return v1

    :catch_3
    move-exception p2

    .line 595
    sget-object v0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL for IWebRequest was malformed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPrivacySafeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private createHttpURLConnection(Ljava/net/URL;IZ)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 405
    iget-object p3, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {p3}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAuthenticatedMethodFactory()Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    move-result-object p3

    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    .line 406
    invoke-virtual {p3, v0}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object p3

    .line 408
    invoke-static {p1, p3}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->openConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object p1

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 413
    :goto_0
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 414
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 419
    iget-object p2, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->localeManager:Lcom/amazon/kindle/services/locale/ILocaleManager;

    if-eqz p2, :cond_1

    .line 420
    invoke-interface {p2}, Lcom/amazon/kindle/services/locale/ILocaleManager;->getAmazonLocaleCode()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Accept-Language"

    invoke-virtual {p1, p3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method private getLocalConnection(Lcom/amazon/kindle/webservices/IWebRequest;)Ljava/net/HttpURLConnection;
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->threadLocalWifiLockHolders:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 748
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private handleRedirects(Lcom/amazon/kindle/webservices/IWebRequest;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xc8

    const/16 v3, 0xa

    if-eq p2, v2, :cond_9

    const/16 v2, 0xce

    if-eq p2, v2, :cond_9

    if-ge v1, v3, :cond_9

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x12d

    if-eq p2, v2, :cond_1

    const/16 v2, 0x12e

    if-eq p2, v2, :cond_1

    const/16 v2, 0x12f

    if-eq p2, v2, :cond_1

    const/16 v2, 0x133

    if-ne p2, v2, :cond_0

    goto :goto_1

    .line 678
    :cond_0
    sget-object p1, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    .line 631
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->getLocalConnection(Lcom/amazon/kindle/webservices/IWebRequest;)Ljava/net/HttpURLConnection;

    move-result-object v2

    const-string v3, "Location"

    .line 632
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://https://"

    const-string v5, "https://"

    .line 636
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 638
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "://"

    .line 639
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_6

    const-string v6, "/"

    .line 641
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    .line 642
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2

    .line 644
    sget-object v3, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "openHTTPConnection: wrong URL syntax"

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x3

    .line 647
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_3

    .line 649
    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 651
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const/16 v5, 0x2f

    .line 654
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-gez v5, :cond_5

    .line 656
    sget-object v3, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "openHTTPConnection: wrong URL syntax2"

    invoke-static {v3, v6}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v8

    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 659
    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 660
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 664
    :cond_6
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "openHTTPConnection : Jumping to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v3, :cond_8

    .line 668
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getTimeout()I

    move-result p2

    if-lez p2, :cond_7

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getTimeout()I

    move-result p2

    goto :goto_3

    :cond_7
    const p2, 0xea60

    .line 669
    :goto_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->isAuthenticationRequired()Z

    move-result v3

    invoke-direct {p0, v2, p2, v3}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->createHttpURLConnection(Ljava/net/URL;IZ)Ljava/net/HttpURLConnection;

    move-result-object p2

    .line 670
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->setLocalConnection(Lcom/amazon/kindle/webservices/IWebRequest;Ljava/net/HttpURLConnection;)V

    .line 671
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 676
    sget-object v2, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openHTTPConnection : Response code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 673
    :cond_8
    sget-object p1, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "openHTTPConnection : Response code was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "but we could not get the redirect URL!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_9
    if-lt v1, v3, :cond_a

    .line 683
    sget-object p1, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many attemps: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return p2
.end method

.method private handleResponseHeader(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequest;)Z
    .locals 4

    const-string v0, "Content-Range"

    .line 484
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 485
    invoke-direct {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->isWANBandwidthLimitExceededForRange(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "Content-Length"

    .line 486
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 494
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->networkController:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/network/INetworkService;->isDownloadSizeLimited(J)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 497
    iget-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->metricsService:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    new-instance p2, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v0, "AmazonKindle"

    const-string v2, "HttpWebConnectorRequest"

    invoke-direct {p2, v0, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ExceedsWANBandwidthLimitOn"

    .line 498
    invoke-virtual {p2, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p2

    .line 499
    invoke-virtual {p2, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p2

    .line 497
    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 501
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->WAN_CONTENT_DOWNLOAD_LIMIT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {p3, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    return v1

    .line 505
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 506
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Response header: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private isWANBandwidthLimitExceededForRange(Ljava/lang/String;)Z
    .locals 5

    if-eqz p1, :cond_0

    const-string v0, "[-/ ]"

    .line 521
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 523
    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 524
    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 525
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 528
    iget-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->networkController:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/network/INetworkService;->isDownloadSizeLimited(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private openConnection(Lcom/amazon/kindle/webservices/IWebRequest;)Ljava/io/InputStream;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 188
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->resetRequestState()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 195
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getRetries()I

    move-result v6

    const/4 v7, -0x1

    const/4 v0, 0x0

    const/4 v8, -0x1

    :goto_0
    const/16 v9, -0x63

    if-ltz v6, :cond_9

    if-gt v0, v6, :cond_9

    .line 198
    invoke-interface {v2, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setRetryAttempts(I)V

    .line 199
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_0

    return-object v5

    .line 201
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->isNetworkAllowedToUse()Z

    move-result v8

    if-nez v8, :cond_1

    .line 202
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {v2, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    return-object v5

    :cond_1
    add-int/lit8 v8, v0, 0x1

    .line 206
    invoke-direct {v1, v2, v8}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->connect(Lcom/amazon/kindle/webservices/IWebRequest;I)I

    move-result v10

    const-wide/16 v11, 0x64

    if-eq v10, v7, :cond_4

    if-ne v10, v9, :cond_2

    goto :goto_1

    .line 215
    :cond_2
    sget-object v13, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->RETRIED_HTTP_ERROR_CODES:[I

    invoke-static {v13, v10}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v13

    if-ltz v13, :cond_5

    .line 218
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->getLocalConnection(Lcom/amazon/kindle/webservices/IWebRequest;)Ljava/net/HttpURLConnection;

    move-result-object v13

    const-string v14, "Retry-After"

    .line 220
    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 222
    invoke-static {v13}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 223
    invoke-static {v13}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->parseCallAfterValue(Ljava/lang/String;)J

    move-result-wide v13

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v13, v15

    move/from16 v21, v8

    goto :goto_2

    :cond_3
    const-wide/16 v13, 0x5

    const-wide/16 v15, 0x3e8

    .line 230
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v17

    const-wide v19, 0x408f400000000000L    # 1000.0

    move/from16 v21, v8

    mul-double v7, v17, v19

    double-to-long v7, v7

    add-long/2addr v7, v15

    mul-long v7, v7, v13

    shl-int v13, v4, v0

    int-to-long v13, v13

    mul-long v13, v13, v7

    goto :goto_2

    :cond_4
    :goto_1
    move/from16 v21, v8

    move-wide v13, v11

    .line 240
    :goto_2
    sget-object v7, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "There was an error opening the connection to "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPrivacySafeUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", Retrying with a new connection ..."

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 240
    invoke-static {v7, v8}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->releaseWifiLockAndConnection(Lcom/amazon/kindle/webservices/IWebRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-ne v0, v6, :cond_6

    :cond_5
    move v8, v10

    goto :goto_5

    :cond_6
    const-wide/32 v7, 0x9c40

    cmp-long v0, v13, v7

    if-lez v0, :cond_7

    move-wide v11, v7

    goto :goto_3

    :cond_7
    const-wide/16 v7, 0x0

    cmp-long v0, v13, v7

    if-gez v0, :cond_8

    goto :goto_3

    :cond_8
    move-wide v11, v13

    .line 257
    :goto_3
    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v7, v0

    .line 259
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    const-string v8, "Interrupted while sleeping before retrying request"

    invoke-static {v0, v8, v7}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    move v8, v10

    move/from16 v0, v21

    const/4 v7, -0x1

    goto/16 :goto_0

    .line 264
    :cond_9
    :goto_5
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->getLocalConnection(Lcom/amazon/kindle/webservices/IWebRequest;)Ljava/net/HttpURLConnection;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v6, :cond_a

    .line 268
    :try_start_3
    sget-object v0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->FACTORY:Lcom/amazon/kindle/webservices/HttpResponseProperties$FACTORY;

    invoke-virtual {v0, v6}, Lcom/amazon/kindle/webservices/HttpResponseProperties$FACTORY;->build(Ljava/net/HttpURLConnection;)Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_1
    move-exception v0

    .line 270
    :try_start_4
    sget-object v7, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    const-string v10, "Failed to build HttpResponseProperties object due to exception: "

    invoke-static {v7, v10, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    iget-object v0, v1, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->metricsService:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    const-string v7, "HttpResponseProperties"

    invoke-interface {v0, v7}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    const-string v7, "BuildHttpResponsePropertiesFailed"

    .line 272
    invoke-virtual {v0, v7}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 273
    iget-object v7, v1, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->metricsService:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-interface {v7, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :cond_a
    move-object v0, v5

    .line 277
    :goto_6
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 279
    invoke-interface {v7, v8}, Lcom/amazon/kindle/webservices/IResponseHandler;->onHttpStatusCodeReceived(I)V

    if-eqz v0, :cond_b

    .line 281
    invoke-interface {v7, v0}, Lcom/amazon/kindle/webservices/IResponseHandler;->onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V

    :cond_b
    const/16 v0, 0xc8

    const/16 v7, 0x130

    const/16 v10, 0x193

    if-eq v8, v0, :cond_12

    const/16 v0, 0xce

    if-eq v8, v0, :cond_12

    if-eq v8, v10, :cond_12

    if-eq v8, v7, :cond_12

    .line 295
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->UNKNOWN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/16 v0, 0x190

    const/16 v7, 0x1f4

    if-lt v8, v0, :cond_c

    if-ge v8, v7, :cond_c

    .line 298
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->HTTP_CLIENT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    goto :goto_7

    :cond_c
    if-lt v8, v7, :cond_d

    .line 302
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    goto :goto_7

    :cond_d
    if-ne v8, v9, :cond_e

    .line 305
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    goto :goto_7

    .line 308
    :cond_e
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 311
    :goto_7
    invoke-interface {v2, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 313
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-string v9, ")"

    if-eqz v7, :cond_10

    .line 317
    :try_start_5
    sget-object v7, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const-string v10, "can\'t open HTTPConnection on the url: "

    if-ne v7, v0, :cond_f

    .line 318
    :try_start_6
    sget-object v7, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPrivacySafeUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (server returned status "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 318
    invoke-static {v7, v10}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->retrieveResponseHeaders(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    goto :goto_8

    .line 325
    :cond_f
    sget-object v7, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPrivacySafeUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (connection error: "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 325
    invoke-static {v7, v10}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_10
    :goto_8
    sget-object v7, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq v0, v7, :cond_11

    .line 330
    sget-object v0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "can\'t open HTTPConnection on the url (server returned status "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_17

    .line 333
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 336
    :cond_11
    sget-object v0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t open HTTPConnection on the url (No network connection available on device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_12
    if-eqz v6, :cond_17

    const-string v0, "X-ADP-Displayable-Error"

    .line 349
    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 351
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Header : X-ADP-Displayable-Error  has value "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    :cond_13
    invoke-direct/range {p0 .. p1}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->retrieveResponseHeaders(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    move-result v9

    if-eqz v9, :cond_17

    if-ne v8, v10, :cond_14

    if-eqz v0, :cond_14

    const-string/jumbo v9, "true"

    .line 357
    invoke-virtual {v0, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 358
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FORBIDDEN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {v2, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    goto :goto_9

    :cond_14
    if-ne v8, v10, :cond_15

    .line 360
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {v2, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_15
    :goto_9
    if-eq v8, v7, :cond_16

    .line 369
    :try_start_7
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :goto_a
    move-object v5, v0

    goto :goto_b

    .line 371
    :catch_2
    :try_start_8
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_a

    :cond_16
    :goto_b
    return-object v5

    :catch_3
    move-exception v0

    .line 380
    sget-object v6, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    const-string v7, "Can\'t get the inputStream from HttpConnection"

    invoke-static {v6, v7, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    iget-object v6, v1, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->metricsService:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    new-instance v7, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v8, "AmazonKindle"

    const-string v9, "HttpWebConnectorRequest"

    invoke-direct {v7, v8, v9}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v8, "HttpConnectionOpenErrorIO"

    invoke-virtual {v7, v8, v4, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;ILjava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 383
    invoke-virtual {v0, v4}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 384
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 381
    invoke-interface {v6, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 385
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {v2, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    :cond_17
    :goto_c
    return-object v5
.end method

.method public static declared-synchronized parseCallAfterValue(Ljava/lang/String;)J
    .locals 5

    const-class v0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;

    monitor-enter v0

    .line 761
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 766
    :catch_0
    :try_start_1
    sget-object v1, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->CALL_AFTER_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-wide v1

    :goto_0
    monitor-exit v0

    throw p0

    :catch_1
    const-wide/16 v1, -0x1

    .line 768
    monitor-exit v0

    return-wide v1
.end method

.method private releaseWifiLockAndConnection(Lcom/amazon/kindle/webservices/IWebRequest;)V
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->threadLocalWifiLockHolders:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 698
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    .line 700
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 703
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    iget-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->threadLocalLock:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;

    if-nez p1, :cond_2

    return-void

    .line 708
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 709
    invoke-interface {p1}, Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;->release()V

    .line 710
    iget-object p1, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->threadLocalLock:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_3
    return-void
.end method

.method private retrieveResponseHeaders(Lcom/amazon/kindle/webservices/IWebRequest;)Z
    .locals 10

    .line 436
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->getLocalConnection(Lcom/amazon/kindle/webservices/IWebRequest;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 440
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 443
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 444
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 445
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    goto :goto_0

    .line 451
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "> "

    const-string v8, ": "

    const-string v9, " <"

    if-le v6, v4, :cond_3

    .line 452
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 455
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 456
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_4

    goto :goto_0

    .line 461
    :cond_4
    invoke-direct {p0, v5, v3, p1}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->handleResponseHeader(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequest;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 468
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "REQUEST RESPONSE: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v4
.end method

.method private setLocalConnection(Lcom/amazon/kindle/webservices/IWebRequest;Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->threadLocalWifiLockHolders:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 738
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private updateTransportMethod(Lcom/amazon/kindle/webservices/IWebRequest;)V
    .locals 2

    .line 175
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->networkController:Lcom/amazon/kindle/network/INetworkService;

    invoke-static {v0}, Lcom/amazon/kindle/network/INetworkService_ExtensionsKt;->getTodoTransportMethodForCurrentNetwork(Lcom/amazon/kindle/network/INetworkService;)Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setTransportMethod(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)V

    goto :goto_0

    .line 180
    :cond_0
    sget-object v0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    const-string v1, "Cannot determine the transport method but the request went through. Assuming a WAN connection."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->WAN:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setTransportMethod(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/kindle/webservices/IWebRequest;)V
    .locals 11

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPrivacySafeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    iget-boolean v2, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->countRequestsEnabled:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    monitor-enter v2

    .line 118
    :try_start_0
    iget-object v5, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v4}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 119
    iget-object v7, p0, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->sharedPreferences:Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putLong(Ljava/lang/String;Ljava/lang/Long;)Z

    const-string v7, "Request count for url %s increase to %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 120
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPrivacySafeUrl()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 124
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->openConnection(Lcom/amazon/kindle/webservices/IWebRequest;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 127
    :try_start_1
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getStatusAndProgressTracker()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 129
    new-instance v6, Lcom/amazon/kindle/io/ProgressTrackingInputStream;

    invoke-direct {v6, v5, p1, v2}, Lcom/amazon/kindle/io/ProgressTrackingInputStream;-><init>(Ljava/util/List;Lcom/amazon/kindle/webservices/IWebRequest;Ljava/io/InputStream;)V

    move-object v2, v6

    .line 131
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 133
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/amazon/kindle/webservices/IResponseHandler;->onInputStream(Ljava/io/InputStream;)V
    :try_end_1
    .catch Lcom/amazon/kindle/webservices/ResponseHandlerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 146
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v7

    if-nez v7, :cond_3

    .line 147
    :goto_1
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 149
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->releaseWifiLockAndConnection(Lcom/amazon/kindle/webservices/IWebRequest;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 136
    :try_start_2
    sget-object v6, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->TAG:Ljava/lang/String;

    const-string v7, "error reading responses"

    invoke-static {v6, v7, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {v5}, Lcom/amazon/kindle/webservices/ResponseHandlerException;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v6

    if-nez v6, :cond_4

    .line 139
    sget-object v5, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {p1, v5}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    goto :goto_2

    .line 141
    :cond_4
    invoke-virtual {v5}, Lcom/amazon/kindle/webservices/ResponseHandlerException;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 146
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 144
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 146
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v1

    if-nez v1, :cond_5

    .line 147
    invoke-static {v2}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 149
    :cond_5
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->releaseWifiLockAndConnection(Lcom/amazon/kindle/webservices/IWebRequest;)V

    .line 150
    throw v0

    .line 155
    :cond_6
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v2

    if-nez v2, :cond_7

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 157
    sget-object v2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {p1, v2}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    goto :goto_4

    :cond_7
    move-wide v5, v3

    .line 159
    :goto_4
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->releaseWifiLockAndConnection(Lcom/amazon/kindle/webservices/IWebRequest;)V

    .line 162
    :goto_5
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;->updateTransportMethod(Lcom/amazon/kindle/webservices/IWebRequest;)V

    cmp-long v2, v5, v3

    if-nez v2, :cond_8

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    :cond_8
    sub-long/2addr v5, v0

    .line 167
    invoke-interface {p1, v5, v6}, Lcom/amazon/kindle/webservices/IWebRequest;->setExecutionCompleteTime(J)V

    return-void
.end method
