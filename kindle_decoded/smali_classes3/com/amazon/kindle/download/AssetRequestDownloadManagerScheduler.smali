.class public final Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;
.super Ljava/lang/Object;
.source "AssetRequestDownloadManagerScheduler.kt"

# interfaces
.implements Lcom/amazon/kindle/download/DownloadRequestTask$Delegate;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetRequestDownloadManagerScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetRequestDownloadManagerScheduler.kt\ncom/amazon/kindle/download/AssetRequestDownloadManagerScheduler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,273:1\n1819#2,2:274\n1571#2,9:276\n1819#2:285\n1820#2:287\n1580#2:288\n1571#2,9:289\n1819#2:298\n1820#2:300\n1580#2:301\n1#3:286\n1#3:299\n95#4:302\n122#4,3:303\n*E\n*S KotlinDebug\n*F\n+ 1 AssetRequestDownloadManagerScheduler.kt\ncom/amazon/kindle/download/AssetRequestDownloadManagerScheduler\n*L\n80#1,2:274\n95#1,9:276\n95#1:285\n95#1:287\n95#1:288\n112#1,9:289\n112#1:298\n112#1:300\n112#1:301\n95#1:286\n112#1:299\n137#1:302\n137#1,3:303\n*E\n"
.end annotation


# instance fields
.field private final downloadNetworkingPolicy:Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;

.field private final metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private final networkService:Lcom/amazon/kindle/network/INetworkService;

.field private final requestIdToTaskMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final taskProcessor:Lcom/amazon/kindle/download/IDownloadTaskProcessor;

.field private final tasksWaitingForConnection:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/download/IDownloadTaskProcessor;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;)V
    .locals 1

    const-string v0, "taskProcessor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadNetworkingPolicy"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->taskProcessor:Lcom/amazon/kindle/download/IDownloadTaskProcessor;

    iput-object p2, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->networkService:Lcom/amazon/kindle/network/INetworkService;

    iput-object p3, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    iput-object p4, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->downloadNetworkingPolicy:Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;

    .line 56
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->requestIdToTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->tasksWaitingForConnection:Ljava/util/Set;

    .line 60
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;)V
    .locals 3

    const-string v0, "networkService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadNetworkingPolicy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerSchedulerKt;->access$buildProcessor()Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "MetricsManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;-><init>(Lcom/amazon/kindle/download/IDownloadTaskProcessor;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;)V

    return-void
.end method

.method private final cancelTask(Ljava/lang/String;)Lcom/amazon/kindle/download/DownloadRequestTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;"
        }
    .end annotation

    .line 238
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerSchedulerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling download for request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->requestIdToTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/download/DownloadRequestTask;

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->cancel()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final onNetworkConnected()V
    .locals 1

    .line 247
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->requeueRequestsWaitingForNetwork()V

    .line 248
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->taskProcessor:Lcom/amazon/kindle/download/IDownloadTaskProcessor;

    invoke-interface {v0}, Lcom/amazon/kindle/download/IDownloadTaskProcessor;->resume()V

    return-void
.end method

.method private final requeueRequestsWaitingForNetwork()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->tasksWaitingForConnection:Ljava/util/Set;

    const-string v1, "tasksWaitingForConnection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 253
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerSchedulerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network connection reestablished. Re-enqueuing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->tasksWaitingForConnection:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requests"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->tasksWaitingForConnection:Ljava/util/Set;

    const-string v2, "tasksWaitingForConnection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    const-string v2, "AssetRequestDownloadManager"

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    const-string v2, "ResumingRequestsWaitingForNetwork"

    .line 256
    iget-object v3, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->tasksWaitingForConnection:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 257
    iget-object v2, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->taskProcessor:Lcom/amazon/kindle/download/IDownloadTaskProcessor;

    iget-object v2, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->tasksWaitingForConnection:Ljava/util/Set;

    const-string v3, "tasksWaitingForConnection"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/download/IDownloadTaskProcessor;->addTasks(Ljava/util/Collection;)Z

    .line 260
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->tasksWaitingForConnection:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 261
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final shouldQueueForNetworkResumption(Lcom/amazon/kindle/download/DownloadRequestTask;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;)Z"
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object v0

    .line 215
    invoke-virtual {p1}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p1

    const-string v2, "request.bookAsset"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object p1

    sget-object v3, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    if-ne p1, v3, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerSchedulerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received error "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for asset "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    .line 231
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerSchedulerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not queueing task for network reconnect due to the unrelated error state "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 228
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->downloadNetworkingPolicy:Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;

    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->networkService:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;->isDownloadingEnabled(Lcom/amazon/kindle/network/INetworkService;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 222
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerSchedulerKt;->access$getTAG$p()Ljava/lang/String;

    const/4 v1, 0x1

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public final addTasks(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "requestTasks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->taskProcessor:Lcom/amazon/kindle/download/IDownloadTaskProcessor;

    invoke-interface {v0}, Lcom/amazon/kindle/download/IDownloadTaskProcessor;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->downloadNetworkingPolicy:Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;

    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->networkService:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;->isDownloadingEnabled(Lcom/amazon/kindle/network/INetworkService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    const-string v1, "AssetRequestDownloadManager"

    const-string v2, "ExecutorUnexpectedlyPaused"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->onNetworkConnected()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->taskProcessor:Lcom/amazon/kindle/download/IDownloadTaskProcessor;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/download/IDownloadTaskProcessor;->addTasks(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/download/DownloadRequestTask;

    .line 81
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->requestIdToTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "it.request.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final cancelTasks(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "requestIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 284
    check-cast v1, Ljava/lang/String;

    .line 95
    invoke-direct {p0, v1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->cancelTask(Ljava/lang/String;)Lcom/amazon/kindle/download/DownloadRequestTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 284
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->taskProcessor:Lcom/amazon/kindle/download/IDownloadTaskProcessor;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/download/IDownloadTaskProcessor;->purgeCancelledTasks(Ljava/util/Collection;)V

    .line 100
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final getParallelDownloadCount()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->taskProcessor:Lcom/amazon/kindle/download/IDownloadTaskProcessor;

    invoke-interface {v0}, Lcom/amazon/kindle/download/IDownloadTaskProcessor;->getParallelDownloadCount()I

    move-result v0

    return v0
.end method

.method public final isRequestIdScheduled(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->requestIdToTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final onDownloadSettingsChangedEvent(Lcom/amazon/kindle/download/DownloadSettingsChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "settingsChangedEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->downloadNetworkingPolicy:Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;

    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->networkService:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;->isDownloadingEnabled(Lcom/amazon/kindle/network/INetworkService;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->taskProcessor:Lcom/amazon/kindle/download/IDownloadTaskProcessor;

    invoke-interface {p1}, Lcom/amazon/kindle/download/IDownloadTaskProcessor;->pause()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->onNetworkConnected()V

    :goto_0
    return-void
.end method

.method public final onNetworkConnectivityChanged(Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "connectivityEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->downloadNetworkingPolicy:Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;->isDownloadingEnabled(Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->taskProcessor:Lcom/amazon/kindle/download/IDownloadTaskProcessor;

    invoke-interface {p1}, Lcom/amazon/kindle/download/IDownloadTaskProcessor;->pause()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->onNetworkConnected()V

    :goto_0
    return-void
.end method

.method public onStatusUpdate(Lcom/amazon/kindle/services/download/IDownloadRequest;Lcom/amazon/kindle/webservices/RequestStatus;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "status"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTaskComplete(Lcom/amazon/kindle/download/DownloadRequestTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->tasksWaitingForConnection:Ljava/util/Set;

    const-string v1, "tasksWaitingForConnection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->downloadNetworkingPolicy:Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;

    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->networkService:Lcom/amazon/kindle/network/INetworkService;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;->isDownloadingEnabled(Lcom/amazon/kindle/network/INetworkService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->requeueRequestsWaitingForNetwork()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->taskProcessor:Lcom/amazon/kindle/download/IDownloadTaskProcessor;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/download/IDownloadTaskProcessor;->onTaskComplete(Lcom/amazon/kindle/download/DownloadRequestTask;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->shouldQueueForNetworkResumption(Lcom/amazon/kindle/download/DownloadRequestTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->tasksWaitingForConnection:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->requestIdToTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final reprioritizeRequests(Ljava/util/List;Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            ">;",
            "Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;",
            ")Z"
        }
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPriority"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 297
    check-cast v1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    .line 113
    invoke-interface {v1, p2}, Lcom/amazon/kindle/webservices/IWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 114
    iget-object v2, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->requestIdToTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/download/DownloadRequestTask;

    if-eqz v1, :cond_0

    .line 297
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->taskProcessor:Lcom/amazon/kindle/download/IDownloadTaskProcessor;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/download/IDownloadTaskProcessor;->reprioritizeTasks(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final setParallelDownloadCount(I)Z
    .locals 3

    const/4 v0, 0x1

    if-gt v0, p1, :cond_1

    const/16 v1, 0xf

    if-ge v1, p1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerSchedulerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating the thread pool size from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->taskProcessor:Lcom/amazon/kindle/download/IDownloadTaskProcessor;

    invoke-interface {v2}, Lcom/amazon/kindle/download/IDownloadTaskProcessor;->getParallelDownloadCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->taskProcessor:Lcom/amazon/kindle/download/IDownloadTaskProcessor;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/download/IDownloadTaskProcessor;->setParallelDownloadCount(I)Z

    move-result p1

    return p1

    .line 193
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New pool size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is outside of allowed bounds [1, 15]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 195
    const-class v1, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    if-eqz v1, :cond_2

    .line 196
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 198
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerSchedulerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final transformQueue(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;+TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerScheduler;->requestIdToTaskMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
