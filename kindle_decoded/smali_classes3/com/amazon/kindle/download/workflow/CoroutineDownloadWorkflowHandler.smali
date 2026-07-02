.class public final Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;
.super Ljava/lang/Object;
.source "CoroutineDownloadWorkflowHandler.kt"

# interfaces
.implements Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineDownloadWorkflowHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineDownloadWorkflowHandler.kt\ncom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,410:1\n734#2:411\n825#2,2:412\n1517#2:414\n1588#2,3:415\n*E\n*S KotlinDebug\n*F\n+ 1 CoroutineDownloadWorkflowHandler.kt\ncom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler\n*L\n384#1:411\n384#1,2:412\n384#1:414\n384#1,3:415\n*E\n"
.end annotation


# instance fields
.field private final appInternalErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;

.field private final assetGroupFactory$delegate:Lkotlin/Lazy;

.field private assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

.field private final coroutineLock:Lkotlinx/coroutines/sync/Mutex;

.field private final coroutineScope$delegate:Lkotlin/Lazy;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final downloadGroupFactory:Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;

.field private final downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

.field private final krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

.field private final manifestDownloadMetricsEmitter:Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

.field private final manifestRepo:Lcom/amazon/kindle/download/manifest/ManifestRepo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/download/manifest/ManifestRepo<",
            "Lcom/amazon/kindle/download/manifest/MDSManifest;",
            ">;"
        }
    .end annotation
.end field

.field private final manifestSerializer:Lcom/amazon/kindle/download/manifest/ManifestSerializer;

.field private final preconditionErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;

.field private final runningJobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kindle/download/manifest/ManifestRepo;Lcom/amazon/kindle/download/manifest/ManifestSerializer;Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            "Lcom/amazon/kindle/services/download/IReaderDownloadManager;",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            "Lcom/amazon/kindle/download/manifest/ManifestRepo<",
            "Lcom/amazon/kindle/download/manifest/MDSManifest;",
            ">;",
            "Lcom/amazon/kindle/download/manifest/ManifestSerializer;",
            "Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;",
            "Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;",
            "Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;",
            "Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ")V"
        }
    .end annotation

    const-string v0, "krlDownloadFacade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetStateManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestRepo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestSerializer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadGroupFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestDownloadMetricsEmitter"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInternalErrorGranularDetailMetricsEmitter"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preconditionErrorGranularDetailMetricsEmitter"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iput-object p2, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    iput-object p3, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    iput-object p4, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->manifestRepo:Lcom/amazon/kindle/download/manifest/ManifestRepo;

    iput-object p5, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->manifestSerializer:Lcom/amazon/kindle/download/manifest/ManifestSerializer;

    iput-object p6, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->downloadGroupFactory:Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;

    iput-object p7, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->manifestDownloadMetricsEmitter:Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    iput-object p8, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->appInternalErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;

    iput-object p9, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->preconditionErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;

    iput-object p10, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 100
    new-instance p1, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$assetGroupFactory$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$assetGroupFactory$2;-><init>(Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->assetGroupFactory$delegate:Lkotlin/Lazy;

    .line 104
    new-instance p1, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$coroutineScope$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$coroutineScope$2;-><init>(Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->coroutineScope$delegate:Lkotlin/Lazy;

    .line 109
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->runningJobs:Ljava/util/Map;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 110
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->coroutineLock:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Lcom/amazon/kindle/download/manifest/ManifestSerializer;Ljava/util/Set;Lcom/amazon/kindle/download/assets/IAssetStateManager;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            "Lcom/amazon/kindle/services/download/IReaderDownloadManager;",
            "Lcom/amazon/kindle/download/manifest/ManifestSerializer;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/download/manifest/providers/ManifestProvider<",
            "Lcom/amazon/kindle/download/manifest/MDSManifest;",
            ">;>;",
            "Lcom/amazon/kindle/download/assets/IAssetStateManager;",
            ")V"
        }
    .end annotation

    const-string v0, "facade"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManager"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestSerializer"

    move-object v6, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestProviders"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetStateManager"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v5, Lcom/amazon/kindle/download/manifest/ManifestRepo;

    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/amazon/kindle/download/manifest/ManifestRepo;-><init>(Ljava/util/List;)V

    .line 93
    sget-object v7, Lcom/amazon/kindle/download/factory/DownloadRequestGroupFactory;->INSTANCE:Lcom/amazon/kindle/download/factory/DownloadRequestGroupFactory;

    .line 94
    sget-object v8, Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;->INSTANCE:Lcom/amazon/kindle/metrics/DeliveryManifestDownloadMetricsEmitter;

    .line 95
    sget-object v9, Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;->INSTANCE:Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;

    .line 96
    sget-object v10, Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;->INSTANCE:Lcom/amazon/kindle/metrics/DownloadPreconditionMetricsEmitter;

    .line 97
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v11

    move-object v1, p0

    .line 87
    invoke-direct/range {v1 .. v11}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kindle/download/manifest/ManifestRepo;Lcom/amazon/kindle/download/manifest/ManifestSerializer;Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-void
.end method

.method public static final synthetic access$getCoroutineLock$p(Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->coroutineLock:Lkotlinx/coroutines/sync/Mutex;

    return-object p0
.end method

.method public static final synthetic access$getDispatcher$p(Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getKrlDownloadFacade$p(Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;)Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    return-object p0
.end method

.method private final createAssetGroup(Lcom/amazon/kindle/download/manifest/MDSManifest;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IAssetGroup;
    .locals 5

    .line 382
    invoke-direct {p0}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->getAssetGroupFactory()Lcom/amazon/kindle/services/download/IAssetGroupFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/services/download/IAssetGroupFactory;->create(Lcom/amazon/kindle/download/manifest/MDSManifest;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IAssetGroup;

    move-result-object p1

    .line 383
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getAssets()Ljava/util/Collection;

    move-result-object p2

    const-string p3, "assets"

    .line 384
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 412
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "it"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 384
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 415
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 416
    check-cast v1, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 384
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sumOfLong(Ljava/lang/Iterable;)J

    move-result-wide v0

    .line 386
    iget-object p3, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {p3}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object p3

    const-string v2, "krlDownloadFacade.contentOpenMetricsManager"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    long-to-int v1, v0

    .line 388
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v3, "requiredBytes"

    .line 387
    invoke-virtual {p3, v3, v1, v0, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->setCounters(Ljava/lang/String;ILcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 391
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v2, "bookDownloadManifestParsingComplete"

    .line 390
    invoke-virtual {p3, v2, v0, v1}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 393
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    .line 394
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v2, "totalAssets"

    .line 393
    invoke-virtual {p3, v2, p2, v0, v1}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->setCounters(Ljava/lang/String;ILcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    return-object p1
.end method

.method private final getAssetGroupFactory()Lcom/amazon/kindle/services/download/IAssetGroupFactory;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->assetGroupFactory$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IAssetGroupFactory;

    return-object v0
.end method

.method private final getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->coroutineScope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method private final getErrorForStreamingException(Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;)Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
    .locals 5

    .line 301
    invoke-virtual {p1}, Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;->getHttpResponse()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object v0

    .line 302
    invoke-virtual {p1}, Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;->getPayload()Ljava/lang/String;

    move-result-object v1

    .line 303
    new-instance v2, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;

    invoke-direct {v2}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;-><init>()V

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getResponseStatus()Lcom/amazon/kindle/webservices/HTTPResponseStatus;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 306
    :goto_0
    instance-of v4, v3, Lcom/amazon/kindle/webservices/HTTPResponseStatus$ClientError;

    if-eqz v4, :cond_1

    .line 307
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->HTTP_CLIENT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    goto :goto_1

    .line 309
    :cond_1
    instance-of v3, v3, Lcom/amazon/kindle/webservices/HTTPResponseStatus$ServerError;

    if-eqz v3, :cond_2

    .line 310
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    .line 315
    invoke-virtual {p1}, Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;->getHadInternetConnection()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 316
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    goto :goto_1

    .line 318
    :cond_3
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    goto :goto_1

    .line 322
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received a ManifestStreamingError with a HTTP response that wasn\'t 4xx or 5xx: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getResponseStatus()Lcom/amazon/kindle/webservices/HTTPResponseStatus;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v2, p1}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->setErrorContext(Ljava/lang/String;)V

    .line 325
    sget-object p1, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_MANIFEST_REJECTED:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->setInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;)V

    .line 326
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 305
    :goto_1
    invoke-virtual {v2, p1}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    if-eqz v0, :cond_5

    const-string p1, "X-ADP-Displayable-Error"

    .line 331
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getLastValueOfHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 332
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->setShouldDisplayCDEError(Z)V

    :cond_5
    if-eqz v0, :cond_6

    const-string p1, "X-ADP-Error-Code"

    .line 334
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getLastValueOfHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 335
    invoke-virtual {v2, p1}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->setErrorCode(Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_8

    .line 338
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getResponseStatus()Lcom/amazon/kindle/webservices/HTTPResponseStatus;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/HTTPResponseStatus;->getHttpCode()I

    move-result p1

    const/16 v0, 0x193

    if-ne p1, v0, :cond_8

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    const-string v1, ""

    .line 339
    :goto_2
    iget-object p1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TAG"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2, p1, v0}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt;->buildErrorDescriberForForbiddenPayload(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    :cond_8
    return-object v2
.end method

.method private final getExistingAssetInfo(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation

    .line 353
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 354
    invoke-virtual {p0}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getAllAssets(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/Collection;

    move-result-object v1

    const-string v2, "it"

    .line 355
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->isUserInitiated()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->isForced()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating content for bookId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->unpersistAllAssets(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 358
    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 359
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->isForced()Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    .line 360
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->isSilentUpdate()Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->isForced()Z

    move-result v7

    .line 363
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->isSilentUpdate()Z

    move-result p1

    xor-int/lit8 v8, p1, 0x1

    .line 358
    invoke-interface/range {v2 .. v8}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->deleteItemLocally(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 368
    iget-object p1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-static {v0, p1}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt;->setTrialsOrRentalsToRemote(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V

    .line 371
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    .line 375
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private final handleDownloadGroupProcessingError(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/services/download/IDownloadRequestGroup;Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;)V
    .locals 9

    .line 271
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->removeMetrics(Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 273
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IAssetGroup;->downloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isPathInExternalSDCard(Ljava/lang/String;)Z

    move-result v7

    .line 274
    invoke-virtual {p3}, Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "downloadGroup.bookID"

    const/4 v8, 0x1

    if-eq v0, v8, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 291
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not treating group error state "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as a download precondition"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->preconditionErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;

    .line 286
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-result-object p1

    .line 285
    invoke-interface {v0, v2, p1, v7}, Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;->emitFileSystemWriteErrorMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Z)V

    .line 289
    invoke-interface {p2, v8}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->setReportedToPreconditionMetrics(Z)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->preconditionErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;

    .line 277
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-result-object v4

    .line 279
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getTotalAssetSize()J

    move-result-wide v5

    .line 276
    invoke-interface/range {v2 .. v7}, Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;->emitFileSystemFullMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;JZ)V

    .line 282
    invoke-interface {p2, v8}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->setReportedToPreconditionMetrics(Z)V

    .line 293
    :goto_0
    invoke-virtual {p3}, Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    return-void
.end method

.method private final handleManifestProviderError(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/download/ManifestProviderException;)V
    .locals 9

    .line 225
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v7

    .line 227
    instance-of v0, p2, Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;

    if-eqz v0, :cond_1

    .line 228
    check-cast p2, Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;

    invoke-direct {p0, p2}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->getErrorForStreamingException(Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;)Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v6

    .line 229
    invoke-interface {v6}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v0, v1, :cond_0

    .line 230
    iget-object p2, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->preconditionErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-result-object v0

    invoke-interface {p2, v7, v0}, Lcom/amazon/kindle/metrics/IDownloadPreconditionMetricsEmitter;->emitNoConnectionMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->manifestDownloadMetricsEmitter:Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    invoke-virtual {p2}, Lcom/amazon/kindle/download/ManifestProviderException$ManifestStreamingException;->getHttpResponse()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object v2

    .line 233
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getCorrelationId()Ljava/lang/String;

    move-result-object v4

    move-object v1, v7

    move-object v5, v6

    .line 232
    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;->emitErrorManifestMetricPayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    goto :goto_0

    .line 238
    :cond_1
    instance-of v0, p2, Lcom/amazon/kindle/download/ManifestProviderException$ManifestParsingException;

    if-eqz v0, :cond_2

    .line 239
    new-instance v8, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;

    invoke-direct {v8}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;-><init>()V

    .line 240
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->MANIFEST_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 242
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->manifestDownloadMetricsEmitter:Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;

    check-cast p2, Lcom/amazon/kindle/download/ManifestProviderException$ManifestParsingException;

    invoke-virtual {p2}, Lcom/amazon/kindle/download/ManifestProviderException$ManifestParsingException;->getHttpResponse()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object v2

    .line 243
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getTrigger()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getCorrelationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/amazon/kindle/download/ManifestProviderException$ManifestParsingException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    move-object v1, v7

    move-object v5, v8

    .line 242
    invoke-interface/range {v0 .. v6}, Lcom/amazon/kindle/metrics/IDeliveryManifestDownloadMetricsEmitter;->emitManifestParsingFailurePayload(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/HttpResponseProperties;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Ljava/lang/Throwable;)V

    move-object v6, v8

    goto :goto_0

    .line 247
    :cond_2
    instance-of v0, p2, Lcom/amazon/kindle/download/ManifestProviderException$InternalException;

    if-eqz v0, :cond_4

    .line 248
    new-instance v6, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;

    invoke-direct {v6}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;-><init>()V

    .line 249
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v6, v0}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 250
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->setErrorContext(Ljava/lang/String;)V

    .line 251
    sget-object p2, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_MANIFEST_PROVIDER_EXCEPTION:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    invoke-virtual {v6, p2}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->setInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;)V

    .line 257
    :goto_0
    iget-object p2, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    invoke-virtual {p2, v7, v0}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->removeMetrics(Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 258
    invoke-interface {v6}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getInternalError()Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 259
    iget-object p2, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->appInternalErrorGranularDetailMetricsEmitter:Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;

    .line 260
    invoke-interface {v6}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getInternalError()Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    move-result-object v0

    const-string v1, "errorDescriber.internalError"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-interface {v6}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorContext()Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorDescriber.errorContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-interface {p2, v0, v1, v7}, Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;->reportGranularAppInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 265
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getDownloadTracker()Lcom/amazon/kindle/services/download/IDownloadTracker;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->ERROR:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v6, v0}, Lcom/amazon/kindle/services/download/IDownloadTracker;->reportState(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Ljava/lang/String;)V

    return-void

    .line 253
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final persistDownloadRequestGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)V
    .locals 7

    .line 402
    invoke-virtual {p0}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->addDownloadGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Queueing of download for one of the group members failed"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance p1, Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;

    sget-object v3, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "Could not persist the download group"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)V
    .locals 3

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling bookId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$cancelDownload$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$cancelDownload$1;-><init>(Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    return-object v0
.end method

.method public final getRunningJobs$com_amazon_kindle_dm()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->runningJobs:Ljava/util/Map;

    return-object v0
.end method

.method public final handleContentDownload$com_amazon_kindle_dm(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/services/download/IDownloadRequestGroup;Lcom/amazon/kindle/download/manifest/MDSManifest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "Lcom/amazon/kindle/services/download/IDownloadRequestGroup;",
            "Lcom/amazon/kindle/download/manifest/MDSManifest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/lit8 v2, v0, 0x1

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_1

    .line 202
    :cond_1
    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getTotalAssetSize()J

    move-result-wide v0

    :goto_1
    move-wide v3, v0

    .line 204
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verifying download group and persisting to the ASM for book "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    new-instance v1, Ljava/io/File;

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IAssetGroup;->downloadPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v6

    const-string v0, "TAG"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt;->verifyFileSystem(Ljava/io/File;ZJLcom/amazon/kindle/services/download/IKRLForDownloadFacade;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, p2}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->persistDownloadRequestGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)V

    if-eqz p3, :cond_2

    .line 209
    iget-object v1, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isExternalSdCardFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->manifestSerializer:Lcom/amazon/kindle/download/manifest/ManifestSerializer;

    iget-object v3, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-static {v1, p3, v2, v3}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt;->serializeManifest(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/download/manifest/MDSManifest;Lcom/amazon/kindle/download/manifest/ManifestSerializer;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Z

    .line 213
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enqueueing download group for book "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getDownloadTracker()Lcom/amazon/kindle/services/download/IDownloadTracker;

    move-result-object p1

    iget-object p3, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1, p3, v1, p4}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt;->performDownloadForGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;Lcom/amazon/kindle/services/download/IDownloadTracker;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_3

    return-object p1

    .line 215
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic runCompleteDownloadWorkflow(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;

    iget v1, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;-><init>(Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 156
    iget v2, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    iget-object v1, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    iget-object v0, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p2

    goto/16 :goto_5

    .line 194
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_2
    iget-object p1, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    iget-object v2, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/amazon/kindle/download/ManifestProviderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    goto/16 :goto_7

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 157
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Workflow started for book "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->getExistingAssetInfo(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)Ljava/util/Collection;

    move-result-object p2

    const/4 v2, 0x0

    .line 163
    :try_start_2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_4

    .line 164
    iget-object v4, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->downloadGroupFactory:Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v5

    invoke-interface {v4, p1, p2, v5}, Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;->recreateExistingRequestGroup(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Ljava/util/Collection;Lcom/amazon/kindle/download/assets/IAssetStateManager;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p2

    :goto_1
    move-object v4, v2

    move-object v2, p0

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    goto/16 :goto_3

    .line 166
    :cond_4
    invoke-static {p1}, Lcom/amazon/kindle/download/manifest/ManifestUtilsKt;->isRequestToadEligible(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 167
    iget-object p2, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->downloadGroupFactory:Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;

    iget-object v4, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->krlDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {p2, p1, v4}, Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;->createNonToadDownloadRequestGroup(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p2

    goto :goto_1

    .line 170
    :cond_5
    iget-object p2, p0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->manifestRepo:Lcom/amazon/kindle/download/manifest/ManifestRepo;

    iput-object p0, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->label:I

    invoke-static {p1, p2, v0}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt;->fetchManifest(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/download/manifest/ManifestRepo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catch Lcom/amazon/kindle/download/ManifestProviderException; {:try_start_2 .. :try_end_2} :catch_3

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    .line 156
    :goto_2
    :try_start_3
    check-cast p2, Lcom/amazon/kindle/download/manifest/MDSManifest;

    .line 171
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivery manifest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/amazon/kindle/download/workflow/WorkflowUtilsKt;->logString(Lcom/amazon/kindle/download/manifest/MDSManifest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getCorrelationId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p2, v4, v5}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->createAssetGroup(Lcom/amazon/kindle/download/manifest/MDSManifest;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IAssetGroup;

    move-result-object v4

    .line 173
    iget-object v5, v2, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->downloadGroupFactory:Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;

    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IAssetGroup;->getAssets()Ljava/util/Collection;

    move-result-object v6

    const-string v7, "assetGroup.assets"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IAssetGroup;->getSource()Ljava/lang/String;

    move-result-object v7

    .line 174
    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IAssetGroup;->getRevision()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IAssetGroup;->getGroupContext()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, p1

    .line 173
    invoke-interface/range {v4 .. v10}, Lcom/amazon/kindle/download/factory/IDownloadRequestGroupFactory;->createDownloadRequestGroup(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Ljava/util/Map;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object v4
    :try_end_3
    .catch Lcom/amazon/kindle/download/ManifestProviderException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v11, p2

    move-object p2, p1

    move-object p1, v4

    move-object v4, v11

    .line 184
    :goto_3
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    invoke-static {v5}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlin/coroutines/CoroutineContext;)V

    .line 185
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsed manifest into download group for book "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    :try_start_4
    iput-object v2, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$runCompleteDownloadWorkflow$1;->label:I

    invoke-virtual {v2, p2, p1, v4, v0}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->handleContentDownload$com_amazon_kindle_dm(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/services/download/IDownloadRequestGroup;Lcom/amazon/kindle/download/manifest/MDSManifest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException; {:try_start_4 .. :try_end_4} :catch_2

    if-ne v0, v1, :cond_7

    return-object v1

    :cond_7
    move-object v1, p2

    move-object v0, v2

    .line 189
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Workflow complete for book "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, p2

    move-object p2, v0

    move-object v0, v2

    .line 191
    :goto_5
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to enqueue download group for book ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    invoke-direct {v0, v1, p1, p2}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->handleDownloadGroupProcessingError(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/services/download/IDownloadRequestGroup;Lcom/amazon/kindle/download/DownloadRequestGroupProcessingException;)V

    .line 194
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catch_3
    move-exception p2

    move-object v2, p0

    .line 178
    :goto_7
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to create a IDownloadRequestGroup"

    invoke-static {v0, v1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    invoke-direct {v2, p1, p2}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->handleManifestProviderError(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/download/ManifestProviderException;)V

    .line 180
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public startDownload(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V
    .locals 7

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    new-instance v4, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$job$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$job$1;-><init>(Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 124
    new-instance v2, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler$startDownload$1;-><init>(Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandler;Lkotlinx/coroutines/Job;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x1

    invoke-static {v0, v2, v1, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/amazon/kindle/download/workflow/CoroutineDownloadWorkflowHandlerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of handleDownload() for book "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method
