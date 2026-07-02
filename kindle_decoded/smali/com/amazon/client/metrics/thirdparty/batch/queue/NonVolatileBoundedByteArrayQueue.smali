.class public Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;
.super Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;
.source "NonVolatileBoundedByteArrayQueue.java"


# static fields
.field private static final METRIC_NAME_ADD_BATCHES_IO_FAILURE:Ljava/lang/String; = "addBatchesIOFailure"

.field private static final METRIC_NAME_REMOVE_BATCHES_IO_FAILURE:Ljava/lang/String; = "removeBatchesIOFailure"

.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field private final mDirOfBatchFiles:Ljava/io/File;

.field private final mFileNameQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "Metrics:NonVolatileBoundedByteArrayQueue"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;)V

    .line 56
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->mFileNameQueue:Ljava/util/Deque;

    .line 77
    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getMaxBatchQueueEntries()J

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    if-eqz p3, :cond_0

    .line 82
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 88
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->mDirOfBatchFiles:Ljava/io/File;

    .line 91
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->readPersistedData()V

    .line 96
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->trimQueueToFit()V

    return-void

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    const-string/jumbo p2, "queue.dirError"

    invoke-interface {p1, p2, v0, v1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dirOfBatchFiles must not be null and should be a valid directory."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    const-string/jumbo p2, "queue.capacityError"

    invoke-interface {p1, p2, v0, v1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Capacity of queue must be greater than 0 entry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Lcom/amazon/dp/logger/DPLogger;
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/dp/logger/DPLogger;

    return-object v0
.end method

.method private getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->mDirOfBatchFiles:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readPersistedData()V
    .locals 7

    .line 101
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->mDirOfBatchFiles:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue$1;

    invoke-direct {v1, p0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue$1;-><init>(Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 129
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 131
    iget-wide v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 132
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->mFileNameQueue:Ljava/util/Deque;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 133
    iget-wide v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private trimQueueToFit()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    :goto_0
    iget-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    invoke-interface {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getMaxBatchQueueCapacityBytes()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    invoke-interface {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getMaxBatchQueueEntries()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    return-void

    .line 250
    :cond_1
    :goto_1
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "trimQueueToFit"

    const-string v3, "Queue is full. Dropping an element"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "droppedBatches"

    invoke-interface {v0, v3, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 256
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->mFileNameQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 262
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    iget-wide v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 264
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 265
    iget-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    goto :goto_0

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string/jumbo v3, "queueSizeError"

    invoke-interface {v0, v3, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All items removed and the queue is still full."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeBatchToFile(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->getLength()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 211
    iget-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    .line 214
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->trimQueueToFit()V

    const/4 v0, 0x0

    .line 220
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 221
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->getSerializedBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    .line 225
    :goto_0
    :try_start_2
    iget-wide v5, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;->getLength()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 226
    iget-wide v5, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    .line 229
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    const-string v1, "addBatchesIOFailure"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {p1, v1, v2, v3}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 231
    sget-object p1, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "add"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to persist the serializedObject to internal Storage."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 231
    invoke-virtual {p1, v1, v2, v3}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 238
    :cond_0
    throw p1
.end method


# virtual methods
.method public declared-synchronized add(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 160
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->validateInput(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->writeBatchToFile(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;)Ljava/lang/String;

    move-result-object p1

    .line 163
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->mFileNameQueue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->notifyListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFirst(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 187
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->validateInput(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->writeBatchToFile(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->mFileNameQueue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->notifyListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_1
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
    .locals 10

    monitor-enter p0

    .line 340
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    invoke-interface {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getExpiryTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 341
    iget-wide v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    .line 342
    :goto_0
    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->mFileNameQueue:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->mFileNameQueue:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v6, v0

    if-gez v4, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 344
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->remove()Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;

    .line 345
    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v4}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v4

    const-string v8, "expiredBatches"

    invoke-interface {v4, v8, v6, v7}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 347
    :try_start_2
    iget-object v8, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v8}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v8

    const-string/jumbo v9, "removeBatchesIOFailure"

    invoke-interface {v8, v9, v6, v7}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 349
    sget-object v6, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string/jumbo v7, "purgeExpiredBatches"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unabled to purge batch."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v4, v5}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 352
    :cond_0
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string/jumbo v1, "purgeExpiredBatches"

    const-string v4, "Number of batches purged: "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    sub-long/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v5

    invoke-virtual {v0, v1, v4, v6}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove()Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->mFileNameQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 288
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v6, v8

    if-gtz v10, :cond_0

    long-to-int v7, v6

    .line 303
    new-array v6, v7, [B

    .line 305
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 306
    :try_start_2
    invoke-virtual {v7, v6}, Ljava/io/FileInputStream;->read([B)I

    .line 308
    iget-wide v8, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 309
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 310
    iget-wide v8, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    .line 311
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v1, v6, v8, v9}, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;-><init>([BJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 311
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v7

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v7

    goto :goto_0

    .line 292
    :cond_0
    :try_start_4
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string/jumbo v5, "remove"

    const-string/jumbo v8, "size of metrics batch file should not be greater than Integer.MAX_VALUE"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "file size"

    aput-object v10, v9, v2

    const/4 v10, 0x1

    .line 295
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v10

    .line 292
    invoke-virtual {v0, v5, v8, v9}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string/jumbo v5, "removeBatchMAXLengthError"

    invoke-interface {v0, v5, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 298
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Size of metrics batch file greater than Integer.MAX_VALUE"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 315
    :goto_0
    :try_start_5
    iget-object v5, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v5}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v5

    const-string/jumbo v6, "removeBatchesIOFailure"

    invoke-interface {v5, v6, v3, v4}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 317
    sget-object v3, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string/jumbo v4, "remove"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete the file."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    if-eqz v1, :cond_1

    .line 321
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 323
    :cond_1
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 325
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method
