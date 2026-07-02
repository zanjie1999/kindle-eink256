.class public Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;
.super Ljava/lang/Object;
.source "SemiVolatileBoundedByteArrayQueue.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;


# instance fields
.field mNonVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;

.field private mQueueName:Ljava/lang/String;

.field mVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;

    invoke-direct {v0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;

    .line 68
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;Ljava/io/File;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mNonVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;Z)V
    .locals 1

    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->add(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFirst(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;Z)V
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->addFirst(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addListener(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueueListener;)V
    .locals 1

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;

    invoke-virtual {v0, p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->addListener(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueueListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getQueueName()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mQueueName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized persistBatches()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 127
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->getNumEntriesInQueue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 128
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mNonVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;

    invoke-virtual {v1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->remove()Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->add(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 130
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove()Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->getNumEntriesInQueue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 110
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;->remove()Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 113
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mNonVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->getNumEntriesInQueue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 114
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mNonVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->remove()Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 116
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setQueueName(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mQueueName:Ljava/lang/String;

    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->shutdown()V

    .line 151
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;->mNonVolatileQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->shutdown()V

    return-void
.end method
