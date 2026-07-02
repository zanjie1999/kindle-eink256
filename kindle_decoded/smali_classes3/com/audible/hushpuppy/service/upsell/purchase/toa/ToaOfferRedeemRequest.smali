.class final Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;
.super Lcom/audible/hushpuppy/service/upsell/UpsellRequest;
.source "ToaOfferRedeemRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest$ToaRedeemHandler;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "application/json; charset="

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final associateCodeByDeviceKey:Ljava/lang/String;

.field private final builder:Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

.field private final expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

.field private final networkResponseParser:Lcom/audible/hushpuppy/service/network/INetworkResponseParser;

.field private final responseHandler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

.field private final toaRedeemCallback:Lcom/audible/hushpuppy/common/misc/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final upsellSource:Lcom/audible/hushpuppy/service/upsell/UpsellSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method protected constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/service/network/INetworkResponseParser;Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;Lcom/audible/hushpuppy/service/upsell/UpsellSource;)V
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
            "Lcom/audible/hushpuppy/service/network/INetworkResponseParser;",
            "Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;",
            "Lcom/audible/hushpuppy/service/upsell/UpsellSource;",
            ")V"
        }
    .end annotation

    .line 122
    invoke-interface {p4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p6, p1, p4}, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;-><init>(Landroid/content/Context;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/mobile/domain/Asin;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 124
    iput-object p2, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

    .line 125
    iput-object p3, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->associateCodeByDeviceKey:Ljava/lang/String;

    .line 126
    new-instance p1, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest$ToaRedeemHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest$ToaRedeemHandler;-><init>(Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest$1;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->responseHandler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    .line 127
    iput-object p5, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->toaRedeemCallback:Lcom/audible/hushpuppy/common/misc/ICallback;

    .line 128
    iput-object p7, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->networkResponseParser:Lcom/audible/hushpuppy/service/network/INetworkResponseParser;

    .line 129
    iput-object p8, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->builder:Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    .line 130
    iput-object p9, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->upsellSource:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    return-void
.end method

.method constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/service/upsell/UpsellSource;)V
    .locals 10
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

    .line 103
    invoke-static {p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Lcom/audible/hushpuppy/common/upsell/PriceData;

    invoke-static {p4}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, p4

    check-cast v4, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p5}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, p5

    check-cast v5, Lcom/audible/hushpuppy/common/misc/ICallback;

    new-instance v7, Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;

    invoke-direct {v7}, Lcom/audible/hushpuppy/service/upsell/purchase/PurchaseResponseParser;-><init>()V

    new-instance v8, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    invoke-direct {v8}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;-><init>()V

    .line 104
    invoke-static/range {p7 .. p7}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, p7

    check-cast v9, Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object/from16 v6, p6

    .line 103
    invoke-direct/range {v0 .. v9}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/PriceData;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/pfm/endpoint/INetworkEndpoints;Lcom/audible/hushpuppy/service/network/INetworkResponseParser;Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;Lcom/audible/hushpuppy/service/upsell/UpsellSource;)V

    return-void
.end method

.method static synthetic access$100()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 49
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;)Lcom/audible/hushpuppy/service/network/INetworkResponseParser;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->networkResponseParser:Lcom/audible/hushpuppy/service/network/INetworkResponseParser;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;)Lcom/audible/hushpuppy/common/misc/ICallback;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->toaRedeemCallback:Lcom/audible/hushpuppy/common/misc/ICallback;

    return-object p0
.end method

.method private reportNetworkCall(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V
    .locals 2

    .line 217
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->NetworkCall:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, p1, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method


# virtual methods
.method protected buildPostData()[B
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->builder:Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->audiobookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->addAsin(Lcom/audible/mobile/domain/Asin;)Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    .line 168
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->builder:Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->associateCodeByDeviceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->addAssociateCodeByDeviceKey(Ljava/lang/String;)Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    .line 169
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->builder:Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->addToaSource()Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    .line 170
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->builder:Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/upsell/PriceData;->getValue()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->addExpectedPrice(Ljava/math/BigDecimal;)Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    .line 172
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->builder:Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->expectedPrice:Lcom/audible/hushpuppy/common/upsell/PriceData;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/upsell/PriceData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->addCurrencyCode(Ljava/lang/String;)Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->builder:Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/service/upsell/purchase/AudiblePurchaseApiPostDataBuilder;->build()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method protected buildUrl(Lcom/audible/mobile/domain/Asin;)Ljava/net/URL;
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->endpoints:Lcom/audible/pfm/endpoint/INetworkEndpoints;

    invoke-interface {p1}, Lcom/audible/pfm/endpoint/INetworkEndpoints;->getBuyDataPath()Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public executeRequest()V
    .locals 4

    .line 143
    sget-object v0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v1, Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;->TOA:Lcom/audible/hushpuppy/common/logging/HushpuppyNetworkCategory;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Enqueuing TOA offer redeem request to KRX DownloadManager."

    invoke-interface {v0, v1, v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->network(Lcom/audible/hushpuppy/common/logging/NetworkCategory;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/UpsellRequest;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;->ToaOfferRedeem:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->reportNetworkCall(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 147
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->upsellSource:Lcom/audible/hushpuppy/service/upsell/UpsellSource;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/audible/hushpuppy/service/upsell/UpsellSource;->getToaOfferRedeemPurchaseMetricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NetworkMetricKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->reportNetworkCall(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

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

    .line 155
    iget-object v0, p0, Lcom/audible/hushpuppy/service/upsell/purchase/toa/ToaOfferRedeemRequest;->responseHandler:Lcom/amazon/kindle/krx/download/IKRXResponseHandler;

    return-object v0
.end method
