.class Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;
.super Ljava/lang/Object;
.source "ViewabilityJavascriptFetcher.java"


# static fields
.field private static final CDN_URL:Ljava/lang/String; = "https://dwxjayoxbnyrr.cloudfront.net/amazon-ads.viewablejs"

.field private static final LOGTAG:Ljava/lang/String; = "ViewabilityJavascriptFetcher"

.field private static instance:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;


# instance fields
.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private currentJSVersion:I

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final metrics:Lcom/amazon/device/ads/Metrics;

.field private final permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

.field private final settings:Lcom/amazon/device/ads/Settings;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private final webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    invoke-direct {v0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->instance:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 10

    .line 42
    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v2, Lcom/amazon/device/ads/PermissionChecker;

    invoke-direct {v2}, Lcom/amazon/device/ads/PermissionChecker;-><init>()V

    .line 44
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v3

    .line 45
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v4

    new-instance v5, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-direct {v5}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;-><init>()V

    .line 47
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v6

    .line 48
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v7

    .line 49
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v8

    .line 50
    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v9

    move-object v0, p0

    .line 42
    invoke-direct/range {v0 .. v9}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/Metrics;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Configuration;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 64
    iput-object p2, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    .line 65
    iput-object p3, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 66
    iput-object p4, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->settings:Lcom/amazon/device/ads/Settings;

    .line 67
    iput-object p5, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    .line 68
    iput-object p6, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->metrics:Lcom/amazon/device/ads/Metrics;

    .line 69
    iput-object p7, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 70
    iput-object p8, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 71
    iput-object p9, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->configuration:Lcom/amazon/device/ads/Configuration;

    return-void
.end method

.method private onFetchFailure()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->metrics:Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->CDN_JAVASCRIPT_DOWNLOAD_FAILED:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 186
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Viewability Javascript fetch failed"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method private shouldFetch()Z
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v1, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_JS_VERSION_CONFIG:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Configuration;->getInt(Lcom/amazon/device/ads/Configuration$ConfigOption;)I

    move-result v0

    iput v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->currentJSVersion:I

    .line 85
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->settings:Lcom/amazon/device/ads/Settings;

    const-string/jumbo v1, "viewableJSVersionStored"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->currentJSVersion:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->settings:Lcom/amazon/device/ads/Settings;

    const/4 v1, 0x0

    const-string/jumbo v3, "viewableJSSettingsNameAmazonAdSDK"

    invoke-virtual {v0, v3, v1}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected beginFetch()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    new-instance v1, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher$1;-><init>(Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->BACKGROUND_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    return-void
.end method

.method protected createWebRequest()Lcom/amazon/device/ads/WebRequest;
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 174
    sget-object v1, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setExternalLogTag(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 175
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    .line 176
    iget-object v2, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->configuration:Lcom/amazon/device/ads/Configuration;

    sget-object v3, Lcom/amazon/device/ads/Configuration$ConfigOption;->VIEWABLE_JAVASCRIPT_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    const-string v4, "https://dwxjayoxbnyrr.cloudfront.net/amazon-ads.viewablejs"

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/Configuration;->getStringWithDefault(Lcom/amazon/device/ads/Configuration$ConfigOption;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/WebRequest;->setUrlString(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->metrics:Lcom/amazon/device/ads/Metrics;

    invoke-virtual {v2}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/WebRequest;->setMetricsCollector(Lcom/amazon/device/ads/MetricsCollector;)V

    .line 178
    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->CDN_JAVASCRIPT_DOWLOAD_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/WebRequest;->setServiceCallLatencyMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 179
    iget-object v2, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "debug.aaxConfigUseSecure"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->setUseSecure(Z)V

    return-object v0
.end method

.method public fetchJavascript()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->shouldFetch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->beginFetch()V

    :cond_0
    return-void
.end method

.method public fetchJavascriptFromURLOnBackgroundThread()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "In ViewabilityJavascriptFetcher background thread"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 129
    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/PermissionChecker;->hasInternetPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Network task cannot commence because the INTERNET permission is missing from the app\'s manifest."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->onFetchFailure()V

    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    if-nez v0, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->onFetchFailure()V

    return-void

    .line 148
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResponseReader;->readAsString()Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->settings:Lcom/amazon/device/ads/Settings;

    const-string/jumbo v2, "viewableJSSettingsNameAmazonAdSDK"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/Settings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->settings:Lcom/amazon/device/ads/Settings;

    iget v1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->currentJSVersion:I

    const-string/jumbo v2, "viewableJSVersionStored"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/Settings;->putInt(Ljava/lang/String;I)V

    .line 164
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Viewability Javascript fetched and saved"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return-void

    .line 152
    :catch_0
    invoke-direct {p0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->onFetchFailure()V

    return-void
.end method
