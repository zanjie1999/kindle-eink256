.class public final Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;
.super Ljava/lang/Object;
.source "DownloadRequestGroupProgressAndStatusTracker.kt"

# interfaces
.implements Lcom/amazon/kindle/download/assets/IAssetGroupRequestProgressAndStatusTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;,
        Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadRequestGroupProgressAndStatusTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadRequestGroupProgressAndStatusTracker.kt\ncom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,366:1\n436#2:367\n386#2:368\n355#2,7:376\n1206#3,4:369\n1#4:373\n181#5,2:374\n13506#6,2:383\n*E\n*S KotlinDebug\n*F\n+ 1 DownloadRequestGroupProgressAndStatusTracker.kt\ncom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker\n*L\n183#1:367\n183#1:368\n349#1,7:376\n183#1,4:369\n306#1,2:374\n88#1,2:383\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$Companion;


# instance fields
.field private final assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

.field private final downloadRequestGroup:Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

.field private downloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

.field private final innerRequestTracker:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;

.field private lastProgressUpdateTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

.field private final priorityToStatusToCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/services/download/AssetPriority;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/amazon/kindle/webservices/RequestStatus;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final progressMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            "Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final progressThrottleInMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->Companion:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/download/assets/DownloadRequestGroup;Lcom/amazon/kindle/services/download/IDownloadTracker;Lcom/amazon/kindle/download/assets/IAssetStateManager;J)V
    .locals 1

    const-string v0, "downloadRequestGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetStateManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->downloadRequestGroup:Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    iput-object p2, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->downloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    iput-object p3, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    iput-wide p4, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->progressThrottleInMs:J

    .line 83
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->progressMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->priorityToStatusToCountMap:Ljava/util/Map;

    .line 85
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->lastProgressUpdateTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 88
    invoke-static {}, Lcom/amazon/kindle/services/download/AssetPriority;->values()[Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object p1

    .line 383
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object p4, p1, p3

    .line 88
    iget-object p5, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->priorityToStatusToCountMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {p5, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;-><init>(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)V

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->innerRequestTracker:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/download/assets/DownloadRequestGroup;Lcom/amazon/kindle/services/download/IDownloadTracker;Lcom/amazon/kindle/download/assets/IAssetStateManager;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    .locals 7

    const-string v0, "downloadRequestGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetStateManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadTriggerSource"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->Companion:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$Companion;

    invoke-virtual {v0, p4}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$Companion;->getProgressThrottleFor(Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 74
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;-><init>(Lcom/amazon/kindle/download/assets/DownloadRequestGroup;Lcom/amazon/kindle/services/download/IDownloadTracker;Lcom/amazon/kindle/download/assets/IAssetStateManager;J)V

    return-void
.end method

.method public static final synthetic access$getAssetStateManager$p(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)Lcom/amazon/kindle/download/assets/IAssetStateManager;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->assetStateManager:Lcom/amazon/kindle/download/assets/IAssetStateManager;

    return-object p0
.end method

.method public static final synthetic access$getDownloadRequestGroup$p(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)Lcom/amazon/kindle/download/assets/DownloadRequestGroup;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->downloadRequestGroup:Lcom/amazon/kindle/download/assets/DownloadRequestGroup;

    return-object p0
.end method

.method public static final synthetic access$getLastProgressUpdateTimeStamp$p(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->lastProgressUpdateTimeStamp:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static final synthetic access$getOrCreateDownloadStatus(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;Lcom/amazon/kindle/services/download/IDownloadRequest;)Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->getOrCreateDownloadStatus(Lcom/amazon/kindle/services/download/IDownloadRequest;)Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getProgressThrottleInMs$p(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->progressThrottleInMs:J

    return-wide v0
.end method

.method public static final synthetic access$reportCurrentProgress(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->reportCurrentProgress()V

    return-void
.end method

.method public static final synthetic access$updateStatusCountMap(Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;Lcom/amazon/kindle/services/download/AssetPriority;Lcom/amazon/kindle/webservices/RequestStatus;Lcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->updateStatusCountMap(Lcom/amazon/kindle/services/download/AssetPriority;Lcom/amazon/kindle/webservices/RequestStatus;Lcom/amazon/kindle/webservices/RequestStatus;)V

    return-void
.end method

.method private final getOrCreateDownloadStatus(Lcom/amazon/kindle/services/download/IDownloadRequest;)Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->progressMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/webservices/RequestStatus;->QUEUED:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->handleNewRequest(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/webservices/RequestStatus;)Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final getRequestStatusToCountMap(Lcom/amazon/kindle/services/download/AssetPriority;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/services/download/AssetPriority;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/webservices/RequestStatus;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->priorityToStatusToCountMap:Ljava/util/Map;

    .line 376
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 349
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 379
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_0
    check-cast v1, Ljava/util/Map;

    return-object v1
.end method

.method private final handleNewRequest(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/webservices/RequestStatus;)Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;
    .locals 9

    .line 266
    new-instance v7, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v0

    const-string v8, "request.bookAsset"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v2

    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;-><init>(ZJJLcom/amazon/kindle/webservices/RequestStatus;)V

    .line 268
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->progressMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "handleNewRequest"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " that has been encountered before."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "it"

    .line 271
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 274
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object p1

    const-string v0, "request.bookAsset.priority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->updateStatusCountMap(Lcom/amazon/kindle/services/download/AssetPriority;Lcom/amazon/kindle/webservices/RequestStatus;Lcom/amazon/kindle/webservices/RequestStatus;)V

    return-object v7
.end method

.method private final reportCurrentProgress()V
    .locals 16

    move-object/from16 v0, p0

    .line 306
    iget-object v1, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->progressMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 374
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 307
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    invoke-virtual {v13}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->getTotalBytes$com_amazon_kindle_dm()J

    move-result-wide v13

    .line 308
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    invoke-virtual {v15}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->getRequestStatus$com_amazon_kindle_dm()Lcom/amazon/kindle/webservices/RequestStatus;

    move-result-object v15

    sget-object v2, Lcom/amazon/kindle/webservices/RequestStatus;->COMPLETE:Lcom/amazon/kindle/webservices/RequestStatus;

    if-ne v15, v2, :cond_1

    move-wide v2, v13

    goto :goto_1

    .line 311
    :cond_1
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    invoke-virtual {v2}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->getByteProgress$com_amazon_kindle_dm()J

    move-result-wide v2

    :goto_1
    add-long/2addr v4, v13

    add-long/2addr v8, v2

    .line 317
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amazon/kindle/services/download/IDownloadRequest;

    invoke-interface {v12}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v12

    const-string v15, "it.key.bookAsset"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v12

    sget-object v15, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    if-ne v12, v15, :cond_0

    add-long/2addr v6, v13

    add-long/2addr v10, v2

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    cmp-long v1, v6, v2

    if-nez v1, :cond_3

    goto :goto_2

    .line 328
    :cond_3
    iget-object v1, v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->downloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;

    if-eqz v1, :cond_4

    .line 343
    invoke-interface {v1, v6, v7, v4, v5}, Lcom/amazon/kindle/services/download/IDownloadTracker;->setMaxProgress(JJ)V

    .line 344
    invoke-interface {v1, v10, v11, v8, v9}, Lcom/amazon/kindle/services/download/IDownloadTracker;->reportCurrentProgress(JJ)V

    :cond_4
    :goto_2
    return-void
.end method

.method private final updateStatusCountMap(Lcom/amazon/kindle/services/download/AssetPriority;Lcom/amazon/kindle/webservices/RequestStatus;Lcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 2

    .line 288
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->getRequestStatusToCountMap(Lcom/amazon/kindle/services/download/AssetPriority;)Ljava/util/Map;

    move-result-object p1

    .line 290
    monitor-enter p1

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 291
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    .line 292
    :cond_1
    :goto_1
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1

    throw p2
.end method


# virtual methods
.method public addNewRequest(Lcom/amazon/kindle/services/download/IDownloadRequest;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->innerRequestTracker:Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$innerRequestTracker$1;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->registerStatusTracker(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 174
    sget-object v0, Lcom/amazon/kindle/webservices/RequestStatus;->QUEUED:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->handleNewRequest(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/webservices/RequestStatus;)Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    return-void
.end method

.method public getAllRequestsStatus()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            "Lcom/amazon/kindle/webservices/RequestStatus;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->progressMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->progressMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 367
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 368
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 369
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 370
    move-object v4, v3

    check-cast v4, Ljava/util/Map$Entry;

    .line 368
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v3, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    invoke-virtual {v3}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->getRequestStatus$com_amazon_kindle_dm()Lcom/amazon/kindle/webservices/RequestStatus;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 182
    monitor-exit v0

    throw v1
.end method

.method public getRequestStatus(Lcom/amazon/kindle/services/download/IDownloadRequest;)Lcom/amazon/kindle/webservices/RequestStatus;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->progressMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$DownloadStatus;->getRequestStatus$com_amazon_kindle_dm()Lcom/amazon/kindle/webservices/RequestStatus;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public declared-synchronized setDownloadTracker(Lcom/amazon/kindle/services/download/IDownloadTracker;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->downloadTracker:Lcom/amazon/kindle/services/download/IDownloadTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public translateToGroupStatus()Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
    .locals 16

    move-object/from16 v1, p0

    .line 194
    iget-object v2, v1, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->priorityToStatusToCountMap:Ljava/util/Map;

    monitor-enter v2

    .line 195
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->getRequestStatusToCountMap(Lcom/amazon/kindle/services/download/AssetPriority;)Ljava/util/Map;

    move-result-object v0

    .line 196
    sget-object v3, Lcom/amazon/kindle/services/download/AssetPriority;->DEFERRED:Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-direct {v1, v3}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->getRequestStatusToCountMap(Lcom/amazon/kindle/services/download/AssetPriority;)Ljava/util/Map;

    move-result-object v3

    .line 197
    sget-object v4, Lcom/amazon/kindle/services/download/AssetPriority;->OPTIONAL:Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-direct {v1, v4}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;->getRequestStatusToCountMap(Lcom/amazon/kindle/services/download/AssetPriority;)Ljava/util/Map;

    move-result-object v4

    .line 199
    sget-object v5, Lcom/amazon/kindle/webservices/RequestStatus;->ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 200
    :goto_1
    sget-object v8, Lcom/amazon/kindle/webservices/RequestStatus;->QUEUED:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_2
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-lez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    .line 201
    :goto_3
    sget-object v9, Lcom/amazon/kindle/webservices/RequestStatus;->DOWNLOADING:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_4
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-lez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    .line 202
    :goto_5
    sget-object v10, Lcom/amazon/kindle/webservices/RequestStatus;->PAUSED:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :goto_6
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-lez v10, :cond_7

    const/4 v10, 0x1

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    .line 203
    :goto_7
    sget-object v11, Lcom/amazon/kindle/webservices/RequestStatus;->COMPLETE:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_8
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    .line 204
    :goto_9
    sget-object v11, Lcom/amazon/kindle/webservices/RequestStatus;->QUEUED:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_a

    goto :goto_a

    :cond_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_a
    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-lez v11, :cond_b

    const/4 v11, 0x1

    goto :goto_b

    :cond_b
    const/4 v11, 0x0

    .line 205
    :goto_b
    sget-object v12, Lcom/amazon/kindle/webservices/RequestStatus;->DOWNLOADING:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_c

    goto :goto_c

    :cond_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_c
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    if-lez v12, :cond_d

    const/4 v12, 0x1

    goto :goto_d

    :cond_d
    const/4 v12, 0x0

    .line 206
    :goto_d
    sget-object v13, Lcom/amazon/kindle/webservices/RequestStatus;->PAUSED:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_e

    goto :goto_e

    :cond_e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :goto_e
    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    if-lez v13, :cond_f

    const/4 v13, 0x1

    goto :goto_f

    :cond_f
    const/4 v13, 0x0

    .line 207
    :goto_f
    sget-object v14, Lcom/amazon/kindle/webservices/RequestStatus;->ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    goto :goto_10

    :cond_10
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_10
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_11

    const/4 v3, 0x1

    goto :goto_11

    :cond_11
    const/4 v3, 0x0

    .line 208
    :goto_11
    sget-object v14, Lcom/amazon/kindle/webservices/RequestStatus;->QUEUED:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_12

    goto :goto_12

    :cond_12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_12
    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    if-lez v14, :cond_13

    const/4 v14, 0x1

    goto :goto_13

    :cond_13
    const/4 v14, 0x0

    .line 209
    :goto_13
    sget-object v15, Lcom/amazon/kindle/webservices/RequestStatus;->DOWNLOADING:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_14

    goto :goto_14

    :cond_14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    :goto_14
    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    if-lez v15, :cond_15

    const/4 v15, 0x1

    goto :goto_15

    :cond_15
    const/4 v15, 0x0

    .line 210
    :goto_15
    sget-object v7, Lcom/amazon/kindle/webservices/RequestStatus;->PAUSED:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_16

    goto :goto_16

    :cond_16
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_16
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-lez v7, :cond_17

    const/4 v7, 0x1

    goto :goto_17

    :cond_17
    const/4 v7, 0x0

    .line 211
    :goto_17
    sget-object v6, Lcom/amazon/kindle/webservices/RequestStatus;->ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_18

    move-object v6, v4

    const/4 v4, 0x0

    goto :goto_18

    :cond_18
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_18
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-lez v6, :cond_19

    const/4 v6, 0x1

    goto :goto_19

    :cond_19
    const/4 v6, 0x0

    :goto_19
    if-eqz v5, :cond_1a

    .line 215
    sget-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->ERROR:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    :cond_1a
    if-eqz v10, :cond_1b

    .line 219
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->PAUSED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v0

    :cond_1b
    if-eqz v9, :cond_1c

    .line 223
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->DOWNLOADING:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v0

    :cond_1c
    if-nez v0, :cond_1d

    .line 227
    :try_start_3
    sget-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->QUEUED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-object v0

    :cond_1d
    if-eqz v8, :cond_1e

    .line 231
    :try_start_4
    sget-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->DOWNLOADING:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v2

    return-object v0

    .line 238
    :cond_1e
    :try_start_5
    invoke-static {}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v4, "All required assets are downloaded"

    invoke-static {v0, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1f

    .line 241
    sget-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->ERROR_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v2

    return-object v0

    :cond_1f
    if-eqz v13, :cond_20

    .line 245
    :try_start_6
    sget-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->PAUSED_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v2

    return-object v0

    :cond_20
    if-nez v12, :cond_24

    if-eqz v11, :cond_21

    goto :goto_1b

    .line 254
    :cond_21
    :try_start_7
    invoke-static {}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v3, "All deferred assets are downloaded"

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v14, :cond_23

    if-nez v15, :cond_23

    if-nez v7, :cond_23

    if-eqz v6, :cond_22

    goto :goto_1a

    .line 259
    :cond_22
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 194
    monitor-exit v2

    .line 261
    invoke-static {}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v2, "All assets are downloaded"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    return-object v0

    .line 257
    :cond_23
    :goto_1a
    :try_start_8
    sget-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED_INCOMPLETE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v2

    return-object v0

    .line 249
    :cond_24
    :goto_1b
    :try_start_9
    sget-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    .line 194
    monitor-exit v2

    throw v0
.end method
