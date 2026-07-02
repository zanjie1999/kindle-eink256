.class public Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;
.super Ljava/lang/Object;
.source "AssetRequestDownloadManagerTaskProcessor.kt"

# interfaces
.implements Lcom/amazon/kindle/download/IDownloadTaskProcessor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAssetRequestDownloadManagerTaskProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AssetRequestDownloadManagerTaskProcessor.kt\ncom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n734#2:147\n825#2,2:148\n1819#2,2:151\n1#3:150\n*E\n*S KotlinDebug\n*F\n+ 1 AssetRequestDownloadManagerTaskProcessor.kt\ncom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor\n*L\n47#1:147\n47#1,2:148\n87#1,2:151\n*E\n"
.end annotation


# instance fields
.field private highPriorityRunningTaskCount:I

.field private final isRequiredExclusiveThreadingEnabled$delegate:Lkotlin/Lazy;

.field private final taskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

.field private final taskQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final taskQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private totalRunningTaskCount:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/util/PausableThreadPoolExecutor;)V
    .locals 1

    const-string v0, "taskExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    .line 36
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskQueue:Ljava/util/PriorityQueue;

    .line 42
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    sget-object p1, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor$isRequiredExclusiveThreadingEnabled$2;->INSTANCE:Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor$isRequiredExclusiveThreadingEnabled$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->isRequiredExclusiveThreadingEnabled$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final canExecuteTask(Lcom/amazon/kindle/download/DownloadRequestTask;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;)Z"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->isPaused()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->totalRunningTaskCount:I

    invoke-virtual {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->getParallelDownloadCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->isRequiredExclusiveThreadingEnabled()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->highPriorityRunningTaskCount:I

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPriority()Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    move-result-object p1

    const-string v0, "task.request.priority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->isHighPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private final isHighPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Z
    .locals 1

    .line 144
    sget-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->HIGH:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final isRequiredExclusiveThreadingEnabled()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->isRequiredExclusiveThreadingEnabled$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private final processTaskQueue()V
    .locals 4

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskQueue:Ljava/util/PriorityQueue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/download/DownloadRequestTask;

    if-eqz v0, :cond_3

    .line 70
    invoke-direct {p0, v0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->canExecuteTask(Lcom/amazon/kindle/download/DownloadRequestTask;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPriority()Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    move-result-object v1

    const-string v2, "nextTask.request.priority"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->isHighPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    iget v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->highPriorityRunningTaskCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->highPriorityRunningTaskCount:I

    .line 76
    :cond_1
    iget v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->totalRunningTaskCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->totalRunningTaskCount:I

    .line 77
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/download/DownloadRequestTask;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 78
    :cond_2
    sget-object v1, Lcom/amazon/kindle/metrics/ArdmTaskProcessorErrorReporter;->INSTANCE:Lcom/amazon/kindle/metrics/ArdmTaskProcessorErrorReporter;

    sget-object v2, Lcom/amazon/kindle/metrics/ProcessorErrorType;->TASK_NULL:Lcom/amazon/kindle/metrics/ProcessorErrorType;

    .line 79
    invoke-virtual {v0}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Processor executes a null task"

    .line 78
    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/kindle/metrics/ArdmTaskProcessorErrorReporter;->reportError(Lcom/amazon/kindle/metrics/ProcessorErrorType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addTasks(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;>;)Z"
        }
    .end annotation

    const-string v0, "requestTasks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/amazon/kindle/download/DownloadRequestTask;

    .line 48
    invoke-virtual {v3}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/webservices/IWebRequest;->isCancelled()Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 52
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->processTaskQueue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :catchall_0
    move-exception v0

    .line 50
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getParallelDownloadCount()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->isPaused()Z

    move-result v0

    return v0
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

    .line 133
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 134
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/download/DownloadRequestTask;->getRequest$com_amazon_kindle_dm()Lcom/amazon/kindle/services/download/IDownloadRequest;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getPriority()Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    move-result-object p1

    const-string v1, "task.request.priority"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->isHighPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->highPriorityRunningTaskCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->highPriorityRunningTaskCount:I

    .line 137
    :cond_0
    iget p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->totalRunningTaskCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->totalRunningTaskCount:I

    .line 138
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->processTaskQueue()V

    .line 139
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public pause()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->pause()V

    return-void
.end method

.method public purgeCancelledTasks(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "cancelledTasks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public reprioritizeTasks(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/download/DownloadRequestTask<",
            "*>;>;)Z"
        }
    .end annotation

    const-string v0, "tasks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 151
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/download/DownloadRequestTask;

    .line 88
    iget-object v3, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v2}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->processTaskQueue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception p1

    .line 85
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public resume()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    invoke-virtual {v1}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->resume()V

    .line 128
    invoke-direct {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->processTaskQueue()V

    .line 129
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public setParallelDownloadCount(I)Z
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskQueueLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    iget-object v2, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    const/4 v3, 0x1

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 115
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 116
    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;->taskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v3

    :catchall_0
    move-exception p1

    .line 113
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
