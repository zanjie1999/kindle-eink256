.class public final Lcom/amazon/kindle/metrics/AssetDownloadRequestMetricsEmitter;
.super Ljava/lang/Object;
.source "AssetDownloadRequestMetricsEmitter.kt"

# interfaces
.implements Lcom/amazon/kindle/metrics/IAssetDownloadRequestMetricsEmitter;


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/metrics/AssetDownloadRequestMetricsEmitter;

.field private static final krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

.field private static final readerDownloadModule:Lcom/amazon/kindle/download/IReaderDownloadModule;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/amazon/kindle/metrics/AssetDownloadRequestMetricsEmitter;

    invoke-direct {v0}, Lcom/amazon/kindle/metrics/AssetDownloadRequestMetricsEmitter;-><init>()V

    sput-object v0, Lcom/amazon/kindle/metrics/AssetDownloadRequestMetricsEmitter;->INSTANCE:Lcom/amazon/kindle/metrics/AssetDownloadRequestMetricsEmitter;

    .line 14
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    const-string v1, "DownloadDiscoveryEntryPoints.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    const-string v2, "DownloadDiscoveryEntryPo\u2026ce().krlForDownloadFacade"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/metrics/AssetDownloadRequestMetricsEmitter;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 15
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getReaderDownloadModule()Lcom/amazon/kindle/download/IReaderDownloadModule;

    move-result-object v0

    const-string v1, "DownloadDiscoveryEntryPo\u2026ce().readerDownloadModule"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/metrics/AssetDownloadRequestMetricsEmitter;->readerDownloadModule:Lcom/amazon/kindle/download/IReaderDownloadModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emitAssetDownloadMetricsPayload(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;)V
    .locals 11

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/amazon/kindle/metrics/AssetDownloadRequestMetricsEmitter;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "krlForDownloadFacade.get\u2026request.bookId) ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v1, Lcom/amazon/kindle/metrics/AssetDownloadRequestMetricsEmitter;->readerDownloadModule:Lcom/amazon/kindle/download/IReaderDownloadModule;

    invoke-interface {v1}, Lcom/amazon/kindle/download/IReaderDownloadModule;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/services/download/IDownloadService;->getDownloadGroup(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 21
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->hasMultimediaContent()Z

    move-result v0

    .line 22
    invoke-static {v0}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->getDownloadManagerDescription(Z)Ljava/lang/String;

    move-result-object v2

    .line 24
    new-instance v3, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    invoke-direct {v3}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v4

    .line 27
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v5

    const-string v6, "responseHandler"

    .line 28
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object v6

    const-string v7, "Unknown"

    if-eqz v6, :cond_0

    const-string v8, "X-Cache"

    invoke-virtual {v6, v8}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getLastValueOfHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v7

    .line 29
    :goto_0
    invoke-interface {v5}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v9, "X-Amz-Cf-Pop"

    invoke-virtual {v8, v9}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getLastValueOfHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v8, v7

    .line 32
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookId()Ljava/lang/String;

    move-result-object v9

    const-string v10, "bookId"

    invoke-virtual {v3, v10, v9}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 33
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getCorrelationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v7, v1

    :cond_2
    const-string v1, "group.correlationId ?: D\u2026dStrategy.DEFAULT_UNKNOWN"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "correlationId"

    invoke-virtual {v3, v1, v7}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 34
    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v1

    const-string v7, "asset.assetType"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/AssetType;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    const-string v7, "asset.assetType.serializedForm"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "assetType"

    invoke-virtual {v3, v7, v1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 35
    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IBookAsset;->getDeliveryType()Lcom/amazon/kindle/services/download/AssetDeliveryType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v7, "deliveryType"

    invoke-virtual {v3, v7, v1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 36
    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v7, "requirementType"

    invoke-virtual {v3, v7, v1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 37
    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IBookAsset;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v7, "asset.mimeType"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "mimeType"

    invoke-virtual {v3, v7, v1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isLuna"

    invoke-virtual {v3, v1, v0}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 39
    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getUsedOptimalUrl()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "usedOptimalUrl"

    invoke-virtual {v3, v1, v0}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    const-string v0, "downloadManagerString"

    .line 40
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManager"

    invoke-virtual {v3, v0, v2}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    const-string v0, "cache"

    .line 41
    invoke-virtual {v3, v0, v6}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    const-string v0, "lambdaEdgeLocation"

    .line 42
    invoke-virtual {v3, v0, v8}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 43
    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asset.assetId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "assetId"

    invoke-virtual {v3, v1, v0}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 44
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getRetryAttempts()I

    move-result v0

    const-string v1, "retry"

    invoke-virtual {v3, v1, v0}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 45
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->WAN:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    if-ne v0, v1, :cond_3

    const-string v0, "WAN"

    goto :goto_2

    :cond_3
    const-string v0, "WiFi"

    :goto_2
    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 48
    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v6, v2

    div-long/2addr v0, v6

    long-to-int v1, v0

    const-string v0, "assetSizeKilobytes"

    invoke-virtual {v3, v0, v1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 50
    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getExecutionCompleteTime()J

    move-result-wide v6

    div-long/2addr v0, v6

    long-to-int v1, v0

    const-string v0, "kilobytesPerSecond"

    .line 49
    invoke-virtual {v3, v0, v1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setCounter(Ljava/lang/String;I)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 51
    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getStartRequestTime()J

    move-result-wide v0

    const-string v2, "startTime"

    invoke-virtual {v3, v2, v0, v1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setTimer(Ljava/lang/String;J)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getEndRequestTime()J

    move-result-wide v0

    const-string v2, "endTime"

    invoke-virtual {v3, v2, v0, v1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setTimer(Ljava/lang/String;J)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 53
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getExecutionCompleteTime()J

    move-result-wide v0

    const-string p1, "downloadTime"

    invoke-virtual {v3, p1, v0, v1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setTimer(Ljava/lang/String;J)Lcom/amazon/kindle/metrics/DownloadMetricsPayload;

    .line 55
    instance-of p1, v5, Lcom/amazon/kindle/webservices/HasConnectionDetails;

    if-nez p1, :cond_4

    const/4 v5, 0x0

    :cond_4
    check-cast v5, Lcom/amazon/kindle/webservices/HasConnectionDetails;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lcom/amazon/kindle/webservices/HasConnectionDetails;->getConnectionDetails()Lcom/amazon/kindle/webservices/ConnectionDetails;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 56
    invoke-virtual {v3, p1}, Lcom/amazon/kindle/metrics/DownloadMetricsPayload;->setConnectionDetails(Lcom/amazon/kindle/webservices/ConnectionDetails;)V

    .line 59
    :cond_5
    sget-object p1, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->INSTANCE:Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;

    invoke-virtual {p1, v3}, Lcom/amazon/kindle/metrics/DownloadMetricsPayloadStrategy;->applyTypeSuffixOnTimers$com_amazon_kindle_dm(Lcom/amazon/kindle/metrics/DownloadMetricsPayload;)V

    const-string p1, "INDIVIDUAL_ASSET_DOWNLOAD"

    .line 60
    invoke-static {p1, v3}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->reportMetrics(Ljava/lang/String;Lcom/amazon/kindle/metrics/DownloadMetricsPayload;)V

    :cond_6
    return-void
.end method
