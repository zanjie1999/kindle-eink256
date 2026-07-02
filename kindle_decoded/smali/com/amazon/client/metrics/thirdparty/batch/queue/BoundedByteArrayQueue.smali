.class public abstract Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;
.super Ljava/lang/Object;
.source "BoundedByteArrayQueue.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue$QueuePurger;
    }
.end annotation


# static fields
.field private static final THREAD_NAME_BATCH_QUEUE_PURGER:Ljava/lang/String; = "BatchQueuePurgerThread"

.field private static final THREAD_POOL_TERMINATION_WAIT_MS:I = 0x1388

.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field protected final mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

.field protected mBytesUsed:J

.field protected final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueueListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mNumEntries:J

.field protected final mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

.field private mQueueName:Ljava/lang/String;

.field private final mQueuePurger:Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue$QueuePurger;

.field private mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "Metrics:BoundedByteArrayQueue"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mListeners:Ljava/util/Set;

    .line 51
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue$QueuePurger;

    invoke-direct {v0, p0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue$QueuePurger;-><init>(Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mQueuePurger:Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue$QueuePurger;

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 55
    iput-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    .line 70
    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getMaxBatchQueueCapacityBytes()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 74
    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getExpiryTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 78
    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getPurgePeriodMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    if-eqz p2, :cond_0

    .line 85
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    .line 86
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    .line 87
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->initializeQueuePurger()V

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Periodic metric reporter must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PurgePeriodMillis must not be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExpiryTimeMillis must not be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Capacity of queue must be greater than 0 bytes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Lcom/amazon/dp/logger/DPLogger;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->log:Lcom/amazon/dp/logger/DPLogger;

    return-object v0
.end method

.method private initializeQueuePurger()V
    .locals 9

    .line 92
    new-instance v0, Lcom/amazon/device/utils/thirdparty/BackgroundThreadFactory;

    const-string v1, "BatchQueuePurgerThread"

    invoke-direct {v0, v1}, Lcom/amazon/device/utils/thirdparty/BackgroundThreadFactory;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v2, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 95
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mQueuePurger:Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue$QueuePurger;

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getPurgePeriodMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getPurgePeriodMillis()J

    move-result-wide v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v2 .. v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 96
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueueListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 194
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getNumEntriesInQueue()J
    .locals 2

    monitor-enter p0

    .line 215
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getQueueName()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mQueueName:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized notifyListeners()V
    .locals 6

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueueListener;

    .line 158
    iget-wide v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    iget-wide v4, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueueListener;->onInsert(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 160
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract purgeExpiredBatches()V
.end method

.method public setQueueName(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mQueueName:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 6

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mQueuePurger:Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue$QueuePurger;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue$QueuePurger;->shutdown()V

    .line 102
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 104
    :try_start_1
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 107
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string/jumbo v2, "shutdown"

    const-string v3, "Thread pool did not terminate."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 112
    :try_start_2
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 113
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string/jumbo v3, "shutdown"

    const-string v4, "Thread pool interrupted on shutdown."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected validateInput(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->getSerializedBytes()[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->getLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 183
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->getLength()J

    move-result-wide v0

    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getMaxBatchQueueCapacityBytes()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    return-void

    .line 184
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Serialized object size is larger than the maximum capacity."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Serialized batch cannot be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Serialized batch cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
