.class final Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;
.super Lcom/audible/hushpuppy/service/upsell/UpsellRequest;
.source "GetPriceRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest$PriceResponseHandler;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "text/plain; charset="

.field private static final EMPTY_REQUEST_BODY:[B

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final priceDataCallback:Lcom/audible/hushpuppy/common/misc/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/common/upsell/PriceData;",
            ">;"
        }
    .end annotation
.end field

.field private final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final responseHandler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

.field private final responseParser:Lcom/audible/hushpuppy/service/upsell/price/IGetPriceParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->EMPTY_REQUEST_BODY:[B

    return-void
.end method

.method protected constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/service/upsell/price/IGetPriceParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/common/upsell/PriceData;",
            ">;",
            "Lcom/audible/pfm/endpoint/INetworkEndpoints;",
            "Lcom/audible/hushpuppy/service/upsell/price/IGetPriceParser;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p4, p1, p2}, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;-><init>(Landroid/content/Context;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/mobile/domain/Asin;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 48
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->requestHeaders:Ljava/util/Map;

    .line 86
    new-instance p1, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest$PriceResponseHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest$PriceResponseHandler;-><init>(Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest$1;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->responseHandler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    .line 87
    iput-object p3, p0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->priceDataCallback:Lcom/audible/hushpuppy/common/misc/ICallback;

    .line 88
    iput-object p5, p0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->responseParser:Lcom/audible/hushpuppy/service/upsell/price/IGetPriceParser;

    return-void
.end method

.method constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/common/misc/ICallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/audible/pfm/endpoint/INetworkEndpoints;",
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/common/upsell/PriceData;",
            ">;)V"
        }
    .end annotation

    .line 70
    new-instance v5, Lcom/audible/hushpuppy/service/upsell/price/GetPriceParser;

    invoke-direct {v5}, Lcom/audible/hushpuppy/service/upsell/price/GetPriceParser;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/service/upsell/price/IGetPriceParser;)V

    return-void
.end method

.method static synthetic access$100()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 37
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->onFailure()V

    return-void
.end method

.method private onFailure()V
    .locals 0

    return-void
.end method

.method private onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->responseParser:Lcom/audible/hushpuppy/service/upsell/price/IGetPriceParser;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/service/upsell/price/IGetPriceParser;->parse(Ljava/lang/String;)Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->priceDataCallback:Lcom/audible/hushpuppy/common/misc/ICallback;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/misc/ICallback;->execute(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected buildPostData()[B
    .locals 1

    .line 119
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->EMPTY_REQUEST_BODY:[B

    return-object v0
.end method

.method protected buildUrl(Lcom/audible/mobile/domain/Asin;)Ljava/net/URL;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->endpoints:Lcom/audible/pfm/endpoint/INetworkEndpoints;

    invoke-interface {v0, p1}, Lcom/audible/pfm/endpoint/INetworkEndpoints;->getPriceDataPath(Lcom/audible/mobile/domain/Asin;)Ljava/net/URL;

    move-result-object p1

    if-nez p1, :cond_0

    .line 111
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "You\'ve got null as a Get Price endpoint.  Is there something wrong with your cor/pfm?"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public executeRequest()V
    .locals 4

    .line 100
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v1, Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;->UPSELL_PRICE:Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Enqueuing upsell price request to KRX DownloadManager."

    invoke-interface {v0, v1, v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->AudiobookPrice:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->NetworkCall:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 103
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;->AudiobookPriceTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkTimerMetricKey;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method

.method protected getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "text/plain; charset="

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/price/GetPriceRequest;->responseHandler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    return-object v0
.end method
