.class public Lcom/amazon/kindle/download/assets/DownloadRequestGroup;
.super Lcom/amazon/kindle/download/assets/AssetGroup;
.source "DownloadRequestGroup.kt"

# interfaces
.implements Lcom/amazon/kindle/services/download/IDownloadRequestGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/assets/DownloadRequestGroup$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadRequestGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadRequestGroup.kt\ncom/amazon/kindle/download/assets/DownloadRequestGroup\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,745:1\n1#2:746\n1819#3,2:747\n1819#3:749\n1819#3,2:750\n1820#3:752\n*E\n*S KotlinDebug\n*F\n+ 1 DownloadRequestGroup.kt\ncom/amazon/kindle/download/assets/DownloadRequestGroup\n*L\n662#1,2:747\n667#1:749\n670#1,2:750\n667#1:752\n*E\n"
.end annotation


# static fields
.field public static final ASSET_DOWNLOAD_COMPLETE:Lcom/amazon/kindle/event/EventType;

.field private static final DOWNLOAD_REQUEST_GROUP_TIMER:Ljava/lang/String; = "DownloadRequestGroupTimer"

.field private static final ERROR_METRICS:Ljava/lang/String; = "Error"

.field private static final OPENABLE_METRICS:Ljava/lang/String; = "Openable"

.field private static final SUCCEED_METRIC:Ljava/lang/String; = "Succeed"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

.field private downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

.field private final downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

.field private errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

.field private errorDomainInfo:Lcom/amazon/kindle/webservices/ErrorDomainInfo;

.field private final hasMultimediaContent:Z

.field private final idToRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private idownloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

.field private final isUserInitiated:Z

.field private final krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

.field private lastReportedGroupStatus:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

.field private mTotalSize:J

.field private final manifestRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final progressTracker:Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;

.field private reportedEndMetricsToDCM:Z

.field private reportedToPreconditionMetrics:Z

.field private serverDomain:Ljava/lang/String;

.field private sharedAssetsDownloadPath:Ljava/lang/String;

.field private sharedBookDownloadEnabled:Z

.field private final triggerSource:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 736
    const-class v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->TAG:Ljava/lang/String;

    .line 743
    new-instance v0, Lcom/amazon/kindle/event/EventType;

    const-string v1, "ASSET_DOWNLOAD"

    const-string v2, "COMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/event/EventType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->ASSET_DOWNLOAD_COMPLETE:Lcom/amazon/kindle/event/EventType;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lcom/amazon/kindle/services/download/IDownloadTracker;ZLjava/lang/String;Ljava/util/Map;Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;ZLcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;",
            "Lcom/amazon/kindle/services/download/IDownloadTracker;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;",
            "Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;",
            "Z",
            "Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;",
            "Z)V"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p12

    const-string v0, "bookId"

    move-object v13, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assets"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerSource"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move/from16 v9, p11

    .line 90
    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/download/assets/AssetGroup;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;Z)V

    move/from16 v0, p6

    iput-boolean v0, v10, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->isUserInitiated:Z

    move-object/from16 v0, p8

    iput-object v0, v10, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->manifestRequestHeaders:Ljava/util/Map;

    iput-object v12, v10, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->triggerSource:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move/from16 v0, p13

    iput-boolean v0, v10, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->hasMultimediaContent:Z

    if-eqz p9, :cond_0

    move-object/from16 v0, p9

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-direct {v0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;-><init>()V

    .line 103
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllAssetsDownloadTimer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->getMetricStartTimestampInMillis(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setDownloadStartTime(J)V

    .line 104
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 102
    :goto_0
    iput-object v0, v10, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v10, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->idToRequestMap:Ljava/util/Map;

    .line 136
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    const-string v1, "DownloadDiscoveryEntryPoints.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    const-string v2, "DownloadDiscoveryEntryPo\u2026ce().krlForDownloadFacade"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v10, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 142
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getReaderDownloadModule()Lcom/amazon/kindle/download/IReaderDownloadModule;

    move-result-object v0

    const-string v1, "DownloadDiscoveryEntryPo\u2026ce().readerDownloadModule"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-interface {v0}, Lcom/amazon/kindle/download/IReaderDownloadModule;->getAssetStateManager()Lcom/amazon/kindle/download/assets/IAssetStateManager;

    move-result-object v1

    const-string v2, "readerDownloadModule.assetStateManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v10, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    .line 144
    invoke-interface {v0}, Lcom/amazon/kindle/download/IReaderDownloadModule;->getReaderDownloadManager()Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    move-result-object v0

    const-string v1, "readerDownloadModule.readerDownloadManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v10, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    move-object/from16 v0, p5

    .line 145
    iput-object v0, v10, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->idownloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    const/4 v0, 0x0

    .line 148
    sget-object v1, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->WAN:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-object/from16 v2, p10

    if-eq v2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v11, v0, v1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->createRequests(Ljava/util/Collection;Ljava/util/Collection;Z)V

    .line 150
    invoke-direct {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->createWebStatusAndProgressTracker()Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;

    move-result-object v0

    iput-object v0, v10, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->progressTracker:Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;

    .line 152
    iget-object v0, v10, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->idToRequestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, v10, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->progressTracker:Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;

    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->initializeProgressTrackerState(Ljava/util/Collection;Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;)V

    return-void
.end method

.method public static final synthetic access$reportGroupStatusImpl(Lcom/amazon/kindle/download/assets/DownloadRequestGroup;Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->reportGroupStatusImpl(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V

    return-void
.end method

.method private final applyTerminalMetrics(Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;)V
    .locals 5

    .line 492
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-virtual {v0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getTotalBytes()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    .line 494
    sget-object v2, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v3, "contentSize"

    .line 490
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 498
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-virtual {v0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getWanBytes()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    .line 500
    sget-object v2, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v3, "wanBytes"

    .line 496
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 504
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isSupportedVoucherVersionsManifestEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    .line 506
    sget-object v2, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v3, "supportedVoucherVersionsManifestRequested"

    .line 502
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 509
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getAuthenticationToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-static {v0}, Lcom/amazon/kcp/debug/DeliveryServiceDebugUtils;->isUsingSingleCF(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    .line 514
    sget-object v2, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const-string v3, "usedSingleGlobalCloudFront"

    .line 510
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 522
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-virtual {v0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getWanBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "WiFi"

    goto :goto_0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    const-string v1, "krlForDownloadFacade.networkService"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->getWANType()Ljava/lang/String;

    move-result-object v0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WAN."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    .line 528
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v3}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->setCounters(Ljava/lang/String;ILcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    return-void
.end method

.method private final buildRequestCompletionHooks(Lcom/amazon/kindle/services/download/IBookAsset;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/jvm/functions/Function1;

    .line 534
    new-instance v1, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$hooks$1;

    new-instance v2, Lcom/amazon/kindle/download/assets/ApnxDownloadHookProvider;

    iget-object v3, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    new-instance v4, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$hooks$2;

    invoke-direct {v4, p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$hooks$2;-><init>(Lcom/amazon/kindle/download/assets/DownloadRequestGroup;)V

    invoke-direct {v2, v3, v4}, Lcom/amazon/kindle/download/assets/ApnxDownloadHookProvider;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v1, v2}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$hooks$1;-><init>(Lcom/amazon/kindle/download/assets/ApnxDownloadHookProvider;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 539
    new-instance v1, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$hooks$3;

    new-instance v2, Lcom/amazon/kindle/download/assets/AnnotationsSidecarHookProvider;

    iget-object v3, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-direct {v2, v3}, Lcom/amazon/kindle/download/assets/AnnotationsSidecarHookProvider;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V

    invoke-direct {v1, v2}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$hooks$3;-><init>(Lcom/amazon/kindle/download/assets/AnnotationsSidecarHookProvider;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 532
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 542
    iget-boolean v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->hasMultimediaContent:Z

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->MAIN_CONTENT:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne p1, v1, :cond_0

    .line 543
    new-instance p1, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$1;

    new-instance v1, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider;

    iget-object v2, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    new-instance v3, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$2;

    invoke-direct {v3, p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$2;-><init>(Lcom/amazon/kindle/download/assets/DownloadRequestGroup;)V

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p1, v1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$buildRequestCompletionHooks$1;-><init>(Lcom/amazon/kindle/download/assets/Mobi7LunaMultimediaHookProvider;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private final createRequest(Lcom/amazon/kindle/services/download/IBookAsset;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IDownloadRequest;
    .locals 12

    .line 232
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->ANNOTATION_SIDECAR:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 234
    iget-object p2, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {p2}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p2, v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object p2

    .line 235
    invoke-static {p2}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isEarlySidecarDownloadEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result p2

    const-string v0, "bookId"

    if-eqz p2, :cond_0

    .line 236
    iget-object p2, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getOriginalUriString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->requestAnnotationsDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->requestAnnotationsDownload(Ljava/lang/String;)V

    :goto_0
    move-object v4, v2

    goto/16 :goto_4

    .line 242
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->PAGE_NUMBER_SIDECAR:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne v0, v1, :cond_3

    .line 243
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 245
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 243
    invoke-interface {v0, p2, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getBookPageNumbers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p2

    .line 247
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_1
    move-object v4, p2

    goto/16 :goto_4

    .line 250
    :cond_3
    iget-boolean v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->sharedBookDownloadEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-eq v0, v3, :cond_8

    .line 254
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->sharedAssetsDownloadPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    new-instance v3, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$createRequest$requestPath$files$1;

    invoke-direct {v3, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$createRequest$requestPath$files$1;-><init>(Lcom/amazon/kindle/services/download/IBookAsset;)V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 261
    array-length v3, v0

    const/4 v4, 0x1

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    xor-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    .line 262
    aget-object v0, v0, v1

    goto :goto_3

    :cond_5
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_7

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 265
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v5

    const-string v1, "Asset "

    cmp-long v7, v3, v5

    if-nez v7, :cond_6

    .line 266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already exists in shared location. Not downloading it again"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    sget-object p2, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/services/download/IBookAsset;->setState(Lcom/amazon/kindle/services/download/AssetState;)V

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/services/download/IBookAsset;->setFilename(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 271
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already exists in shared location, but does not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "match in size. Downloading it to the private book download location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    .line 277
    :cond_7
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->sharedAssetsDownloadPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object p2, v0

    goto/16 :goto_1

    .line 282
    :cond_8
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    if-ne v0, v3, :cond_2

    .line 284
    iget-object p2, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getDownloadPath(Lcom/amazon/kindle/model/content/IBookID;Z)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    :goto_4
    if-eqz v4, :cond_9

    .line 290
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->buildRequestCompletionHooks(Lcom/amazon/kindle/services/download/IBookAsset;)Ljava/util/List;

    move-result-object v6

    .line 291
    new-instance v2, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x38

    const/4 v11, 0x0

    move-object v3, v2

    move-object v5, p1

    invoke-direct/range {v3 .. v11}, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/download/IBookAsset;Ljava/util/List;Ljava/util/List;Lcom/amazon/kindle/metrics/IAssetDownloadRequestMetricsEmitter;Lcom/amazon/kindle/metrics/IAppInternalErrorGranularDetailMetricsEmitter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 292
    new-instance p1, Lcom/amazon/kindle/download/AssetResponseHandler;

    invoke-virtual {v2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-direct {p1, v2, p2, v0}, Lcom/amazon/kindle/download/AssetResponseHandler;-><init>(Lcom/amazon/kindle/download/assets/AssetDownloadRequest;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    :cond_9
    return-object v2
.end method

.method private final createRequests(Ljava/util/Collection;Ljava/util/Collection;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-static {v1, p1}, Lcom/amazon/kindle/services/download/DownloadUtils;->initializeSharedBookDownload(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 179
    iput-boolean v2, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->sharedBookDownloadEnabled:Z

    .line 180
    iput-object v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->sharedAssetsDownloadPath:Ljava/lang/String;

    .line 182
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 183
    iget-object v3, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->downloadPath:Ljava/lang/String;

    const-string v4, "downloadPath"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->createRequest(Lcom/amazon/kindle/services/download/IBookAsset;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 186
    iget-boolean v4, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->isUserInitiated:Z

    .line 188
    iget-object v5, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->correlationId:Ljava/lang/String;

    .line 189
    iget-object v6, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->manifestRequestHeaders:Ljava/util/Map;

    .line 184
    invoke-static {v3, v4, v1, v5, v6}, Lcom/amazon/kindle/services/download/DownloadUtils;->injectDownloadRequestHeaders(Lcom/amazon/kindle/services/download/IDownloadRequest;ZLcom/amazon/kindle/services/download/IBookAsset;Ljava/lang/String;Ljava/util/Map;)V

    .line 191
    invoke-interface {v3, p3}, Lcom/amazon/kindle/services/download/IDownloadRequest;->setShouldDownloadOverWan(Z)V

    .line 192
    sget-object v4, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getState()Lcom/amazon/kindle/services/download/AssetState;

    move-result-object v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3, v4}, Lcom/amazon/kindle/services/download/IDownloadRequest;->setIsCompleted(Z)V

    .line 193
    iget-object v4, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->idToRequestMap:Ljava/util/Map;

    invoke-interface {v3}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "request.id"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 194
    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_3
    iget-wide v3, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->mTotalSize:J

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->mTotalSize:J

    goto :goto_0

    .line 197
    :cond_4
    iget-boolean p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->sharedBookDownloadEnabled:Z

    if-eqz p1, :cond_5

    .line 198
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->sharedAssetsDownloadPath:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->downloadPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 201
    sget-object p2, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->TAG:Ljava/lang/String;

    const-string p3, "Unable to create Web Requests for download group"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    iput-boolean v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->sharedBookDownloadEnabled:Z

    :cond_5
    :goto_2
    return-void
.end method

.method private final createWebStatusAndProgressTracker()Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;
    .locals 4

    .line 161
    new-instance v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;

    .line 163
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->idownloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    .line 164
    iget-object v2, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    .line 165
    iget-object v3, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->triggerSource:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    .line 161
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;-><init>(Lcom/amazon/kindle/download/assets/DownloadRequestGroup;Lcom/amazon/kindle/services/download/IDownloadTracker;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    return-object v0
.end method

.method private final initializeProgressTrackerState(Ljava/util/Collection;Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            ">;",
            "Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;",
            ")V"
        }
    .end annotation

    .line 215
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IDownloadRequest;

    .line 216
    invoke-interface {p2, v0}, Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;->addNewRequest(Lcom/amazon/kindle/services/download/IDownloadRequest;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final onSharedDownloadFailed(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 3

    .line 722
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p1, v0, :cond_0

    .line 723
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 724
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->sharedAssetsDownloadPath:Ljava/lang/String;

    .line 725
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    const-string v2, "bookId"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    .line 723
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->onSharedDownloadFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    sget-object p1, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->TAG:Ljava/lang/String;

    const-string v0, "Disabled shared downloads due to file system error"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 730
    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->TAG:Ljava/lang/String;

    const-string v1, "Unable to successfully disable shared downloads on file system write error"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private final processMetricToDeliveryTeam(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V
    .locals 4

    .line 341
    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 359
    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid book download status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " while updating metrics to delivery team"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_0
    invoke-direct {p0, v2}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->updateOptionalEndTime(Z)V

    .line 357
    invoke-direct {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->sendDownloadCompleteEvents()V

    goto :goto_0

    .line 354
    :cond_1
    invoke-direct {p0, v2}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->updateDeferredEndTime(Z)V

    goto :goto_0

    .line 349
    :cond_2
    invoke-direct {p0, v2}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->updateRequiredEndTime(Z)V

    .line 350
    invoke-direct {p0, v2}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->updateDeferredEndTime(Z)V

    .line 351
    invoke-direct {p0, v2}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->updateOptionalEndTime(Z)V

    .line 352
    invoke-direct {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->sendDownloadCompleteEvents()V

    goto :goto_0

    .line 344
    :cond_3
    invoke-direct {p0, v1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->updateRequiredEndTime(Z)V

    .line 345
    invoke-direct {p0, v2}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->updateDeferredEndTime(Z)V

    .line 346
    invoke-direct {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->sendDownloadCompleteEvents()V

    goto :goto_0

    .line 342
    :cond_4
    invoke-direct {p0, v1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->updateRequiredEndTime(Z)V

    :goto_0
    return-void
.end method

.method private final processMetricsToDCM(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V
    .locals 19

    move-object/from16 v0, p0

    .line 370
    sget-object v1, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "DownloadRequestGroupTimer"

    const/4 v3, 0x1

    const-string v4, "bookId"

    if-eq v1, v3, :cond_5

    const/4 v5, 0x2

    const-string v6, "AllAssetsDownloadTimer"

    if-eq v1, v5, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    const/4 v5, 0x4

    if-eq v1, v5, :cond_0

    .line 427
    sget-object v1, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid book download status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " while updating metrics to DCM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 402
    :cond_0
    iget-boolean v1, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->reportedEndMetricsToDCM:Z

    if-eqz v1, :cond_1

    return-void

    .line 405
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    .line 406
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 405
    invoke-virtual {v1, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->getMetricElapsedTime(Ljava/lang/String;)J

    move-result-wide v10

    .line 408
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    .line 411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Succeed"

    .line 408
    invoke-virtual {v1, v2, v5, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v7, v0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 415
    iget-wide v8, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->mTotalSize:J

    .line 417
    sget-object v1, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 420
    iget-object v15, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->errorDomainInfo:Lcom/amazon/kindle/webservices/ErrorDomainInfo;

    .line 421
    iget-boolean v1, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->sharedBookDownloadEnabled:Z

    .line 422
    iget-object v2, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->serverDomain:Ljava/lang/String;

    .line 423
    iget-object v4, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->triggerSource:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    const-string v14, ""

    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    .line 413
    invoke-static/range {v7 .. v18}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->reportDownloadEndedMetrics(Lcom/amazon/kindle/model/content/IBookID;JJLjava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Lcom/amazon/kindle/webservices/ErrorDomainInfo;ZLjava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    .line 425
    iput-boolean v3, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->reportedEndMetricsToDCM:Z

    goto/16 :goto_1

    .line 377
    :cond_2
    iget-boolean v1, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->reportedToPreconditionMetrics:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->reportedEndMetricsToDCM:Z

    if-eqz v1, :cond_3

    goto :goto_0

    .line 381
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->getMetricElapsedTime(Ljava/lang/String;)J

    move-result-wide v10

    .line 382
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    .line 385
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error"

    .line 382
    invoke-virtual {v1, v2, v5, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v7, v0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 389
    iget-wide v8, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->mTotalSize:J

    .line 391
    sget-object v1, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->FAILED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v12

    .line 392
    iget-object v1, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v13

    .line 393
    iget-object v1, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getErrorCode()Ljava/lang/String;

    move-result-object v14

    .line 394
    iget-object v15, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->errorDomainInfo:Lcom/amazon/kindle/webservices/ErrorDomainInfo;

    .line 395
    iget-boolean v1, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->sharedBookDownloadEnabled:Z

    .line 396
    iget-object v2, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->serverDomain:Ljava/lang/String;

    .line 397
    iget-object v4, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->triggerSource:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    .line 387
    invoke-static/range {v7 .. v18}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->reportDownloadEndedMetrics(Lcom/amazon/kindle/model/content/IBookID;JJLjava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Lcom/amazon/kindle/webservices/ErrorDomainInfo;ZLjava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    .line 399
    iput-boolean v3, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->reportedEndMetricsToDCM:Z

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    .line 371
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RequiredAssetsDownloadTimer"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Openable"

    .line 371
    invoke-virtual {v1, v2, v4, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private final processQAMetrics(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V
    .locals 3

    .line 319
    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 325
    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid download status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " while updating QA metrics"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_0
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_DOWNLOAD:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v0, "KindlePerformanceConstants.BOOK_DOWNLOAD"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    .line 322
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    const-string v1, "bookId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 320
    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private final declared-synchronized reportGroupStatusImpl(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V
    .locals 7

    monitor-enter p0

    if-nez p1, :cond_0

    .line 439
    :try_start_0
    sget-object p1, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calculated the group status as null. Ignore update. Book id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    .line 442
    :cond_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculated the group status as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Book id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->lastReportedGroupStatus:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    if-ne p1, v0, :cond_1

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was reported before. Ignore update. Book id: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    .line 447
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    const-string v1, "krlForDownloadFacade.contentOpenMetricsManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    sget-object v1, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 479
    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->TAG:Ljava/lang/String;

    const-string v1, "Invalid download status"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 469
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-virtual {v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getTotalBytes()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_4

    .line 471
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetGroup;->getAssets()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/services/download/IBookAsset;

    const-string v5, "asset"

    .line 472
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    .line 474
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-virtual {v1, v3, v4}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setTotalBytes(J)V

    .line 476
    :cond_4
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->applyTerminalMetrics(Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;)V

    goto :goto_2

    .line 456
    :cond_5
    iget-boolean v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->sharedBookDownloadEnabled:Z

    if-eqz v1, :cond_6

    .line 457
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->onSharedDownloadFailed(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 459
    :cond_6
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-virtual {v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getTotalBytes()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_8

    .line 461
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetGroup;->getAssets()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/services/download/IBookAsset;

    const-string v5, "asset"

    .line 462
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_1

    .line 464
    :cond_7
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-virtual {v1, v3, v4}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setTotalBytes(J)V

    .line 466
    :cond_8
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->applyTerminalMetrics(Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;)V

    goto :goto_2

    :cond_9
    const-string v1, "bookDownloadStartAssets"

    .line 452
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    .line 453
    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v3}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 450
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 481
    :goto_2
    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Report group status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Book id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->idownloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetGroup;->downloadPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetGroup;->getMaincontentFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/kindle/services/download/IDownloadTracker;->reportState(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Ljava/lang/String;)V

    .line 483
    :cond_a
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->processMetricsToDCM(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V

    .line 484
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->processMetricToDeliveryTeam(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V

    .line 485
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->processQAMetrics(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V

    .line 486
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->lastReportedGroupStatus:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final sendDownloadCompleteEvents()V
    .locals 7

    .line 583
    iget-boolean v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->downloadCompleteEventWasSent:Z

    if-eqz v0, :cond_0

    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    .line 590
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    .line 592
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->updateRequiredEndTime(Z)V

    .line 593
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->updateDeferredEndTime(Z)V

    .line 594
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->updateOptionalEndTime(Z)V

    .line 595
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->updateDownloadEndTime(Z)V

    .line 598
    iget-object v2, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->groupContext:Ljava/lang/String;

    .line 599
    iget-object v3, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 600
    iget-object v4, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->correlationId:Ljava/lang/String;

    .line 601
    iget-object v5, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    .line 602
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->progressTracker:Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;

    invoke-interface {v0}, Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;->getAllRequestsStatus()Ljava/util/Map;

    move-result-object v6

    .line 596
    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->sendDownloadCompleteEvent(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;Ljava/util/Map;)V

    const/4 v0, 0x1

    .line 606
    iput-boolean v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->downloadCompleteEventWasSent:Z

    .line 607
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->updateAssetGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z

    :cond_2
    return-void
.end method

.method private final updateDeferredEndTime(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 559
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDeferredEndTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 560
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setDeferredEndTime(J)V

    .line 561
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {p1, p0}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->updateAssetGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z

    :cond_1
    return-void
.end method

.method private final updateDownloadEndTime(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 573
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDownloadEndTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 574
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setDownloadEndTime(J)V

    .line 575
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {p1, p0}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->updateAssetGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z

    :cond_1
    return-void
.end method

.method private final updateOptionalEndTime(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 566
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getOptionalEndTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 567
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setOptionalEndTime(J)V

    .line 568
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {p1, p0}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->updateAssetGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z

    :cond_1
    return-void
.end method

.method private final updateRequiredEndTime(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 552
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getRequiredEndTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 553
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setRequiredEndTime(J)V

    .line 554
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {p1, p0}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->updateAssetGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public addAssets(Ljava/util/Collection;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;)",
            "Ljava/util/HashSet<",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            ">;"
        }
    .end annotation

    const-string v0, "additionalAssets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    .line 659
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->createRequests(Ljava/util/Collection;Ljava/util/Collection;Z)V

    .line 660
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->addAssets(Ljava/util/Collection;)Z

    .line 661
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->progressTracker:Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->initializeProgressTrackerState(Ljava/util/Collection;Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;)V

    .line 747
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    .line 662
    iget-object v2, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/services/download/IReaderDownloadManager;->addDownload(Lcom/amazon/kindle/services/download/IDownloadRequest;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public addDownloadRequests(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            ">;)V"
        }
    .end annotation

    const-string v0, "additionalRequests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IDownloadRequest;

    .line 650
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->progressTracker:Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;->getRequestStatus(Lcom/amazon/kindle/services/download/IDownloadRequest;)Lcom/amazon/kindle/webservices/RequestStatus;

    move-result-object v1

    if-nez v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->progressTracker:Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;->addNewRequest(Lcom/amazon/kindle/services/download/IDownloadRequest;)V

    .line 652
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->idToRequestMap:Ljava/util/Map;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "request.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetGroup;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    const-string v1, "bookId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->downloadEventStats:Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    return-object v0
.end method

.method public getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    return-object v0
.end method

.method public getGroupDownloadStatus()Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->progressTracker:Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;

    invoke-interface {v0}, Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;->translateToGroupStatus()Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    move-result-object v0

    return-object v0
.end method

.method public getIDownloadTracker()Lcom/amazon/kindle/services/download/IDownloadTracker;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->idownloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    return-object v0
.end method

.method public getRequest(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IDownloadRequest;
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->idToRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    return-object p1
.end method

.method public getRequestIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->idToRequestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRequests()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            ">;"
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->idToRequestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredAssetSize()J
    .locals 8

    .line 695
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/AssetGroup;->getAssets()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/services/download/IBookAsset;

    const-string v6, "asset"

    .line 696
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v6

    sget-object v7, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    if-ne v6, v7, :cond_0

    .line 697
    invoke-interface {v5}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const-wide v3, 0x7fffffffffffffffL

    :goto_1
    return-wide v3
.end method

.method public getTotalAssetSize()J
    .locals 2

    .line 690
    iget-wide v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->mTotalSize:J

    return-wide v0
.end method

.method public isComplete()Z
    .locals 2

    .line 645
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->getGroupDownloadStatus()Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onAssetDownloadComplete(Lcom/amazon/kindle/services/download/IDownloadRequest;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    new-instance v0, Lcom/amazon/kindle/event/Event;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->ASSET_DOWNLOAD_COMPLETE:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/event/BaseEventProvider;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    return-void
.end method

.method public reportGroupStatus(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V
    .locals 3

    .line 304
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "Looper.getMainLooper()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$reportGroupStatus$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$reportGroupStatus$1;-><init>(Lcom/amazon/kindle/download/assets/DownloadRequestGroup;Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 307
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->reportGroupStatusImpl(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;)V

    :goto_0
    return-void
.end method

.method public setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->getRequestIds()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 749
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 668
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->getRequest(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 669
    invoke-interface {v1, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 670
    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getStatusAndProgressTracker()Ljava/util/List;

    move-result-object v2

    const-string v3, "statusAndProgressTracker"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    .line 671
    sget-object v4, Lcom/amazon/kindle/webservices/RequestStatus;->ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-interface {v3, v1, v4}, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;->reportStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setErrorDetails(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;Ljava/lang/String;Lcom/amazon/kindle/webservices/ErrorDomainInfo;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->errorDescriber:Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    .line 711
    iput-object p2, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->serverDomain:Ljava/lang/String;

    .line 712
    iput-object p3, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->errorDomainInfo:Lcom/amazon/kindle/webservices/ErrorDomainInfo;

    return-void
.end method

.method public setIDownloadTracker(Lcom/amazon/kindle/services/download/IDownloadTracker;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->idownloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    .line 628
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->progressTracker:Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;->setDownloadTracker(Lcom/amazon/kindle/services/download/IDownloadTracker;)V

    return-void
.end method

.method public setReportedToPreconditionMetrics(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 678
    iput-boolean p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->reportedToPreconditionMetrics:Z

    return-void
.end method

.method public shouldPreemptCurrentDownload()Z
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->triggerSource:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    instance-of v0, v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$ONE_TAP;

    return v0
.end method
