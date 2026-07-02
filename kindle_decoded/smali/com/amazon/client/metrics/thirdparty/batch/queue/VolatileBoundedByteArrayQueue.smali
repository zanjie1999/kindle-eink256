.class public Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;
.super Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;
.source "VolatileBoundedByteArrayQueue.java"


# static fields
.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field private mQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "Metrics:VolatileBoundedByteArrayQueue"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;)V

    .line 42
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->mQueue:Ljava/util/Deque;

    .line 43
    new-instance p1, Ljava/util/HashSet;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(I)V

    return-void
.end method

.method private ensureCapacity(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;)V
    .locals 4

    .line 134
    iget-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->getLength()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 137
    :goto_0
    iget-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getMaxBatchQueueCapacityBytes()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 138
    sget-object p1, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "add"

    const-string v2, "Queue is full. Dropping an item from the queue."

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "droppedBatches"

    invoke-interface {p1, v2, v0, v1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 144
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->remove()Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "All items removed and the queue is still full"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->validateInput(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->ensureCapacity(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;)V

    .line 74
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->mQueue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 75
    iget-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->notifyListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFirst(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;Z)V
    .locals 4

    monitor-enter p0

    .line 84
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->validateInput(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->ensureCapacity(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;)V

    .line 87
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->mQueue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 88
    iget-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->notifyListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public persistBatches()V
    .locals 0

    return-void
.end method

.method public declared-synchronized purgeExpiredBatches()V
    .locals 9

    monitor-enter p0

    .line 123
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    invoke-interface {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getExpiryTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 124
    iget-wide v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    .line 125
    :goto_0
    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->mQueue:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->mQueue:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;

    invoke-virtual {v4}, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->getTimestamp()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->remove()Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;

    .line 127
    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v4}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v4

    const-string v5, "expiredBatches"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-interface {v4, v5, v6, v7}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto :goto_0

    .line 129
    :cond_0
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string/jumbo v1, "purgeExpiredBatches"

    const-string v4, "Number of batches purged: "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    sub-long/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v0, v1, v4, v5}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove()Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;
    .locals 5

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->mQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->mQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;

    :goto_0
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->getSerializedBytes()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 107
    iget-wide v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->getLength()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 108
    iget-wide v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
