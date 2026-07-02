.class public final Lcom/amazon/kindle/services/download/DownloadContentService;
.super Ljava/lang/Object;
.source "DownloadContentService.kt"

# interfaces
.implements Lcom/amazon/kindle/services/download/IDownloadService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;,
        Lcom/amazon/kindle/services/download/DownloadContentService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadContentService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadContentService.kt\ncom/amazon/kindle/services/download/DownloadContentService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,754:1\n1517#2:755\n1588#2,3:756\n1690#2,3:759\n1819#2,2:763\n1#3:762\n1#3:775\n105#4,9:765\n181#4:774\n182#4:776\n114#4:777\n*E\n*S KotlinDebug\n*F\n+ 1 DownloadContentService.kt\ncom/amazon/kindle/services/download/DownloadContentService\n*L\n96#1:755\n96#1,3:756\n96#1,3:759\n360#1,2:763\n507#1:775\n507#1,9:765\n507#1:774\n507#1:776\n507#1:777\n*E\n"
.end annotation


# static fields
.field private static final CONCURRENT_BOOK_DOWNLOAD_LIMIT:I = 0xa

.field public static final Companion:Lcom/amazon/kindle/services/download/DownloadContentService$Companion;

.field public static final METRIC_EVENT_MKDIRS_FAILED:Ljava/lang/String; = "MkdirsFailed"

.field public static final METRIC_SOURCE:Ljava/lang/String; = "DownloadContentService"

.field private static final RETRY_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

.field private static final TAG:Ljava/lang/String;

.field private static final UNTRACKED_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

.field private static final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# instance fields
.field private final assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

.field private final downloadLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

.field private final downloadQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;",
            ">;>;"
        }
    .end annotation
.end field

.field private final downloadsInProgress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/services/download/ContentDownload;",
            ">;"
        }
    .end annotation
.end field

.field private final krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

.field private final workflowHandler:Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/amazon/kindle/services/download/DownloadContentService;

    new-instance v1, Lcom/amazon/kindle/services/download/DownloadContentService$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amazon/kindle/services/download/DownloadContentService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/amazon/kindle/services/download/DownloadContentService;->Companion:Lcom/amazon/kindle/services/download/DownloadContentService$Companion;

    .line 64
    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 68
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    const-string v1, "UntrackedDownload"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->UNTRACKED_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    .line 69
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    const-string v1, "DownloadServiceRetry"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->RETRY_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kindle/services/download/IReaderDownloadManager;Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;)V
    .locals 1

    const-string v0, "krlForDownloadFacade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetStateManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workflowHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iput-object p2, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    iput-object p3, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    iput-object p4, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->workflowHandler:Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;

    .line 77
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 80
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 81
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadsInProgress:Ljava/util/Map;

    .line 82
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadQueue:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static final synthetic access$getDownloadLock$p(Lcom/amazon/kindle/services/download/DownloadContentService;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static final synthetic access$getDownloadsInProgress$p(Lcom/amazon/kindle/services/download/DownloadContentService;)Ljava/util/Map;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadsInProgress:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getRETRY_DOWNLOAD_TRIGGER$cp()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->RETRY_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    return-object v0
.end method

.method public static final synthetic access$getUNTRACKED_DOWNLOAD_TRIGGER$cp()Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->UNTRACKED_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    return-object v0
.end method

.method public static final synthetic access$sendDownloadStateUpdateEvent(Lcom/amazon/kindle/services/download/DownloadContentService;Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/services/download/DownloadContentService;->sendDownloadStateUpdateEvent(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;Lcom/amazon/kindle/services/download/IContentDownload;)V

    return-void
.end method

.method public static final synthetic access$updateDownloadProgress(Lcom/amazon/kindle/services/download/DownloadContentService;Lcom/amazon/kindle/services/download/ContentDownload;JJ)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kindle/services/download/DownloadContentService;->updateDownloadProgress(Lcom/amazon/kindle/services/download/ContentDownload;JJ)V

    return-void
.end method

.method private final cancelFromDownloadManager(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getDownloadGroup(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 342
    sget-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot cancel download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", it\'s not in progress"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    .line 346
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getRequestIds()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 347
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/services/download/IReaderDownloadManager;->cancelDownload(Ljava/util/Map;)Z

    return-void
.end method

.method private final checkAlreadyInProgress(Ljava/lang/String;)Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadsInProgress:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final createContentDownload(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Lcom/amazon/kindle/services/download/ContentDownload;
    .locals 3

    .line 414
    new-instance v0, Lcom/amazon/kindle/services/download/ContentDownload;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    const-string v2, "contentMetadata.bookID"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/amazon/kindle/services/download/ContentDownload;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    .line 415
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->hasMultimediaContent()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/services/download/ContentDownload;->setIsLuna(Z)V

    .line 416
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/services/download/ContentDownload;->setState(Lcom/amazon/kindle/model/content/ContentState;)V

    return-object v0
.end method

.method private final doCancel(Lcom/amazon/kindle/content/ContentMetadata;Z)Z
    .locals 6

    const-string v0, "bookId.serializedForm"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 300
    sget-object p1, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    const-string p2, "Cancel download called with null metadata"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 304
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v3

    .line 305
    invoke-static {v3}, Lcom/amazon/kindle/model/content/ContentState;->isDownloading(Lcom/amazon/kindle/model/content/ContentState;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 306
    invoke-static {v3}, Lcom/amazon/kindle/model/content/ContentState;->isQueued(Lcom/amazon/kindle/model/content/ContentState;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v4, :cond_1

    .line 310
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    .line 312
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    .line 313
    iget-object v3, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v3}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v3

    .line 315
    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual {v4}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 313
    invoke-virtual {v3, v1, v4}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->removeMetrics(Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 320
    sget-object v3, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelling manifest download for bookId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "bookId"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", userInitiated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 319
    invoke-static {v3, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object p2, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->workflowHandler:Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;->cancelDownload(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0, v1}, Lcom/amazon/kindle/services/download/DownloadContentService;->cancelFromDownloadManager(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 328
    iget-object p2, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {p2, v1}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->unpersistAllAssets(Lcom/amazon/kindle/model/content/IBookID;)V

    .line 330
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/amazon/kindle/services/download/DownloadContentService;->getContentDownload(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IContentDownload;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/amazon/kindle/services/download/ContentDownload;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/services/download/DownloadContentService;->UNTRACKED_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    invoke-direct {p2, v0, v3}, Lcom/amazon/kindle/services/download/ContentDownload;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadQueue:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->CANCEL:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/services/download/DownloadContentService;->sendDownloadStateUpdateEvent(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;Lcom/amazon/kindle/services/download/IContentDownload;)V

    .line 333
    sget-object p2, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling download for bookId "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0, p1}, Lcom/amazon/kindle/services/download/DownloadContentService;->reportDownloadCancelledMetrics(Lcom/amazon/kindle/content/ContentMetadata;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 335
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    .line 303
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private final doDownload(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "AllAssetsDownloadTimer"

    const-string v4, "contentMetadata.bookID"

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    const-string v2, "Metadata is null, download fails to start"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 137
    :cond_0
    iget-object v6, v1, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 138
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v7

    const-string v8, "contentMetadata.bookID.serializedForm"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-direct {v1, v7}, Lcom/amazon/kindle/services/download/DownloadContentService;->checkAlreadyInProgress(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 140
    sget-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to download a book that is already in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v5

    .line 143
    :cond_1
    :try_start_1
    sget-object v8, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Doing download for bookId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v12

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v11

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->hasMultimediaContent()Z

    move-result v14

    move-object/from16 v8, p3

    .line 147
    invoke-direct {v1, v0, v8}, Lcom/amazon/kindle/services/download/DownloadContentService;->createContentDownload(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Lcom/amazon/kindle/services/download/ContentDownload;

    move-result-object v9

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/amazon/kindle/services/download/DownloadContentService;->computeContentDownloadPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/io/File;

    move-result-object v15

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v4

    .line 154
    sget-object v10, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->Factory:Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/services/download/DownloadContentService;->getExcludedTransportMethod(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v13

    invoke-virtual {v10, v2, v13}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties$Factory;->buildFrom(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    move-result-object v17

    const/4 v13, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v17, :cond_3

    .line 156
    invoke-virtual/range {v17 .. v17}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->getForced()Z

    move-result v5

    .line 160
    :cond_3
    sget-object v10, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v10, v4, :cond_4

    if-nez v5, :cond_4

    .line 161
    sget-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received download for already local content from remote todo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v13

    .line 166
    :cond_4
    :try_start_2
    iget-object v2, v1, Lcom/amazon/kindle/services/download/DownloadContentService;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v2

    const-string v5, "bookDownloadEnqueued"

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v10

    sget-object v16, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->Companion:Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;

    invoke-virtual/range {v16 .. v16}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager$Companion;->getDOWNLOAD_CONTENT_OPEN_METRIC_TYPES()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    move-result-object v13

    array-length v0, v13

    invoke-static {v13, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    invoke-virtual {v2, v5, v10, v0}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 172
    iget-object v0, v1, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadsInProgress:Ljava/util/Map;

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v2, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStartedStateEvent;

    invoke-direct {v2, v7}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStartedStateEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 174
    new-instance v0, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;

    invoke-direct {v0, v1, v7}, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;-><init>(Lcom/amazon/kindle/services/download/DownloadContentService;Ljava/lang/String;)V

    .line 178
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_DOWNLOAD:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v5, "KindlePerformanceConstants.BOOK_DOWNLOAD"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    .line 177
    invoke-static {v2, v5, v10}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RequiredAssetsDownloadTimer"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->getMetricStartTimestampInMillis(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Lcom/amazon/kindle/services/download/ContentDownload;->setDownloadStartTime(J)V

    if-nez v4, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    .line 189
    :cond_5
    sget-object v2, Lcom/amazon/kindle/services/download/DownloadContentService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v5, 0x2

    if-eq v2, v5, :cond_6

    const/4 v5, 0x3

    if-eq v2, v5, :cond_6

    const/4 v5, 0x4

    if-eq v2, v5, :cond_6

    .line 197
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not sending QUEUED event for new download with ContentState: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    .line 194
    :cond_6
    sget-object v2, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->QUEUED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-direct {v1, v2, v9}, Lcom/amazon/kindle/services/download/DownloadContentService;->sendDownloadStateUpdateEvent(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;Lcom/amazon/kindle/services/download/IContentDownload;)V

    .line 202
    :goto_2
    new-instance v2, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;

    const-string v4, "asin"

    .line 203
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "bookType"

    .line 204
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v2

    move-object/from16 v13, p3

    move-object/from16 v16, v0

    .line 202
    invoke-direct/range {v10 .. v17}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;ZLjava/io/File;Lcom/amazon/kindle/services/download/IDownloadTracker;Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;)V

    .line 211
    iget-object v0, v1, Lcom/amazon/kindle/services/download/DownloadContentService;->workflowHandler:Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/download/workflow/DownloadWorkflowHandler;->startDownload(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V

    .line 212
    sget-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully passed download to the DownloadWorkflowHandler for bookid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v3

    :catchall_0
    move-exception v0

    .line 137
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private final enqueueDownload(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
    .locals 6

    const-string v0, "contentMetadata.bookID.serializedForm"

    const-string v1, "contentMetadata.bookID"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 721
    sget-object p1, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    const-string p2, "Metadata is null, failed to enqueue the download"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 724
    :cond_0
    iget-object v3, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 726
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/amazon/kindle/services/download/DownloadContentService;->checkAlreadyInProgress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 728
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadQueue:Ljava/util/LinkedHashMap;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    new-instance p1, Lcom/amazon/kindle/services/download/ContentDownload;

    invoke-direct {p1, v1, p2}, Lcom/amazon/kindle/services/download/ContentDownload;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    .line 734
    sget-object p2, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->QUEUED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/services/download/DownloadContentService;->sendDownloadStateUpdateEvent(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;Lcom/amazon/kindle/services/download/IContentDownload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 735
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 737
    :cond_1
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :catchall_0
    move-exception p1

    .line 724
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private final getBoolean(Lcom/amazon/kindle/krx/messaging/ITodoItem;Ljava/lang/String;)Z
    .locals 1

    .line 652
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 653
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/16 v0, 0x31

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "1"

    .line 655
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    .line 656
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method private final getExcludedTransportMethod(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
    .locals 1

    .line 225
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isWifiOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sget-object p1, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->WAN:Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 228
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getExcludedTransportMethods()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final reportDownloadCancelledMetrics(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 553
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    sget-object v0, Lcom/amazon/kindle/metrics/FalkorMetricUtils;->INSTANCE:Lcom/amazon/kindle/metrics/FalkorMetricUtils;

    invoke-virtual {v0}, Lcom/amazon/kindle/metrics/FalkorMetricUtils;->reportDownloadCanceledMetrics()V

    .line 557
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    const-wide/16 v3, 0x0

    .line 560
    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->CANCELLED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    .line 556
    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/metrics/DownloadMetricsManager;->reportDownloadEndedMetricsLocalBroadcast(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/content/ContentMetadata;JLjava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->removeIssueDownloadingMimetype(Ljava/lang/String;)V

    return-void
.end method

.method private final reportDownloadCompletedMetrics(Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 8

    .line 525
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-nez v0, :cond_1

    .line 527
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "bookId"

    .line 528
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq v1, v2, :cond_0

    return-void

    .line 531
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    .line 534
    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const/4 v3, 0x2

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    .line 536
    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    const-string v5, "asin"

    invoke-static {v5, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IContentDownload;->getDownloadStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v4, "downloadTime"

    invoke-static {v4, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v3, v0

    .line 535
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "DownloadContentCommand"

    const-string v3, "BookDownloadTime"

    .line 531
    invoke-virtual {v1, v0, v3, v2, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private final scheduleNextDownload()V
    .locals 5

    .line 745
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 747
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadsInProgress:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 748
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "iterator.next().value"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/Pair;

    .line 749
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 750
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/content/ContentMetadata;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-direct {p0, v3, v4, v2}, Lcom/amazon/kindle/services/download/DownloadContentService;->doDownload(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    goto :goto_0

    .line 752
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private final sendDownloadStateUpdateEvent(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;Lcom/amazon/kindle/services/download/IContentDownload;)V
    .locals 1

    .line 239
    new-instance v0, Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/services/download/IDownloadService$KRXDownloadStateUpdateEvent;-><init>(Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;Lcom/amazon/kindle/services/download/IContentDownload;)V

    .line 240
    sget-object p1, Lcom/amazon/kindle/services/download/DownloadContentService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private final updateDownloadProgress(Lcom/amazon/kindle/services/download/ContentDownload;JJ)V
    .locals 7

    .line 430
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/ContentDownload;->getMaxProgress()J

    move-result-wide v0

    invoke-static {p4, p5, v0, v1}, Lcom/amazon/kindle/services/download/ContentDownload;->getProgressPercentage(JJ)I

    move-result v0

    .line 431
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/ContentDownload;->getMaxOpenableProgress()J

    move-result-wide v1

    invoke-static {p2, p3, v1, v2}, Lcom/amazon/kindle/services/download/ContentDownload;->getProgressPercentage(JJ)I

    move-result v1

    .line 432
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/ContentDownload;->getPercentage()I

    move-result v2

    .line 433
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/ContentDownload;->getOpenablePercentage()I

    move-result v3

    .line 435
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/ContentDownload;->getProgress()J

    move-result-wide v4

    cmp-long v6, p4, v4

    if-gez v6, :cond_0

    .line 436
    sget-object v4, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Progress is going backwards for download of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/ContentDownload;->getBookId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/amazon/kindle/services/download/ContentDownload;->setCurrentOpenableProgress(J)V

    .line 439
    invoke-virtual {p1, p4, p5}, Lcom/amazon/kindle/services/download/ContentDownload;->setCurrentProgress(J)V

    if-ne v0, v2, :cond_1

    if-eq v3, v1, :cond_2

    .line 448
    :cond_1
    new-instance p2, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/ContentDownload;->clone()Lcom/amazon/kindle/services/download/ContentDownload;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;-><init>(Lcom/amazon/kindle/services/download/IContentDownload;)V

    .line 449
    sget-object p1, Lcom/amazon/kindle/services/download/DownloadContentService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_2
    return-void
.end method

.method private final updateDownloadState(Lcom/amazon/kindle/services/download/ContentDownload;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 8

    .line 461
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 462
    :try_start_0
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    .line 463
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/ContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    .line 464
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getError()I

    move-result v3

    invoke-static {v3}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->getFromSerialized(I)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v3

    .line 465
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/ContentDownload;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v4

    .line 466
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/services/download/ContentDownload;->setState(Lcom/amazon/kindle/model/content/ContentState;)V

    if-eq v3, v4, :cond_0

    .line 469
    sget-object v5, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download error state changes from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1, v3}, Lcom/amazon/kindle/services/download/ContentDownload;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 471
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/ContentDownload;->getErrorDescriber()Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v5

    const-string v6, "errorDescriber"

    .line 472
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getCDEErrorCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setErrorCode(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getErrorLinkTitle()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setErrorDisplayButtonTag(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getErrorLink()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setErrorLink(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setErrorMessage(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getErrorTitle()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setErrorTitle(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->shouldDisplayCDEError()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setShouldDisplayCDEError(Z)V

    :cond_0
    const-string v5, "newState"

    .line 483
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/model/content/ContentState;->isTerminal()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    const-string v5, "newMetadata.bookID"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->isHidden()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kindle/model/content/ContentState;->isFailure()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 490
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/ContentDownload;->clone()Lcom/amazon/kindle/services/download/ContentDownload;

    move-result-object p1

    goto :goto_1

    .line 484
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/services/download/DownloadContentService;->reportDownloadCompletedMetrics(Lcom/amazon/kindle/services/download/IContentDownload;)V

    .line 486
    iget-object p2, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadsInProgress:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/ContentDownload;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/services/download/ContentDownload;

    .line 487
    invoke-direct {p0}, Lcom/amazon/kindle/services/download/DownloadContentService;->scheduleNextDownload()V

    :goto_1
    if-ne v1, v2, :cond_3

    if-eq v3, v4, :cond_4

    .line 495
    :cond_3
    sget-object p2, Lcom/amazon/kindle/services/download/DownloadContentService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v2, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;

    invoke-direct {v2, v1, p1}, Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;-><init>(Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/services/download/IContentDownload;)V

    invoke-interface {p2, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 497
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method


# virtual methods
.method public cancel(Lcom/amazon/kindle/content/ContentMetadata;Z)Z
    .locals 1

    const-string v0, "contentMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/services/download/DownloadContentService;->doCancel(Lcom/amazon/kindle/content/ContentMetadata;Z)Z

    move-result p1

    return p1
.end method

.method public cancel(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/services/download/DownloadContentService;->doCancel(Lcom/amazon/kindle/content/ContentMetadata;Z)Z

    move-result p1

    return p1
.end method

.method public final computeContentDownloadPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/io/File;
    .locals 2

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getDownloadPath(Lcom/amazon/kindle/model/content/IBookID;Z)Ljava/lang/String;

    move-result-object p1

    .line 576
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public download(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
    .locals 1

    const-string v0, "downloadTrigger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kindle/services/download/DownloadContentService;->doDownload(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result p1

    return p1
.end method

.method public download(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
    .locals 2

    const-string v0, "downloadTrigger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    const-string v1, "silentUpdate"

    .line 108
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/services/download/DownloadContentService;->getBoolean(Lcom/amazon/kindle/krx/messaging/ITodoItem;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isSilentUpdatesEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 110
    invoke-direct {p0, p2, p1, p3}, Lcom/amazon/kindle/services/download/DownloadContentService;->doDownload(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result v0

    goto :goto_3

    :cond_2
    const-string p1, "Silent updates not supported"

    .line 109
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    const-string p1, "Download called with a null TODO item"

    .line 107
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_2
    sget-object p2, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    const-string p3, "Failing download due to illegal state"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return v0
.end method

.method public download(Ljava/util/Collection;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;",
            "Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;",
            ")Z"
        }
    .end annotation

    const-string v0, "contentMetadataCollection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadTrigger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 756
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 757
    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    .line 96
    invoke-direct {p0, v1, p2}, Lcom/amazon/kindle/services/download/DownloadContentService;->enqueueDownload(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 759
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 760
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p2, 0x0

    .line 97
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kindle/services/download/DownloadContentService;->scheduleNextDownload()V

    return p2
.end method

.method public getContentDownload(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IContentDownload;
    .locals 1

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadsInProgress:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/services/download/ContentDownload;

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p1}, Lcom/amazon/kindle/services/download/ContentDownload;->clone()Lcom/amazon/kindle/services/download/ContentDownload;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getDownloadGroup(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 6

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getDownloadGroup(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 662
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getIDownloadTracker()Lcom/amazon/kindle/services/download/IDownloadTracker;

    move-result-object v1

    if-nez v1, :cond_2

    .line 663
    new-instance v1, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bookId.serializedForm"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/amazon/kindle/services/download/DownloadContentService$DownloadContentStatusTracker;-><init>(Lcom/amazon/kindle/services/download/DownloadContentService;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->setIDownloadTracker(Lcom/amazon/kindle/services/download/IDownloadTracker;)V

    .line 665
    iget-object v1, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 666
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadsInProgress:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 667
    new-instance v2, Lcom/amazon/kindle/services/download/ContentDownload;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/services/download/DownloadContentService;->UNTRACKED_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    invoke-direct {v2, v4, v5}, Lcom/amazon/kindle/services/download/ContentDownload;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    .line 668
    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v2, v4}, Lcom/amazon/kindle/services/download/ContentDownload;->setState(Lcom/amazon/kindle/model/content/ContentState;)V

    .line 669
    iget-object v4, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadsInProgress:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public handleDownloadError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/services/download/IReaderDownloadManager;->handleDownloadError(Ljava/lang/String;)V

    return-void
.end method

.method public final onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_3

    .line 506
    iget-object p1, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadsInProgress:Ljava/util/Map;

    .line 765
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 774
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 773
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 508
    invoke-static {v2}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    .line 509
    iget-object v3, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    invoke-interface {v3, v2}, Lcom/amazon/kindle/download/assets/IAssetStateManager;->getDownloadGroup(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 510
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getRequestIds()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 773
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 513
    :cond_2
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/services/download/IReaderDownloadManager;->cancelDownload(Ljava/util/Map;)Z

    .line 515
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadsInProgress:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 516
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method public final onContentUpdate(Ljava/util/Collection;)V
    .locals 9
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentUpdate;

    .line 361
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "contentUpdate.metadata ?\u2026urn@forEach\n            }"

    .line 363
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    const-string v3, "newMetadata.bookID"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "newMetadata.bookID.serializedForm"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getUpdatedFields()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 368
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 369
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 370
    iget-object v6, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadsInProgress:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/services/download/ContentDownload;

    if-eqz v6, :cond_5

    if-nez v4, :cond_1

    if-eqz v5, :cond_4

    .line 374
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 375
    invoke-virtual {v6}, Lcom/amazon/kindle/services/download/ContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v5

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v7

    if-eq v5, v7, :cond_2

    .line 377
    sget-object v5, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    .line 378
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mismatch of content state between DownloadContentService and LibraryContentService! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "download state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v6}, Lcom/amazon/kindle/services/download/ContentDownload;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " old content state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (new state is "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v5, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->getFromSerialized(I)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 385
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v5, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, v5, :cond_3

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v5, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v0, v5, :cond_3

    .line 387
    sget-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    const-string v5, "DownloadContentService updating download error, but download is not marked as failed"

    .line 386
    invoke-static {v0, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_3
    invoke-direct {p0, v6, v1}, Lcom/amazon/kindle/services/download/DownloadContentService;->updateDownloadState(Lcom/amazon/kindle/services/download/ContentDownload;Lcom/amazon/kindle/content/ContentMetadata;)V

    :cond_4
    if-eqz v6, :cond_5

    goto :goto_2

    .line 394
    :cond_5
    sget-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received update for book id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/amazon/kindle/util/BookIdUtils;->logSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not in flight"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_7

    .line 396
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v4, :cond_6

    .line 397
    sget-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->UNTRACKED_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/services/download/DownloadContentService;->createContentDownload(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Lcom/amazon/kindle/services/download/ContentDownload;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadsInProgress:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 400
    :cond_6
    sget-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v4, Lcom/amazon/kindle/services/download/IDownloadService$UntrackedDownloadStateChangedEvent;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Lcom/amazon/kindle/services/download/IDownloadService$UntrackedDownloadStateChangedEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/model/content/ContentState;)V

    invoke-interface {v0, v4}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 403
    :cond_7
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    if-eqz v3, :cond_8

    goto/16 :goto_0

    .line 405
    :cond_8
    sget-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update fields empty for bookId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public registerDownloadTracker(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V
    .locals 1

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusTracker"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/services/download/IReaderDownloadManager;->registerDownloadTracker(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V

    return-void
.end method

.method public varargs reprioritizeDownload(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/services/download/IReaderDownloadManager;->reprioritizeDownload(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public restartFailedDownloads(Ljava/lang/String;)V
    .locals 4

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 698
    sget-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot restart failed download for book "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". No ContentMetadata exists for it"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/services/download/DownloadContentService;->downloadManager:Lcom/amazon/kindle/services/download/IReaderDownloadManager;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/services/download/IReaderDownloadManager;->restartFailedDownloads(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 702
    sget-object v0, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully restarted the download of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " within the download manager"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 704
    :cond_1
    sget-object v1, Lcom/amazon/kindle/services/download/DownloadContentService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling and restarting the entire download for bookId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 705
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/services/download/DownloadContentService;->cancel(Lcom/amazon/kindle/content/ContentMetadata;Z)Z

    .line 706
    sget-object p1, Lcom/amazon/kindle/services/download/DownloadContentService;->RETRY_DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/services/download/DownloadContentService;->download(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    :goto_0
    return-void
.end method
