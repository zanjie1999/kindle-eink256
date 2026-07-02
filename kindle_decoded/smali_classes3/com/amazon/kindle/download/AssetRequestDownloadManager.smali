.class public final Lcom/amazon/kindle/download/AssetRequestDownloadManager;
.super Ljava/lang/Object;
.source "AssetRequestDownloadManager.kt"

# interfaces
.implements Lcom/amazon/kindle/services/download/IReaderDownloadManager;
.implements Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetRequestDownloadManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetRequestDownloadManager.kt\ncom/amazon/kindle/download/AssetRequestDownloadManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,275:1\n1819#2,2:276\n3024#2,10:278\n1819#2,2:288\n1819#2,2:290\n734#2:292\n825#2,2:293\n1819#2,2:301\n46#3:295\n66#3,5:296\n*E\n*S KotlinDebug\n*F\n+ 1 AssetRequestDownloadManager.kt\ncom/amazon/kindle/download/AssetRequestDownloadManager\n*L\n75#1,2:276\n101#1,10:278\n103#1,2:288\n109#1,2:290\n140#1:292\n140#1,2:293\n238#1,2:301\n149#1:295\n149#1,5:296\n*E\n"
.end annotation


# instance fields
.field private final metricEmitter:Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;

.field private final requestExecutor:Lcom/amazon/kindle/webservices/IWebRequestExecutor;

.field private final resumptionHelper$delegate:Lkotlin/Lazy;

.field private final scheduler:Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;Lcom/amazon/kindle/webservices/IWebRequestExecutor;Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            "Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/amazon/kindle/download/IDownloadResumptionTracker;",
            ">;)V"
        }
    .end annotation

    const-string v0, "scheduler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricEmitter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resumerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->scheduler:Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;

    iput-object p2, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->requestExecutor:Lcom/amazon/kindle/webservices/IWebRequestExecutor;

    iput-object p3, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->metricEmitter:Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;

    .line 55
    invoke-static {p4}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->resumptionHelper$delegate:Lkotlin/Lazy;

    .line 58
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance p2, Lcom/amazon/kindle/download/AssetRequestDownloadManager$2;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManager$2;-><init>(Lcom/amazon/kindle/download/AssetRequestDownloadManager;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/webservices/IWebRequestExecutor;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;)V
    .locals 1

    const-string v0, "requestExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadNetworkingPolicy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;

    invoke-direct {v0, p2, p4}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;-><init>(Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;)V

    .line 52
    new-instance p4, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;

    invoke-direct {p4, p2, p3}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;-><init>(Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V

    .line 53
    sget-object p2, Lcom/amazon/kindle/download/AssetRequestDownloadManager$1;->INSTANCE:Lcom/amazon/kindle/download/AssetRequestDownloadManager$1;

    .line 50
    invoke-direct {p0, v0, p1, p4, p2}, Lcom/amazon/kindle/download/AssetRequestDownloadManager;-><init>(Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;Lcom/amazon/kindle/webservices/IWebRequestExecutor;Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getResumptionHelper$p(Lcom/amazon/kindle/download/AssetRequestDownloadManager;)Lcom/amazon/kindle/download/IDownloadResumptionTracker;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->getResumptionHelper()Lcom/amazon/kindle/download/IDownloadResumptionTracker;

    move-result-object p0

    return-object p0
.end method

.method private final addDownloadsInternal(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            ">;)Z"
        }
    .end annotation

    .line 97
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0 request passed into the download manager"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 278
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 280
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "it.bookAsset"

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 281
    move-object v6, v3

    check-cast v6, Lcom/amazon/kindle/services/download/IDownloadRequest;

    .line 101
    invoke-interface {v6}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/services/download/IBookAsset;->getState()Lcom/amazon/kindle/services/download/AssetState;

    move-result-object v4

    sget-object v6, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    if-ne v4, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 282
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_3
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 288
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    .line 104
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Given a request for asset "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " which is already local. Skipping"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v2, Lcom/amazon/kindle/webservices/RequestStatus;->COMPLETE:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->onStatusUpdate(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    goto :goto_2

    .line 108
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 290
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    .line 110
    new-instance v2, Lcom/amazon/kindle/download/DownloadRequestTask;

    iget-object v3, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->requestExecutor:Lcom/amazon/kindle/webservices/IWebRequestExecutor;

    invoke-direct {v2, v1, v3, p0}, Lcom/amazon/kindle/download/DownloadRequestTask;-><init>(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/webservices/IWebRequestExecutor;Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;)V

    .line 111
    invoke-virtual {v2}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPriority()Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    if-ne v1, v3, :cond_6

    .line 112
    invoke-virtual {v2}, Lcom/amazon/kindle/download/DownloadRequestTask;->run()V

    goto :goto_3

    .line 113
    :cond_6
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->scheduler:Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;

    invoke-virtual {v2}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "downloadTask.request.id"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->isRequestIdScheduled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 117
    invoke-virtual {v2}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/webservices/RequestStatus;->QUEUED:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-virtual {p0, v1, v3}, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->onStatusUpdate(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    .line 118
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 121
    :cond_7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_8

    .line 122
    iget-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->scheduler:Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->addTasks(Ljava/util/Collection;)V

    :cond_8
    return v5
.end method

.method private final getResumptionHelper()Lcom/amazon/kindle/download/IDownloadResumptionTracker;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->resumptionHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/download/IDownloadResumptionTracker;

    return-object v0
.end method


# virtual methods
.method public addDownload(Lcom/amazon/kindle/services/download/IDownloadRequest;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 90
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Null request passed into the download manager"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 93
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->addDownloadsInternal(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addGroupForDownload(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z
    .locals 8

    if-nez p1, :cond_0

    .line 66
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Given a null request group to download. Skipping"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 70
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addGroupForDownload called for bookId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    const-string v2, "group.bookID"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->getResumptionHelper()Lcom/amazon/kindle/download/IDownloadResumptionTracker;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/download/IDownloadResumptionTracker;->addNewDownload(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)V

    .line 72
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getRequests()Ljava/util/Set;

    move-result-object v0

    const-string v1, "group.requests"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/amazon/kindle/services/download/DownloadRequestComparator;

    invoke-direct {v1}, Lcom/amazon/kindle/services/download/DownloadRequestComparator;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->shouldPreemptCurrentDownload()Z

    move-result v1

    .line 276
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/services/download/IDownloadRequest;

    if-eqz v1, :cond_1

    const-string v4, "it"

    .line 76
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v4

    const-string v5, "it.bookAsset"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v4

    sget-object v6, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    if-ne v4, v6, :cond_1

    .line 77
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Prioritizing request for asset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "to the shouldPreemptCurrentDownload flag being set"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v4, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->URGENT:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-interface {v3, v4}, Lcom/amazon/kindle/webservices/IWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    goto :goto_0

    .line 83
    :cond_2
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->addDownloadsInternal(Ljava/util/Collection;)Z

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->metricEmitter:Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->onGroupEnqueued(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)V

    return v0
.end method

.method public cancelDownload(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 149
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 298
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->scheduler:Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->cancelTasks(Ljava/util/List;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAssetsInDownloadQueue()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->scheduler:Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;

    sget-object v1, Lcom/amazon/kindle/download/AssetRequestDownloadManager$getAssetsInDownloadQueue$1;->INSTANCE:Lcom/amazon/kindle/download/AssetRequestDownloadManager$getAssetsInDownloadQueue$1;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->transformQueue(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getParallelDownloadCount()I
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->scheduler:Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->getParallelDownloadCount()I

    move-result v0

    return v0
.end method

.method public handleDownloadError(Ljava/lang/String;)V
    .locals 6

    .line 194
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting handling of failed download: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getDownloadEntryPoints$p()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/amazon/kindle/download/AssetRequestDownloadManager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_3

    .line 218
    :goto_1
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->restartFailedDownloads(Ljava/lang/String;)Z

    goto :goto_3

    .line 205
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->getFromSerialized(I)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 206
    :cond_4
    sget-object v1, Lcom/amazon/kindle/download/AssetRequestDownloadManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    .line 214
    :goto_2
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not showing error dialog for error state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 211
    :cond_5
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getDownloadEntryPoints$p()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->showDownloadErrorDialog(Lcom/amazon/kindle/content/ContentMetadata;)V

    :goto_3
    return-void
.end method

.method public onStatusUpdate(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->scheduler:Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->onStatusUpdate(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    .line 227
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const-string v1, " state"

    if-eqz v0, :cond_1

    .line 228
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "<NoId>"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " updated to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 230
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->metricEmitter:Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->onStatusUpdate(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    .line 237
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getStatusAndProgressTracker()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 301
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    .line 239
    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;->reportStatus(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V

    goto :goto_2

    :cond_2
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

    .line 245
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->scheduler:Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->onTaskComplete(Lcom/amazon/kindle/download/DownloadRequestTask;)V

    .line 246
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->metricEmitter:Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;->onTaskComplete(Lcom/amazon/kindle/download/DownloadRequestTask;)V

    return-void
.end method

.method public registerDownloadTracker(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V
    .locals 2

    if-eqz p1, :cond_4

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 162
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "registerDownloadTracker called on a null assetId. Ignoring."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 166
    :cond_1
    invoke-static {p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->getRequestGroup(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 167
    new-instance v1, Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestId;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getRequest(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object v0

    if-nez v0, :cond_2

    .line 171
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find download request for asset ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", bookId: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_2
    invoke-interface {v0, p3}, Lcom/amazon/kindle/webservices/IWebRequest;->registerStatusTracker(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 176
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Registered status tracker for request "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    return-void

    .line 155
    :cond_4
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "registerDownloadTracker called with a null bookId or statusTracker"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs reprioritizeDownload(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const-string v0, "assetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reprioritizeDownload called for bookId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " asset list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    invoke-static {p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->getRequestGroup(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given a non-existent book id to reprioritize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 136
    :cond_0
    array-length p1, p2

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string p1, "group.requests"

    if-eqz v1, :cond_2

    .line 137
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getRequests()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 140
    :cond_2
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getRequests()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/kindle/services/download/IDownloadRequest;

    const-string v3, "it"

    .line 140
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v2

    const-string v3, "it.bookAsset"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->scheduler:Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;

    sget-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->URGENT:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->reprioritizeRequests(Ljava/util/List;Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Z

    move-result p1

    return p1
.end method

.method public restartFailedDownloads(Ljava/lang/String;)Z
    .locals 2

    .line 185
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restartFailedDownload called for bookId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Re-enqueueing requests"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    invoke-static {p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerKt;->getRequestGroup(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->addGroupForDownload(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setParallelDownloadCount(I)Z
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;->scheduler:Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->setParallelDownloadCount(I)Z

    move-result p1

    return p1
.end method
