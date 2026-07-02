.class public Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;
.super Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;
.source "VolatileBoundedByteArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue$TimeStampedSerializedObject;
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field protected final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueueListener;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue$TimeStampedSerializedObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "Metrics:VolatileBoundedByteArrayQueue"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;-><init>(Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;)V

    .line 36
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;->mQueue:Ljava/util/Queue;

    .line 37
    new-instance p1, Ljava/util/HashSet;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;->mListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized add([BZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->validateInput([B)V

    .line 68
    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 71
    :goto_0
    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    invoke-interface {v2}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getMaxBatchQueueCapacityBytes()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 72
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "add"

    const-string v2, "Queue is full. Dropping an item from the queue."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v0

    const-string v1, "droppedBatches"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue$TimeStampedSerializedObject;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue$TimeStampedSerializedObject;->getSerializedObject()[B

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    .line 83
    iget-wide v1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    array-length v0, v0

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    goto :goto_0

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "All items removed and the queue is still full"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;->mQueue:Ljava/util/Queue;

    new-instance v1, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue$TimeStampedSerializedObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue$TimeStampedSerializedObject;-><init>(Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;J[B)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 88
    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    if-eqz p2, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->notifyListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized purgeExpiredBatches()V
    .locals 9

    monitor-enter p0

    .line 117
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    invoke-interface {v2}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getExpiryTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 118
    iget-wide v2, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    .line 119
    :goto_0
    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue$TimeStampedSerializedObject;

    invoke-virtual {v4}, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue$TimeStampedSerializedObject;->getTimeStamp()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;->remove()[B

    .line 121
    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v4}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v4

    const-string v5, "expiredBatches"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-interface {v4, v5, v6, v7}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto :goto_0

    .line 123
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v1, "purgeExpiredBatches"

    const-string v4, "Number of batches purged: "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    sub-long/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v0, v1, v4, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove()[B
    .locals 5

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue$TimeStampedSerializedObject;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue$TimeStampedSerializedObject;->getSerializedObject()[B

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 105
    iget-wide v1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    array-length v3, v0

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 106
    iget-wide v1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
