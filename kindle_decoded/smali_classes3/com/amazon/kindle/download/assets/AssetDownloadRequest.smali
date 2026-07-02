.class public final Lcom/amazon/kindle/download/assets/AssetDownloadRequest;
.super Lcom/amazon/kindle/download/FileDownloadRequest;
.source "AssetDownloadRequest.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetDownloadRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetDownloadRequest.kt\ncom/amazon/kindle/download/assets/AssetDownloadRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,399:1\n1517#2:400\n1588#2,3:401\n1690#2,3:404\n734#2:408\n825#2,2:409\n1819#2,2:411\n1819#2,2:415\n1819#2,2:417\n181#3:407\n182#3:413\n1#4:414\n*E\n*S KotlinDebug\n*F\n+ 1 AssetDownloadRequest.kt\ncom/amazon/kindle/download/assets/AssetDownloadRequest\n*L\n146#1:400\n146#1,3:401\n146#1,3:404\n208#1:408\n208#1,2:409\n210#1,2:411\n322#1,2:415\n73#1,2:417\n207#1:407\n207#1:413\n*E\n"
.end annotation


# instance fields
.field private final asset:Lcom/amazon/kindle/services/download/IBookAsset;

.field private final assetMetricsEmitter:Lcom/amazon/kindle/metrics/IAssetDownloadRequestMetricsEmitter;

.field protected final assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

.field private downloadURI:Ljava/net/URI;

.field private endRequestTime:J

.field private final internalErrorEmitter:Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;

.field private final onCompleteHooks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final readerDownloadModule:Lcom/amazon/kindle/download/IReaderDownloadModule;

.field private final requestId:Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;

.field private final responseHeaderHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/download/assets/ResponseHeaderHandler;",
            ">;"
        }
    .end annotation
.end field

.field private shouldDownloadOverWan:Z

.field private startRequestTime:J

.field private usedOptimalUrl:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/services/download/IBookAsset;Ljava/util/List;Ljava/util/List;Lcom/amazon/kindle/metrics/IAssetDownloadRequestMetricsEmitter;Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;",
            ">;",
            "Lcom/amazon/kindle/metrics/IAssetDownloadRequestMetricsEmitter;",
            "Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;",
            ")V"
        }
    .end annotation

    const-string v5, "downloadPath"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "asset"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "onCompleteHooks"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "statusTrackers"

    invoke-static {p4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "assetMetricsEmitter"

    invoke-static {p5, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "internalErrorEmitter"

    invoke-static {p6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v5

    const-string v6, "asset.filename"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v5}, Lcom/amazon/kindle/download/FileDownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->asset:Lcom/amazon/kindle/services/download/IBookAsset;

    iput-object p3, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->onCompleteHooks:Ljava/util/List;

    iput-object p5, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->assetMetricsEmitter:Lcom/amazon/kindle/metrics/IAssetDownloadRequestMetricsEmitter;

    iput-object p6, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->internalErrorEmitter:Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;

    .line 51
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getUri()Ljava/net/URI;

    move-result-object v0

    const-string v1, "bookAsset.uri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->transformUriIfNecessary(Ljava/net/URI;Z)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->downloadURI:Ljava/net/URI;

    const/4 v6, 0x1

    .line 52
    iput-boolean v6, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->shouldDownloadOverWan:Z

    .line 60
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bookAsset.assetId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->requestId:Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->responseHeaderHandlers:Ljava/util/Map;

    .line 64
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    const-string v1, "DownloadDiscoveryEntryPoints.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getReaderDownloadModule()Lcom/amazon/kindle/download/IReaderDownloadModule;

    move-result-object v0

    const-string v1, "DownloadDiscoveryEntryPo\u2026ce().readerDownloadModule"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->readerDownloadModule:Lcom/amazon/kindle/download/IReaderDownloadModule;

    .line 65
    invoke-interface {v0}, Lcom/amazon/kindle/download/IReaderDownloadModule;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v0

    const-string v1, "readerDownloadModule.assetStateManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    .line 68
    new-instance v2, Lcom/amazon/kindle/download/assets/AssetDownloadRequest$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest$1;-><init>(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;)V

    const-string v1, "Content-Type"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->registerResponseHeaderHandler$default(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZILjava/lang/Object;)V

    .line 69
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest$2;-><init>(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;)V

    const-string v1, "Hint-Sidecar-Download"

    invoke-virtual {p0, v1, v0, v6}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->registerResponseHeaderHandler(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Z)V

    .line 70
    new-instance v2, Lcom/amazon/kindle/download/assets/AssetDownloadRequest$3;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest$3;-><init>(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;)V

    const-string v1, "Hint-Apnx-Url"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->registerResponseHeaderHandler$default(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZILjava/lang/Object;)V

    .line 71
    new-instance v2, Lcom/amazon/kindle/download/assets/AssetDownloadRequest$4;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest$4;-><init>(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;)V

    const-string v1, "Content-Length"

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->registerResponseHeaderHandler$default(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZILjava/lang/Object;)V

    .line 72
    new-instance v2, Lcom/amazon/kindle/download/assets/AssetDownloadRequest$5;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest$5;-><init>(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;)V

    const-string v1, "Content-Range"

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->registerResponseHeaderHandler$default(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZILjava/lang/Object;)V

    .line 417
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    .line 73
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/download/FileDownloadRequest;->registerStatusTracker(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebRequest;

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->asset:Lcom/amazon/kindle/services/download/IBookAsset;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/services/download/AssetPriority;->toIWebRequestPriority()Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/services/download/IBookAsset;Ljava/util/List;Ljava/util/List;Lcom/amazon/kindle/metrics/IAssetDownloadRequestMetricsEmitter;Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    .line 45
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    .line 46
    sget-object p3, Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;->INSTANCE:Lcom/amazon/kindle/download/assets/AssetDownloadRequestEventEmitter;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    .line 47
    sget-object p5, Lcom/amazon/kindle/metrics/AssetDownloadRequestMetricsEmitter;->INSTANCE:Lcom/amazon/kindle/metrics/AssetDownloadRequestMetricsEmitter;

    :cond_2
    move-object v5, p5

    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    .line 48
    sget-object p6, Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;->INSTANCE:Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;

    :cond_3
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/download/IBookAsset;Ljava/util/List;Ljava/util/List;Lcom/amazon/kindle/metrics/IAssetDownloadRequestMetricsEmitter;Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;)V

    return-void
.end method

.method public static final synthetic access$handleAPNXHintHeader(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->handleAPNXHintHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$handleContentLengthHeader(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->handleContentLengthHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$handleContentRangeHeader(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->handleContentRangeHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$handleContentTypeHeader(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->handleContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$handleSidecarHintHeader(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->handleSidecarHintHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final calculateSidecarAvailability()I
    .locals 2

    .line 378
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->hasApnxSidecar()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    shl-int/2addr v0, v1

    .line 382
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->hasAnnotationSidecar()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method private final handleAPNXHintHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 287
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    .line 288
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/services/download/IBookAsset;->setHasApnxSidecar(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/services/download/IBookAsset;->setApnxUrl(Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->updateSidecarsDBField()V

    return-void
.end method

.method private final handleContentLengthHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 294
    invoke-static {p2}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->updateAssetSize(J)V

    return-void
.end method

.method private final handleContentRangeHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p2

    .line 302
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    if-eqz p2, :cond_3

    .line 303
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "*"

    invoke-static {v1, v6, v3, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown total size in the Content-Range header for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 307
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    const-wide/16 p1, -0x1

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->updateAssetSize(J)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 303
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final handleContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 238
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received mimeType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getMimeType()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 246
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_6

    .line 248
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getAsset(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 249
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getMimeType()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    if-nez v0, :cond_5

    const-string p2, "dbAsset"

    .line 250
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getMimeType()Ljava/lang/String;

    move-result-object p2

    .line 254
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/services/download/IBookAsset;->setMimeType(Ljava/lang/String;)V

    move-object p1, p2

    .line 258
    :cond_6
    iget-object p2, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isExternalSdCardFeatureEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 259
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->MAIN_CONTENT:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne p2, v0, :cond_7

    .line 260
    new-instance p2, Lcom/amazon/kindle/download/BookMetadataSerializationManager;

    iget-object v0, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-direct {p2, v0}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V

    .line 261
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->loadMetadata(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 263
    invoke-virtual {p2}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->readMimeTypeFromMetadata()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    .line 264
    invoke-virtual {p2, p1}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->serializeMimeType(Ljava/lang/String;)Z

    .line 269
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    const-string v0, "bookAsset.bookId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->setIssueDownloadingMimetype(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance p2, Lcom/amazon/kindle/download/assets/AssetStateContentValues;

    invoke-direct {p2}, Lcom/amazon/kindle/download/assets/AssetStateContentValues;-><init>()V

    .line 271
    sget-object v0, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_MIME_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {p2, v0, p1}, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->put(Lcom/amazon/kindle/download/assets/AssetField;Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, p2}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->updateAssetDAO(Lcom/amazon/kindle/download/assets/AssetStateContentValues;)Z

    return-void
.end method

.method private final handleSidecarHintHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "1"

    .line 276
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 277
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    .line 278
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/services/download/IBookAsset;->setHasAnnotationSidecar(Z)V

    goto :goto_0

    .line 280
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    .line 281
    iget-object p1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->emitEarlyAnnotationsSidecarRequestWillNotCompleteEvent(Ljava/lang/String;)V

    .line 283
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->updateSidecarsDBField()V

    return-void
.end method

.method public static synthetic registerResponseHeaderHandler$default(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 228
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->registerResponseHeaderHandler(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Z)V

    return-void
.end method

.method private final transformUriIfNecessary(Ljava/net/URI;Z)Ljava/net/URI;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne p2, v0, :cond_1

    invoke-static {p1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestUtilsKt;->appendSupportedVoucherVersions(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private final updateAssetDAO(Lcom/amazon/kindle/download/assets/AssetStateContentValues;)Z
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->updateAsset(Lcom/amazon/kindle/services/download/IBookAsset;Lcom/amazon/kindle/download/assets/AssetStateContentValues;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update the the AssetStateManger for asset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private final updateAssetSize(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/services/download/IBookAsset;->setSize(J)V

    .line 318
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetStateContentValues;

    invoke-direct {v0}, Lcom/amazon/kindle/download/assets/AssetStateContentValues;-><init>()V

    .line 319
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->TOTAL_SIZE:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->put(Lcom/amazon/kindle/download/assets/AssetField;Ljava/lang/Long;)V

    .line 320
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->updateAssetDAO(Lcom/amazon/kindle/download/assets/AssetStateContentValues;)Z

    .line 322
    invoke-virtual {p0}, Lcom/amazon/kindle/download/FileDownloadRequest;->getStatusAndProgressTracker()Ljava/util/List;

    move-result-object v0

    .line 415
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    .line 323
    invoke-interface {v1, p0, p1, p2}, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;->setMaxProgress(Lcom/amazon/kindle/webservices/IWebRequest;J)V

    goto :goto_0

    :cond_1
    return-void

    .line 313
    :cond_2
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New asset size is either unknown or matches the existing size, ignoring value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private final updateAssetTypeAndFilename(Ljava/lang/String;)V
    .locals 4

    .line 328
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetStateContentValues;

    invoke-direct {v0}, Lcom/amazon/kindle/download/assets/AssetStateContentValues;-><init>()V

    .line 330
    invoke-static {p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isMopMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 331
    invoke-static {p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isMobiMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 332
    invoke-static {p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isTopazMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 344
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyMagazineMimeType(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ".kfx"

    const-string v3, ".ast"

    if-nez v1, :cond_3

    .line 345
    invoke-static {p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyEntityMapMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 350
    :cond_1
    invoke-static {p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyEBookMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->renameExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/services/download/IBookAsset;->setFilename(Ljava/lang/String;)V

    .line 353
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_FILENAME:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->put(Lcom/amazon/kindle/download/assets/AssetField;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 356
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not updating filename or asset type for mimeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 346
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->renameExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/services/download/IBookAsset;->setFilename(Ljava/lang/String;)V

    .line 348
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_FILENAME:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->put(Lcom/amazon/kindle/download/assets/AssetField;Ljava/lang/String;)V

    goto :goto_2

    .line 333
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/download/assets/BookAsset;->buildMainFilename(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BookAsset.buildMainFilen\u2026Facade, bookAsset.bookId)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-static {p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isMopMimeType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, ".prc"

    const-string v2, ".azw4"

    .line 336
    invoke-static {v1, p1, v2}, Lcom/amazon/kindle/io/FileSystemHelper;->renameExtension(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "FileSystemHelper.renameE\u2026stemHelper.MOP_EXTENSION)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    sget-object v2, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->MAIN_CONTENT:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-interface {p1, v2}, Lcom/amazon/kindle/services/download/IBookAsset;->setAssetType(Lcom/amazon/kindle/services/download/AssetType;)V

    .line 340
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/services/download/IBookAsset;->setFilename(Ljava/lang/String;)V

    .line 341
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetField;->ASSET_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v1

    const-string v2, "bookAsset.assetType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/AssetType;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->put(Lcom/amazon/kindle/download/assets/AssetField;Ljava/lang/String;)V

    .line 342
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_FILENAME:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->put(Lcom/amazon/kindle/download/assets/AssetField;Ljava/lang/String;)V

    .line 359
    :goto_2
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->updateAssetDAO(Lcom/amazon/kindle/download/assets/AssetStateContentValues;)Z

    return-void
.end method

.method private final updateSidecarsDBField()V
    .locals 3

    .line 389
    invoke-direct {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->calculateSidecarAvailability()I

    move-result v0

    .line 390
    new-instance v1, Lcom/amazon/kindle/download/assets/AssetStateContentValues;

    invoke-direct {v1}, Lcom/amazon/kindle/download/assets/AssetStateContentValues;-><init>()V

    .line 391
    sget-object v2, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_SIDECARS:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->put(Lcom/amazon/kindle/download/assets/AssetField;Ljava/lang/Integer;)V

    .line 392
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getApnxUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    sget-object v2, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_APNX_URL:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->put(Lcom/amazon/kindle/download/assets/AssetField;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_0
    sget-object v0, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_APNX_URL:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->putNull(Lcom/amazon/kindle/download/assets/AssetField;)V

    .line 395
    :goto_0
    invoke-direct {p0, v1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->updateAssetDAO(Lcom/amazon/kindle/download/assets/AssetStateContentValues;)Z

    return-void
.end method


# virtual methods
.method public getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->asset:Lcom/amazon/kindle/services/download/IBookAsset;

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    const-string v1, "bookAsset.bookId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookAsset.bookId.serializedForm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDownloadPath()Ljava/lang/String;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/amazon/kindle/download/FileDownloadRequest;->getDownloadPath$com_amazon_kindle_dm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEndRequestTime()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->endRequestTime:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bookAsset.filename"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->requestId:Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathAndQuery()Ljava/lang/String;
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->downloadURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, "/"

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->downloadURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->downloadURI:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const-string v2, ""

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostFormData()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStartRequestTime()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->startRequestTime:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->downloadURI:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadURI.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUsedOptimalUrl()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->usedOptimalUrl:Z

    return v0
.end method

.method public isAuthenticationRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBeforeExecute()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/amazon/kindle/download/FileDownloadRequest;->onBeforeExecute()V

    .line 100
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getOptimalUri()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->shouldUseOptimalUri()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->updateDownloadUri(Ljava/net/URI;Z)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getUri()Ljava/net/URI;

    move-result-object v0

    const-string v1, "bookAsset.uri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->updateDownloadUri(Ljava/net/URI;Z)V

    .line 110
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBeforeExecute called for asset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Set the URL to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->startRequestTime:J

    return-void
.end method

.method public onRequestComplete()Z
    .locals 7

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->endRequestTime:J

    .line 116
    iget-wide v2, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->startRequestTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setExecutionCompleteTime(J)V

    .line 117
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onRequestComplete()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 118
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kindle/download/FileDownloadRequest;->getTempFile()Ljava/io/File;

    move-result-object v3

    const-string v4, "errorDescriber.internalError"

    const-string v5, "errorDescriber"

    if-eqz v0, :cond_4

    .line 122
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getInternalError()Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorContext()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 124
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_2
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->internalErrorEmitter:Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getInternalError()Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "enhancedErrorContext"

    .line 126
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    .line 125
    invoke-interface {v1, v5, v0, v4}, Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;->reportGranularAppInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 128
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download encountered an error. Setting isCompleted to false"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 131
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_7

    .line 133
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Something really went wrong in the download. The mimeType was never received for asset "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 135
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_UNKNOWN_MIMETYPE:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;)V

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->internalErrorEmitter:Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getInternalError()Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Unknown mimetype in asset download request for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    .line 136
    invoke-interface {v0, v1, v4, v5}, Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;->reportGranularAppInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)V

    goto/16 :goto_7

    .line 140
    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 141
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Temp download file exists at "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "bookAsset.mimeType"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->updateAssetTypeAndFilename(Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getDownloadPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/download/FileDownloadRequest;->renameTempFile(Ljava/io/File;)V

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->onCompleteHooks:Ljava/util/List;

    .line 400
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 401
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 402
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 146
    invoke-interface {v5, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 404
    :cond_8
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6

    .line 405
    :cond_9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v1, 0x0

    :cond_b
    :goto_6
    move v2, v1

    goto :goto_7

    .line 149
    :cond_c
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloaded file does not exist at path "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 119
    :goto_7
    invoke-virtual {p0, v2}, Lcom/amazon/kindle/download/FileDownloadRequest;->setIsCompleted(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/amazon/kindle/download/FileDownloadRequest;->getIsCompleted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/download/FileDownloadRequest;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->deleteFile(Ljava/lang/String;)Z

    .line 162
    :cond_d
    invoke-virtual {p0}, Lcom/amazon/kindle/download/FileDownloadRequest;->getIsCompleted()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->startRequestTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    iget-wide v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->endRequestTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->assetMetricsEmitter:Lcom/amazon/kindle/metrics/IAssetDownloadRequestMetricsEmitter;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/metrics/IAssetDownloadRequestMetricsEmitter;->emitAssetDownloadMetricsPayload(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;)V

    .line 166
    :cond_e
    invoke-virtual {p0}, Lcom/amazon/kindle/download/FileDownloadRequest;->getIsCompleted()Z

    move-result v0

    return v0
.end method

.method public final onResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V
    .locals 9

    const-string v0, "responseProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for asset id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->responseHeaderHandlers:Ljava/util/Map;

    .line 407
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/download/assets/ResponseHeaderHandler;

    .line 208
    invoke-virtual {p1, v2}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getHeaderValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 408
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 409
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 209
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_4

    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/ResponseHeaderHandler;->getAllowEmptyHeaderValue()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :cond_4
    :goto_2
    if-eqz v7, :cond_1

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 411
    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 211
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found registered handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for header "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/ResponseHeaderHandler;->getHandler()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-interface {v5, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final registerResponseHeaderHandler(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/amazon/kindle/download/assets/ResponseHeaderHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kindle/download/assets/ResponseHeaderHandler;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Z)V

    .line 230
    iget-object p3, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->responseHeaderHandlers:Ljava/util/Map;

    monitor-enter p3

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->responseHeaderHandlers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/download/assets/ResponseHeaderHandler;

    if-eqz p1, :cond_0

    .line 232
    invoke-static {}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Replacing response header handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3

    throw p1
.end method

.method public setId(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 0

    return-object p0
.end method

.method public setShouldDownloadOverWan(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->shouldDownloadOverWan:Z

    return-void
.end method

.method public shouldDownloadOverWan()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->shouldDownloadOverWan:Z

    return v0
.end method

.method public shouldReportProgressToLauncher()Z
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final updateDownloadUri(Ljava/net/URI;Z)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->transformUriIfNecessary(Ljava/net/URI;Z)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->downloadURI:Ljava/net/URI;

    .line 183
    iput-boolean p2, p0, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;->usedOptimalUrl:Z

    return-void
.end method

.method public final usedHttp2Protocol()Z
    .locals 4

    const/4 v0, 0x0

    .line 188
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kindle/webservices/HasConnectionDetails;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Lcom/amazon/kindle/webservices/HasConnectionDetails;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/HasConnectionDetails;->getConnectionDetails()Lcom/amazon/kindle/webservices/ConnectionDetails;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getHttpProtocol()Lokhttp3/Protocol;

    move-result-object v3

    :cond_1
    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v1, :cond_2

    const/4 v0, 0x1

    :catch_0
    :cond_2
    return v0
.end method
