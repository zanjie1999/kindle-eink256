.class public final Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;
.super Ljava/lang/Object;
.source "AssetRequestDownloadManagerMetricEmitter.kt"

# interfaces
.implements Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;


# instance fields
.field private final contentOpenMetricsManager:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

.field private final fastMetricsClient:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private final networkService:Lcom/amazon/kindle/network/INetworkService;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V
    .locals 2

    const-string v0, "networkService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    const-string v1, "DownloadDiscoveryEntryPoints.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    const-string v1, "DownloadDiscoveryEntryPo\u2026ce().krlForDownloadFacade"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    const-string v1, "DownloadDiscoveryEntryPo\u2026contentOpenMetricsManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const-class v1, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    .line 79
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;-><init>(Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;)V
    .locals 1

    const-string v0, "networkService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentOpenMetricsManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->networkService:Lcom/amazon/kindle/network/INetworkService;

    iput-object p2, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    iput-object p3, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->contentOpenMetricsManager:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    iput-object p4, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->fastMetricsClient:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    return-void
.end method

.method public static final synthetic access$getNetworkService$p(Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;)Lcom/amazon/kindle/network/INetworkService;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->networkService:Lcom/amazon/kindle/network/INetworkService;

    return-object p0
.end method

.method private final collectCommonFastMetrics(Lcom/amazon/kindle/download/DownloadRequestTask;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter$collectCommonFastMetrics$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter$collectCommonFastMetrics$1;-><init>(Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;Lcom/amazon/kindle/download/DownloadRequestTask;)V

    return-object v0
.end method

.method private final emitFastMetrics(Lcom/amazon/kindle/download/DownloadRequestTask;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->fastMetricsClient:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-nez v0, :cond_0

    .line 168
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitterKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CANNOT DISCOVER THE FAST METRICS CLIENT"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    const-string v2, "this"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->fastMetricsClient:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    const-string v1, "ardm_successful_task_v1"

    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 175
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->collectCommonFastMetrics(Lcom/amazon/kindle/download/DownloadRequestTask;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    goto :goto_2

    .line 179
    :cond_1
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v4, -0x1

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->fastMetricsClient:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    const-string v6, "ardm_failed_task_v1"

    invoke-interface {v1, v6, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 188
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->collectCommonFastMetrics(Lcom/amazon/kindle/download/DownloadRequestTask;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "UNKNOWN"

    :goto_1
    const-string v0, "krx_error_state"

    invoke-interface {v1, v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string p1, "available_bytes_at_download_path"

    .line 190
    invoke-interface {v1, p1, v4, v5}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string v0, "addLong(KEY_DOWNLOAD_AVA\u2026LE_SPACE, availableBytes)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->fastMetricsClient:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-interface {p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    return-void
.end method

.method private final incrementContentOpenMetricCounter(Ljava/lang/String;Lcom/amazon/kindle/services/download/IDownloadRequest;)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->contentOpenMetricsManager:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    .line 199
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p2

    const-string v1, "request.bookAsset"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    .line 200
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitterKt;->access$getDOWNLOAD_CONTENT_OPEN_TYPES$p()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 198
    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->incrementCounters(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    return-void
.end method


# virtual methods
.method public final onGroupEnqueued(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)V
    .locals 5

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->contentOpenMetricsManager:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    .line 86
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitterKt;->access$getDOWNLOAD_CONTENT_OPEN_TYPES$p()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v3, "usedARDM"

    const/4 v4, 0x1

    .line 85
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->setCounters(Ljava/lang/String;ILcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 88
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isOkHttpWebRequestExecutorEnabled()Z

    move-result v1

    .line 89
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitterKt;->access$getDOWNLOAD_CONTENT_OPEN_TYPES$p()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v4, "usedOkHttpWebRequestExecutor"

    .line 87
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->setCounters(Ljava/lang/String;ILcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 91
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isHttp2Enabled()Z

    move-result v1

    .line 92
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitterKt;->access$getDOWNLOAD_CONTENT_OPEN_TYPES$p()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v4, "isHttp2Enabled"

    .line 90
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->setCounters(Ljava/lang/String;ILcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    const/4 v1, 0x0

    .line 94
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitterKt;->access$getDOWNLOAD_CONTENT_OPEN_TYPES$p()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v4, "assetsUsingHttp2Protocol"

    .line 93
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->setCounters(Ljava/lang/String;ILcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    const/4 v1, 0x4

    .line 96
    invoke-static {v1}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->getAssetRequestDownloadManagerThreadCount(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitterKt;->access$getDOWNLOAD_CONTENT_OPEN_TYPES$p()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v4, "downloadThreadCount"

    .line 95
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 99
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isARDMUsingRequiredExclusiveThreading()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitterKt;->access$getDOWNLOAD_CONTENT_OPEN_TYPES$p()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v3, "usedRequiredExclusiveThreading"

    .line 98
    invoke-virtual {v0, v3, v1, p1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    return-void
.end method

.method public onStatusUpdate(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 127
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitterKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not reporting metrics for request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with status "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, "assetPaused"

    .line 125
    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->incrementContentOpenMetricCounter(Ljava/lang/String;Lcom/amazon/kindle/services/download/IDownloadRequest;)V

    goto :goto_0

    :cond_1
    const-string p2, "assetFailed"

    .line 124
    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->incrementContentOpenMetricCounter(Ljava/lang/String;Lcom/amazon/kindle/services/download/IDownloadRequest;)V

    goto :goto_0

    .line 111
    :cond_2
    instance-of p2, p1, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;

    if-eqz p2, :cond_4

    .line 112
    move-object p2, p1

    check-cast p2, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;

    invoke-virtual {p2}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getUsedOptimalUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "assetsUsingOptimalUrl"

    .line 113
    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->incrementContentOpenMetricCounter(Ljava/lang/String;Lcom/amazon/kindle/services/download/IDownloadRequest;)V

    .line 115
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->usedHttp2Protocol()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "assetsUsingHttp2Protocol"

    .line 116
    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->incrementContentOpenMetricCounter(Ljava/lang/String;Lcom/amazon/kindle/services/download/IDownloadRequest;)V

    .line 119
    :cond_4
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p2

    const-string v0, "request.bookAsset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    if-ne p2, v0, :cond_5

    const-string p2, "requiredAssets"

    .line 120
    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->incrementContentOpenMetricCounter(Ljava/lang/String;Lcom/amazon/kindle/services/download/IDownloadRequest;)V

    :cond_5
    const-string p2, "assetSuccess"

    .line 122
    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->incrementContentOpenMetricCounter(Ljava/lang/String;Lcom/amazon/kindle/services/download/IDownloadRequest;)V

    :goto_0
    return-void
.end method

.method public onTaskComplete(Lcom/amazon/kindle/download/DownloadRequestTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->emitFastMetrics(Lcom/amazon/kindle/download/DownloadRequestTask;)V

    return-void
.end method
