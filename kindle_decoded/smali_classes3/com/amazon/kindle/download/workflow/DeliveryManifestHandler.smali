.class public final Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;
.super Ljava/lang/Object;
.source "DeliveryManifestHandler.kt"

# interfaces
.implements Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;
.implements Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeliveryManifestHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeliveryManifestHandler.kt\ncom/amazon/kindle/download/workflow/DeliveryManifestHandler\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,406:1\n181#2,2:407\n1#3:409\n734#4:410\n825#4,2:411\n1517#4:413\n1588#4,3:414\n*E\n*S KotlinDebug\n*F\n+ 1 DeliveryManifestHandler.kt\ncom/amazon/kindle/download/workflow/DeliveryManifestHandler\n*L\n157#1,2:407\n280#1:410\n280#1,2:411\n280#1:413\n280#1,3:414\n*E\n"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final appInternalErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;

.field private final assetGroupFactory$delegate:Lkotlin/Lazy;

.field private assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

.field private final downloadGroupFactory:Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;

.field private final downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

.field private final krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

.field private final manifestDownloadMetricsEmitter:Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

.field private final manifestDownloader:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

.field private final manifestSerializer:Lcom/amazon/kindle/download/manifest/ManifestSerializer;

.field private final preconditionErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    const-class v0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Lcom/amazon/kindle/download/manifest/ManifestSerializer;Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;Lcom/amazon/kindle/download/assets/IAssetStateManager;)V
    .locals 11

    const-string v0, "facade"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManager"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestSerializer"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestDownloader"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetStateManager"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v7, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;->INSTANCE:Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;

    sget-object v8, Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;->INSTANCE:Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;

    sget-object v9, Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;->INSTANCE:Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;

    sget-object v10, Lcom/amazon/kindle/download/factory/DownloadRequestGroupFactory;->INSTANCE:Lcom/amazon/kindle/download/factory/DownloadRequestGroupFactory;

    move-object v1, p0

    .line 74
    invoke-direct/range {v1 .. v10}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Lcom/amazon/kindle/download/manifest/ManifestSerializer;Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Lcom/amazon/kindle/download/manifest/ManifestSerializer;Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;)V
    .locals 1

    const-string v0, "krlDownloadFacade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestSerializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestDownloader"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetStateManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestDownloadMetricsEmitter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInternalErrorGranularDetailMetricsEmitter"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preconditionErrorGranularDetailMetricsEmitter"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadGroupFactory"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iput-object p2, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    iput-object p3, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->manifestSerializer:Lcom/amazon/kindle/download/manifest/ManifestSerializer;

    iput-object p4, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->manifestDownloader:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

    iput-object p5, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    iput-object p6, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->manifestDownloadMetricsEmitter:Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    iput-object p7, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->appInternalErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;

    iput-object p8, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->preconditionErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;

    iput-object p9, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->downloadGroupFactory:Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;

    .line 81
    new-instance p1, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$assetGroupFactory$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$assetGroupFactory$2;-><init>(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->assetGroupFactory$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDownloadGroupFactory$p(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;)Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->downloadGroupFactory:Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;

    return-object p0
.end method

.method public static final synthetic access$getKrlDownloadFacade$p(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;)Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final downloadContentWithoutToad(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->downloadGroupFactory:Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;

    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;->createNonToadDownloadRequestGroup(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->handleNonManifestDownload$com_amazon_kindle_dm(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V

    return-void
.end method

.method private final getAssetGroupFactory()Lcom/amazon/kindle/services/download/IAssetGroupFactory;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->assetGroupFactory$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IAssetGroupFactory;

    return-object v0
.end method

.method private final handleManifestFailure(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V
    .locals 4

    .line 396
    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v0

    .line 397
    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getDownloadTracker()Lcom/amazon/kindle/services/download/IDownloadTracker;

    move-result-object p1

    .line 398
    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->ERROR:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    const/4 v2, 0x0

    invoke-interface {p1, v1, p2, v2}, Lcom/amazon/kindle/services/download/IDownloadTracker;->reportState(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Ljava/lang/String;)V

    .line 399
    iget-object p1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object p1

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->removeMetrics(Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 400
    invoke-interface {p2}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getInternalError()Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 401
    iget-object p1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->appInternalErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;

    invoke-interface {p2}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getInternalError()Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    move-result-object v1

    const-string v2, "errorDescriber.internalError"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    invoke-interface {p2}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorContext()Ljava/lang/String;

    move-result-object p2

    const-string v2, "errorDescriber.errorContext"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 401
    invoke-interface {p1, v1, p2, v0}, Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;->reportGranularAppInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)V

    :cond_0
    return-void
.end method

.method private final setContentOpenTimers(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;)V
    .locals 7

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    const-string v1, "krlDownloadFacade.contentOpenMetricsManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    .line 154
    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->getResponseReceivedTime()Ljava/lang/Long;

    move-result-object v2

    const-string v3, "bookDownloadManifestConnectionEstablished"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 155
    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;->getStreamCompleteTime()Ljava/lang/Long;

    move-result-object p2

    const-string v2, "bookDownloadManifestReceived"

    invoke-static {v2, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 153
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 407
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-object v1, v0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->setElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;J[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final then(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TV;>;)TV;"
        }
    .end annotation

    .line 88
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final verifyFileSystem(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;ZLcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;J)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 9

    .line 326
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->downloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    sget-object v5, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->TAG:Ljava/lang/String;

    const-string v1, "TAG"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, p2

    move-wide v2, p4

    invoke-static/range {v0 .. v5}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt;->verifyFileSystem(Ljava/io/File;ZJLcom/amazon/kindle/services/download/IKRLForDownloadFacade;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 329
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->downloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isPathInExternalSDCard(Ljava/lang/String;)Z

    move-result v7

    .line 330
    invoke-virtual {p2}, Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "group.bookID"

    const/4 v8, 0x1

    if-eq v0, v8, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 340
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Not reporting error state "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " as a precondition failure"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 336
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->preconditionErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p3

    move-wide v5, p4

    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;->emitFileSystemFullMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;JZ)V

    .line 337
    invoke-interface {p1, v8}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->setReportedToPreconditionMetrics(Z)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->preconditionErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p3

    move-wide v5, p4

    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;->emitFileSystemFullMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;JZ)V

    .line 333
    invoke-interface {p1, v8}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->setReportedToPreconditionMetrics(Z)V

    .line 343
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic verifyFileSystem$default(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;Lcom/amazon/kindle/services/download/IDownloadRequestGroup;ZLcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;JILjava/lang/Object;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 324
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getTotalAssetSize()J

    move-result-wide p4

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->verifyFileSystem(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;ZLcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;J)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)V
    .locals 3

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling bookId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: contentId is null when cancelling for bookId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->manifestDownloader:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;->cancelManifestDownload(Lcom/amazon/kindle/model/content/IBookID;)Z

    return-void
.end method

.method public final createAssetGroup$com_amazon_kindle_dm(Lcom/amazon/kindle/download/manifest/MDSManifest;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;)Lcom/amazon/kindle/services/download/IAssetGroup;
    .locals 6

    const-string v0, "manifest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->getAssetGroupFactory()Lcom/amazon/kindle/services/download/IAssetGroupFactory;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {p2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getCorrelationId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lcom/amazon/kindle/services/download/IAssetGroupFactory;->create(Lcom/amazon/kindle/download/manifest/MDSManifest;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IAssetGroup;

    move-result-object p1

    .line 279
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getAssets()Ljava/util/Collection;

    move-result-object p2

    const-string v0, "assets"

    .line 280
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "it"

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 280
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 415
    check-cast v2, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 280
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sumOfLong(Ljava/lang/Iterable;)J

    move-result-wide v0

    .line 282
    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v2

    const-string v3, "krlDownloadFacade.contentOpenMetricsManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    long-to-int v1, v0

    .line 284
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v3}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v4, "requiredBytes"

    .line 283
    invoke-virtual {v2, v4, v1, v0, v3}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->setCounters(Ljava/lang/String;ILcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 287
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v3, "bookDownloadManifestParsingComplete"

    .line 286
    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 289
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    .line 290
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v3, "totalAssets"

    .line 289
    invoke-virtual {v2, v3, p2, v0, v1}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->setCounters(Ljava/lang/String;ILcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    return-object p1
.end method

.method public downloadJobFinished(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result;)V
    .locals 8

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getState()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;->CANCELLED:Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$State;

    if-ne v0, v1, :cond_0

    return-void

    .line 171
    :cond_0
    instance-of v0, p2, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;

    if-eqz v0, :cond_1

    .line 172
    check-cast p2, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->handleManifest$com_amazon_kindle_dm(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;)V

    goto/16 :goto_4

    .line 174
    :cond_1
    instance-of v0, p2, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;

    if-eqz v0, :cond_8

    .line 175
    check-cast p2, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;

    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;->getHttpCode()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x193

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 176
    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;->getPayload()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    sget-object v3, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->TAG:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt;->buildErrorDescriberForForbiddenPayload(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    goto :goto_2

    .line 178
    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v1

    .line 180
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->handleManifestFailure(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    .line 181
    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 190
    :goto_3
    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->manifestDownloadMetricsEmitter:Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    .line 191
    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v0

    const-string v1, "job.request.responseHandler"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object v4

    .line 192
    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-result-object v5

    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getCorrelationId()Ljava/lang/String;

    move-result-object v6

    const-string p1, "job.request.correlationId"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Failure;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v7

    .line 190
    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;->emitErrorManifestMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    goto :goto_4

    .line 186
    :cond_6
    iget-object p2, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getDefaultDownloadPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isPathInExternalSDCard(Ljava/lang/String;)Z

    move-result p2

    .line 187
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->preconditionErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;

    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;->emitFileSystemWriteErrorMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Z)V

    goto :goto_4

    .line 183
    :cond_7
    iget-object p2, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->preconditionErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;

    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;->emitNoConnectionMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final enqueueDownloadRequestGroup$com_amazon_kindle_dm(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 1

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/services/download/IReaderDownloadManager;->addGroupForDownload(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z

    return-object p1
.end method

.method public getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    return-object v0
.end method

.method public final handleManifest$com_amazon_kindle_dm(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;)V
    .locals 5

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v0

    .line 221
    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->parseManifest$com_amazon_kindle_dm(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;)Lcom/amazon/kindle/download/manifest/MDSManifest;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$1;

    invoke-direct {v4, p0, p1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$1;-><init>(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;)V

    invoke-direct {p0, v3, v4}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->then(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/services/download/IAssetGroup;

    if-eqz v3, :cond_0

    .line 227
    new-instance v4, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$2;

    invoke-direct {v4, p0, v1, v0}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$2;-><init>(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/webservices/IManifestWebRequest;)V

    invoke-direct {p0, v3, v4}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->then(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    if-eqz v3, :cond_0

    .line 230
    new-instance v4, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$3;

    invoke-direct {v4, p0, v0}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$3;-><init>(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;Lcom/amazon/kindle/webservices/IManifestWebRequest;)V

    invoke-direct {p0, v3, v4}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->then(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    if-eqz v0, :cond_0

    .line 233
    new-instance v3, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$4;

    invoke-direct {v3, p0, v1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$4;-><init>(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V

    invoke-direct {p0, v0, v3}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->then(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    if-eqz v0, :cond_0

    .line 236
    new-instance v1, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$5;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$5;-><init>(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;)V

    .line 235
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->then(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    if-eqz v0, :cond_0

    .line 238
    new-instance v1, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$6;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleManifest$enqueuedGroup$6;-><init>(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;)V

    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;->getPayload()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->serializeManifest$com_amazon_kindle_dm(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Z

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 237
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->then(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 242
    sget-object p1, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to enqueue download group for book ID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object p1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {p2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object p2

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    invoke-virtual {p1, v2, p2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->removeMetrics(Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    goto :goto_1

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->manifestDownloadMetricsEmitter:Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IAssetGroup;->getRevision()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;->emitSuccessManifestMetricPayload(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final handleNonManifestDownload$com_amazon_kindle_dm(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V
    .locals 6

    const-string v0, "downloadGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getRequests()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    sget-object p1, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot handle a non manifest download with no download requests for bookID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 209
    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-result-object v3

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->verifyFileSystem(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;ZLcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;J)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    new-instance v1, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleNonManifestDownload$enqueuedGroup$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleNonManifestDownload$enqueuedGroup$1;-><init>(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->then(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    if-eqz v0, :cond_1

    .line 211
    new-instance v1, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleNonManifestDownload$enqueuedGroup$2;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler$handleNonManifestDownload$enqueuedGroup$2;-><init>(Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->then(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 214
    sget-object v0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to enqueue non-manifest download for book "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Assets: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getAssets()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final parseManifest$com_amazon_kindle_dm(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;)Lcom/amazon/kindle/download/manifest/MDSManifest;
    .locals 10

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jobResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->manifestSerializer:Lcom/amazon/kindle/download/manifest/ManifestSerializer;

    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Result$Success;->getPayload()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/amazon/kindle/download/manifest/ManifestSerializer;->serialize(Ljava/lang/String;)Lcom/amazon/kindle/download/manifest/ParsingResult;

    move-result-object p2

    .line 256
    instance-of v0, p2, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;

    if-eqz v0, :cond_0

    .line 259
    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getParams()Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getMetrics()Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->setContentOpenTimers(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Metrics;)V

    .line 260
    check-cast p2, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;

    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/download/manifest/MDSManifest;

    goto :goto_0

    .line 262
    :cond_0
    instance-of v0, p2, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;

    if-eqz v0, :cond_1

    .line 263
    invoke-interface {p1}, Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;->getRequest()Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object v0

    .line 264
    sget-object v1, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse manifest for book "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast p2, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;

    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;->getException()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->MANIFEST_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 266
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v1

    const-string v2, "request.errorDescriber"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->handleManifestFailure(Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    .line 267
    iget-object v3, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->manifestDownloadMetricsEmitter:Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    .line 268
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    const-string p1, "request.bookId"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object p1

    const-string v1, "request.responseHandler"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object v5

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getDownloadTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-result-object v6

    const-string p1, "request.downloadTrigger"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IManifestWebRequest;->getCorrelationId()Ljava/lang/String;

    move-result-object v7

    const-string p1, "request.correlationId"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;->getException()Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/lang/Throwable;

    .line 267
    invoke-interface/range {v3 .. v9}, Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;->emitManifestParsingFailurePayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 270
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final persistDownloadRequestGroup$com_amazon_kindle_dm(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 2

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->addDownloadGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    sget-object v0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->TAG:Ljava/lang/String;

    const-string v1, "Queueing of download for one of the group members failed"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public final serializeManifest$com_amazon_kindle_dm(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestPayload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isExternalSdCardFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 386
    :cond_0
    new-instance v0, Lcom/amazon/kindle/download/BookMetadataSerializationManager;

    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V

    .line 387
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->loadMetadata(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 388
    invoke-virtual {v0, p2}, Lcom/amazon/kindle/download/BookMetadataSerializationManager;->serializeManifest(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 390
    sget-object v0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in serializing the manifest for bookId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p2
.end method

.method public startDownload(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V
    .locals 9

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getAllAssets(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/Collection;

    move-result-object v1

    .line 109
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const-string v3, "assetsForBook"

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->isUserInitiated()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->downloadGroupFactory:Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;->recreateExistingRequestGroup(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Ljava/util/Collection;Lcom/amazon/kindle/download/assets/IAssetStateManager;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object v0

    .line 133
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->handleNonManifestDownload$com_amazon_kindle_dm(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V

    goto/16 :goto_1

    .line 110
    :cond_1
    :goto_0
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->isForced()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    :cond_2
    sget-object v1, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating content for bookId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->unpersistAllAssets(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 113
    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->isForced()Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    .line 114
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->isSilentUpdate()Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->isForced()Z

    move-result v7

    .line 117
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->isSilentUpdate()Z

    move-result v1

    xor-int/lit8 v8, v1, 0x1

    .line 113
    invoke-interface/range {v2 .. v8}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->deleteItemLocally(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 121
    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-static {v0, v1}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt;->setTrialsOrRentalsToRemote(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V

    .line 125
    :cond_3
    invoke-static {p1}, Lcom/amazon/kindle/download/manifest/ManifestUtilsKt;->isRequestToadEligible(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 126
    sget-object v1, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading without toad for bookId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->downloadContentWithoutToad(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V

    goto :goto_1

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->manifestDownloader:Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;

    invoke-virtual {v0, p1, p0}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloader;->downloadManifest(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;)Z

    :goto_1
    return-void
.end method

.method public final verifyDownloadRequestGroup$com_amazon_kindle_dm(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 2

    const-string v0, "downloadGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getRequests()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    .line 305
    :cond_0
    sget-object p1, Lcom/amazon/kindle/download/workflow/DeliveryManifestHandler;->TAG:Ljava/lang/String;

    const-string v0, "cannot queue download because DownloadRequestGroup is null or size equals 0"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method
