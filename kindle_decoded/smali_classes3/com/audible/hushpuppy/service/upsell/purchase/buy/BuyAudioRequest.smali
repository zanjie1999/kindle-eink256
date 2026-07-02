.class final Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;
.super Lcom/audible/hushpuppy/service/upsell/UpsellRequest;
.source "BuyAudioRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest$BuyResponseHandler;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "application/json; charset="

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final associateCodeByDeviceKey:Ljava/lang/String;

.field private final builder:Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

.field private final buyStatusCallback:Lcom/audible/hushpuppy/common/misc/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

.field private final networkResponseParser:Lcom/audible/hushpuppy/service/network/INetworkResponseParser;

.field private final responseHandler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

.field private final upsellSource:Lcom/audible/hushpuppy/service/upsell/UpsellSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/service/upsell/UpsellSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/common/upsell/PriceData;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;",
            ">;",
            "Lcom/audible/pfm/endpoint/INetworkEndpoints;",
            "Lcom/audible/hushpuppy/service/upsell/UpsellSource;",
            ")V"
        }
    .end annotation

    .line 98
    invoke-interface {p4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p6, p1, p4}, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;-><init>(Landroid/content/Context;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/mobile/domain/Asin;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 99
    iput-object p2, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

    .line 100
    iput-object p3, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->associateCodeByDeviceKey:Ljava/lang/String;

    .line 101
    new-instance p1, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest$BuyResponseHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest$BuyResponseHandler;-><init>(Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest$1;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->responseHandler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    .line 102
    iput-object p5, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->buyStatusCallback:Lcom/audible/hushpuppy/common/misc/ICallback;

    .line 103
    iput-object p7, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->upsellSource:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    .line 104
    new-instance p1, Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;

    invoke-direct {p1}, Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->networkResponseParser:Lcom/audible/hushpuppy/service/network/INetworkResponseParser;

    .line 105
    new-instance p1, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    invoke-direct {p1}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->builder:Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    return-void
.end method

.method static synthetic access$100()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 45
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;)Lcom/audible/hushpuppy/service/network/INetworkResponseParser;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->networkResponseParser:Lcom/audible/hushpuppy/service/network/INetworkResponseParser;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->logResponseMetrics(Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;)Lcom/audible/hushpuppy/common/misc/ICallback;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->buyStatusCallback:Lcom/audible/hushpuppy/common/misc/ICallback;

    return-object p0
.end method

.method private logErrorMetricsBySource()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->upsellSource:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->getBuyAudiobookErrorMetricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->reportNetworkCall(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    :cond_0
    return-void
.end method

.method private logResponseMetrics(Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;)V
    .locals 2

    .line 158
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;->getHttpStatus()Lcom/audible/hushpuppy/common/http/HttpStatus;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/http/HttpStatus;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->BuyAudiobookSuccess:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->reportNetworkCall(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 164
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->logSuccessMetricBySource()V

    .line 167
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->TimeForTodoAfterPurchase:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/http/HttpStatus;->isServerError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->BuyAudiobookServerError_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->reportNetworkCallWithSuffix(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->logErrorMetricsBySource()V

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/http/HttpStatus;->isClientError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/http/HttpStatus;->getHttpStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;->getInternalResponseCode()Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/http/InternalResponseCode;->getMetricsMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 177
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->BuyAudiobookClientError_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->reportNetworkCallWithSuffix(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->logErrorMetricsBySource()V

    :cond_2
    :goto_0
    return-void
.end method

.method private logSuccessMetricBySource()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->upsellSource:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->getBuyAudiobookSuccessMetricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->reportNetworkCall(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    :cond_0
    return-void
.end method

.method private reportNetworkCall(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V
    .locals 2

    .line 205
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->NetworkCall:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, p1, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method

.method private reportNetworkCallWithSuffix(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;Ljava/lang/String;)V
    .locals 2

    .line 216
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->NetworkCall:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, p1, p2, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method


# virtual methods
.method protected buildPostData()[B
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->builder:Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->addAsin(Lcom/audible/mobile/domain/Asin;)Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    .line 142
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->builder:Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->associateCodeByDeviceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->addAssociateCodeByDeviceKey(Ljava/lang/String;)Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    .line 143
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->builder:Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/upsell/PriceData;->getValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->addExpectedPrice(Ljava/math/BigDecimal;)Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    .line 145
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->builder:Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/upsell/PriceData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->addCurrencyCode(Ljava/lang/String;)Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->builder:Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->build()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected buildUrl(Lcom/audible/mobile/domain/Asin;)Ljava/net/URL;
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->endpoints:Lcom/audible/pfm/endpoint/INetworkEndpoints;

    invoke-interface {p1}, Lcom/audible/pfm/endpoint/INetworkEndpoints;->getBuyDataPath()Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public executeRequest()V
    .locals 4

    .line 117
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v1, Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;->UPSELL_PURCHASE:Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Enqueuing upsell purchase request to KRX DownloadManager."

    invoke-interface {v0, v1, v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->BuyAudiobook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->reportNetworkCall(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 121
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->upsellSource:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->getBuyAudiobookPurchaseMetricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->reportNetworkCall(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method

.method protected getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json; charset="

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/buy/BuyAudioRequest;->responseHandler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    return-object v0
.end method
