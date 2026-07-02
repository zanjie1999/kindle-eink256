.class public abstract Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;
.super Ljava/lang/Object;
.source "BoundedByteArrayQueue.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue$QueuePurger;
    }
.end annotation


# static fields
.field protected static final METRIC_NAME_DROPPED_BATCHES:Ljava/lang/String; = "droppedBatches"

.field protected static final METRIC_NAME_EXPIRED_BATCHES:Ljava/lang/String; = "expiredBatches"

.field private static final THREAD_POOL_TERMINATION_WAIT_MS:I = 0x1388

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field protected final mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

.field protected mBytesUsed:J

.field protected final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueueListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mNumEntries:J

.field protected final mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

.field private final mQueuePurger:Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue$QueuePurger;

.field private mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "Metrics:BoundedByteArrayQueue"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mListeners:Ljava/util/Set;

    .line 49
    new-instance v0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue$QueuePurger;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue$QueuePurger;-><init>(Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;)V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mQueuePurger:Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue$QueuePurger;

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 53
    iput-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    .line 66
    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getMaxBatchQueueCapacityBytes()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 70
    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getExpiryTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    .line 74
    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getPurgePeriodMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    if-eqz p2, :cond_0

    .line 81
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    .line 82
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    .line 83
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->initializeQueuePurger()V

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Periodic metric reporter must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PurgePeriodMillis must not be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExpiryTimeMillis must not be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Capacity of queue must be greater than 0 bytes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-object v0
.end method

.method private initializeQueuePurger()V
    .locals 8

    .line 88
    new-instance v0, Lcom/amazon/whispersync/device/utils/BackgroundThreadFactory;

    invoke-direct {v0}, Lcom/amazon/whispersync/device/utils/BackgroundThreadFactory;-><init>()V

    .line 89
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 90
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mQueuePurger:Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue$QueuePurger;

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getPurgePeriodMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getPurgePeriodMillis()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueueListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 184
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

    .line 204
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized notifyListeners()V
    .locals 6

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueueListener;

    .line 153
    iget-wide v2, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    iget-wide v4, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueueListener;->onInsert(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 155
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

.method public declared-synchronized removeListener(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueueListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 195
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

.method public declared-synchronized shutdown()V
    .locals 6

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mQueuePurger:Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue$QueuePurger;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue$QueuePurger;->shutdown()V

    .line 97
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 99
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 102
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    sget-object v1, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v2, "shutdown"

    const-string v3, "Thread pool did not terminate."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 107
    :try_start_2
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mQueuePurgerExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 108
    sget-object v2, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v3, "shutdown"

    const-string v4, "Thread pool interrupted on shutdown."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected validateInput([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 166
    array-length v0, p1

    if-lez v0, :cond_1

    .line 172
    array-length p1, p1

    int-to-long v0, p1

    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getMaxBatchQueueCapacityBytes()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    return-void

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Serialized object size is larger than the maximum capacity."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Serialized object should not be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
