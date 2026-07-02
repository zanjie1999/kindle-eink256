.class abstract Lcom/amazon/device/ads/WebRequest;
.super Ljava/lang/Object;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/WebRequest$WebRequestInputStream;,
        Lcom/amazon/device/ads/WebRequest$QueryStringParameters;,
        Lcom/amazon/device/ads/WebRequest$WebRequestFactory;,
        Lcom/amazon/device/ads/WebRequest$WebRequestStatus;,
        Lcom/amazon/device/ads/WebRequest$WebRequestException;,
        Lcom/amazon/device/ads/WebRequest$WebResponse;,
        Lcom/amazon/device/ads/WebRequest$HttpMethod;
    }
.end annotation


# static fields
.field private static final CHARSET_KEY:Ljava/lang/String; = "charset"

.field private static final HEADER_ACCEPT_KEY:Ljava/lang/String; = "Accept"

.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final LOGTAG:Ljava/lang/String; = "WebRequest"


# instance fields
.field acceptContentType:Ljava/lang/String;

.field charset:Ljava/lang/String;

.field contentType:Ljava/lang/String;

.field private disconnectEnabled:Z

.field protected final headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpMethod:Lcom/amazon/device/ads/WebRequest$HttpMethod;

.field logRequestBodyEnabled:Z

.field logResponseEnabled:Z

.field logSessionIdEnabled:Z

.field private logTag:Ljava/lang/String;

.field protected logUrlEnabled:Z

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

.field private nonSecureHost:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private port:I

.field protected postParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

.field requestBody:Ljava/lang/String;

.field protected secure:Z

.field private secureHost:Ljava/lang/String;

.field protected serviceCallLatencyMetric:Lcom/amazon/device/ads/Metrics$MetricType;

.field private timeout:I

.field private urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->requestBody:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->acceptContentType:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->charset:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->urlString:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->secureHost:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->nonSecureHost:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->path:Ljava/lang/String;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/amazon/device/ads/WebRequest;->port:I

    .line 64
    sget-object v0, Lcom/amazon/device/ads/WebRequest$HttpMethod;->GET:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->httpMethod:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    const/16 v0, 0x4e20

    .line 65
    iput v0, p0, Lcom/amazon/device/ads/WebRequest;->timeout:I

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->logRequestBodyEnabled:Z

    .line 73
    iput-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->logResponseEnabled:Z

    .line 74
    iput-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->logUrlEnabled:Z

    .line 75
    iput-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->logSessionIdEnabled:Z

    .line 77
    iput-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->secure:Z

    .line 78
    sget-object v0, Lcom/amazon/device/ads/WebRequest;->LOGTAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 89
    new-instance v0, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-direct {v0}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->headers:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    .line 92
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "tlsEnabled"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 93
    iput-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->secure:Z

    .line 97
    iput-boolean v1, p0, Lcom/amazon/device/ads/WebRequest;->disconnectEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/WebRequest;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/device/ads/WebRequest;->getLogTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/WebRequest;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/amazon/device/ads/WebRequest;->disconnectEnabled:Z

    return p0
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected appendQuery(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->append(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method protected abstract closeConnection()V
.end method

.method public convertToJSONPostRequest()V
    .locals 2

    .line 105
    sget-object v0, Lcom/amazon/device/ads/WebRequest$HttpMethod;->POST:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/WebRequest;->setHttpMethod(Lcom/amazon/device/ads/WebRequest$HttpMethod;)V

    const-string v0, "Accept"

    const-string v1, "application/json"

    .line 106
    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/json; charset=UTF-8"

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected createURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 750
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract doHttpNetworkCall(Ljava/net/URL;)Lcom/amazon/device/ads/WebRequest$WebResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation
.end method

.method public enableLog(Z)V
    .locals 0

    .line 207
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/WebRequest;->enableLogUrl(Z)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/WebRequest;->enableLogRequestBody(Z)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/WebRequest;->enableLogResponse(Z)V

    return-void
.end method

.method public enableLogRequestBody(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->logRequestBodyEnabled:Z

    return-void
.end method

.method public enableLogResponse(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->logResponseEnabled:Z

    return-void
.end method

.method public enableLogSessionID(Z)V
    .locals 0

    .line 199
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->logSessionIdEnabled:Z

    return-void
.end method

.method public enableLogUrl(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->logUrlEnabled:Z

    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getUseSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->secureHost:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->nonSecureHost:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getHttpMethod()Lcom/amazon/device/ads/WebRequest$HttpMethod;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->httpMethod:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    return-object v0
.end method

.method protected getLogger()Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 420
    iget v0, p0, Lcom/amazon/device/ads/WebRequest;->port:I

    return v0
.end method

.method public getRequestBody()Ljava/lang/String;
    .locals 4

    .line 523
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getRequestBodyString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getRequestBodyString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 531
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 534
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 536
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestBodyString()Ljava/lang/String;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->requestBody:Ljava/lang/String;

    return-object v0
.end method

.method protected getScheme()Ljava/lang/String;
    .locals 1

    .line 769
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getUseSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https"

    return-object v0

    :cond_0
    const-string v0, "http"

    return-object v0
.end method

.method protected abstract getSubLogTag()Ljava/lang/String;
.end method

.method public getTimeout()I
    .locals 1

    .line 597
    iget v0, p0, Lcom/amazon/device/ads/WebRequest;->timeout:I

    return v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->urlString:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 795
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "://"

    .line 796
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, ":"

    .line 800
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 803
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/WebRequest;->appendQuery(Ljava/lang/StringBuilder;)V

    .line 805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseSecure()Z
    .locals 3

    .line 462
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/device/ads/WebRequest;->secure:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "debug.useSecure"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected logUrl(Ljava/lang/String;)V
    .locals 4

    .line 218
    iget-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->logUrlEnabled:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getHttpMethod()Lcom/amazon/device/ads/WebRequest$HttpMethod;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "%s %s"

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation

    .line 119
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "The network request should not be performed on the main thread."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->setContentTypeHeaders()V

    .line 125
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 129
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/WebRequest;->createURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 137
    iget-object v3, p0, Lcom/amazon/device/ads/WebRequest;->serviceCallLatencyMetric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/WebRequest;->writeMetricStart(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 141
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/WebRequest;->doHttpNetworkCall(Ljava/net/URL;)Lcom/amazon/device/ads/WebRequest$WebResponse;

    move-result-object v0
    :try_end_1
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    iget-object v3, p0, Lcom/amazon/device/ads/WebRequest;->serviceCallLatencyMetric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/WebRequest;->writeMetricStop(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 151
    iget-boolean v3, p0, Lcom/amazon/device/ads/WebRequest;->logResponseEnabled:Z

    if-eqz v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getHttpStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getHttpStatus()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "Response: %s %s"

    invoke-virtual {v3, v1, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 145
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->serviceCallLatencyMetric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/WebRequest;->writeMetricStop(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 150
    throw v0

    :catch_1
    move-exception v3

    .line 133
    iget-object v4, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v1, "Problem with URI syntax: %s"

    invoke-virtual {v4, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    new-instance v1, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v2, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->MALFORMED_URL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not construct URL from String "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public putHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 330
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 332
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The name must not be null or empty string."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putPostParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 292
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    .line 298
    iget-object p2, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 294
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The name must not be null or empty string."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUnencoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAdditionalQueryParamsString(Ljava/lang/String;)V
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->setRawAppendage(Ljava/lang/String;)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    return-void
.end method

.method protected setContentTypeHeaders()V
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->acceptContentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    const-string v1, "Accept"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 692
    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->charset:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; charset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->charset:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "Content-Type"

    .line 696
    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setDisconnectEnabled(Z)V
    .locals 0

    .line 668
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->disconnectEnabled:Z

    return-void
.end method

.method public setExternalLogTag(Ljava/lang/String;)V
    .locals 2

    const-string v0, " "

    if-nez p1, :cond_0

    .line 644
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/WebRequest;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getSubLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    goto :goto_0

    .line 648
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/amazon/device/ads/WebRequest;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getSubLogTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    .line 650
    :goto_0
    iget-object p1, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1

    .line 377
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->secureHost:Ljava/lang/String;

    .line 382
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->nonSecureHost:Ljava/lang/String;

    return-void

    .line 379
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The host must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHttpMethod(Lcom/amazon/device/ads/WebRequest$HttpMethod;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 357
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->httpMethod:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    return-void

    .line 355
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The httpMethod must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMetricsCollector(Lcom/amazon/device/ads/MetricsCollector;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->path:Ljava/lang/String;

    goto :goto_0

    .line 452
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->path:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setQueryStringParameters(Lcom/amazon/device/ads/WebRequest$QueryStringParameters;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    return-void
.end method

.method public setRequestBodyString(Ljava/lang/String;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->requestBody:Ljava/lang/String;

    return-void
.end method

.method public setServiceCallLatencyMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->serviceCallLatencyMetric:Lcom/amazon/device/ads/Metrics$MetricType;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 605
    iput p1, p0, Lcom/amazon/device/ads/WebRequest;->timeout:I

    return-void
.end method

.method public setUrlString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getUseSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http"

    const-string v1, "https"

    .line 485
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 487
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->urlString:Ljava/lang/String;

    return-void
.end method

.method public setUseSecure(Z)V
    .locals 0

    .line 470
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->secure:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 785
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeMetricStart(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 706
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    :cond_0
    return-void
.end method

.method protected writeMetricStop(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 718
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    :cond_0
    return-void
.end method
