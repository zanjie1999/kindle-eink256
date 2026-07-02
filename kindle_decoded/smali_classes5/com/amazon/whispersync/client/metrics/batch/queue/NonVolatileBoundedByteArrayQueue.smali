.class public Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;
.super Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;
.source "NonVolatileBoundedByteArrayQueue.java"


# static fields
.field private static final METRIC_NAME_ADD_BATCHES_IO_FAILURE:Ljava/lang/String; = "addBatchesIOFailure"

.field private static final METRIC_NAME_REMOVE_BATCHES_IO_FAILURE:Ljava/lang/String; = "removeBatchesIOFailure"

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mDirOfBatchFiles:Ljava/io/File;

.field private final mFileNameQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "Metrics:NonVolatileBoundedByteArrayQueue"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;-><init>(Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;)V

    .line 46
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->mFileNameQueue:Ljava/util/Queue;

    .line 67
    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getMaxBatchQueueEntries()J

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    if-eqz p3, :cond_0

    .line 72
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iput-object p3, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->mDirOfBatchFiles:Ljava/io/File;

    .line 81
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->readPersistedData()V

    .line 86
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->trimQueueToFit()V

    return-void

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    const-string/jumbo p2, "queue.dirError"

    invoke-interface {p1, p2, v0, v1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 74
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dirOfBatchFiles must not be null and should be a valid directory."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    const-string/jumbo p2, "queue.capacityError"

    invoke-interface {p1, p2, v0, v1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Capacity of queue must be greater than 0 entry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Lcom/amazon/whispersync/dp/logger/DPLogger;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-object v0
.end method

.method private getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->mDirOfBatchFiles:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readPersistedData()V
    .locals 7

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->mDirOfBatchFiles:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue$1;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue$1;-><init>(Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 119
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 121
    iget-wide v3, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 122
    iget-object v3, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->mFileNameQueue:Ljava/util/Queue;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 123
    iget-wide v3, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

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

    .line 189
    :goto_0
    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    invoke-interface {v2}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getMaxBatchQueueCapacityBytes()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    invoke-interface {v2}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getMaxBatchQueueEntries()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    return-void

    .line 190
    :cond_1
    :goto_1
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "trimQueueToFit"

    const-string v3, "Queue is full. Dropping an element"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "droppedBatches"

    invoke-interface {v0, v3, v1, v2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 196
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->mFileNameQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 202
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    iget-wide v2, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 204
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 205
    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v0

    const-string/jumbo v3, "queueSizeError"

    invoke-interface {v0, v3, v1, v2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All items removed and the queue is still full."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized add([BZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 143
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->validateInput([B)V

    .line 145
    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 147
    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    .line 150
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->trimQueueToFit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    .line 156
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 158
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    :try_start_2
    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 177
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->mFileNameQueue:Ljava/util/Queue;

    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->notifyListeners()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 180
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v0, v4

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 162
    :goto_0
    :try_start_4
    iget-wide v4, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    array-length p1, p1

    int-to-long v6, p1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 163
    iget-wide v4, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    .line 166
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    const-string v1, "addBatchesIOFailure"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {p1, v1, v2, v3}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 168
    sget-object p1, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "add"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to persist the serializedObject to internal Storage."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    if-eqz v0, :cond_1

    .line 173
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized purgeExpiredBatches()V
    .locals 10

    monitor-enter p0

    .line 271
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    invoke-interface {v2}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getExpiryTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 272
    iget-wide v2, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    .line 273
    :goto_0
    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->mFileNameQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->mFileNameQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v6, v0

    if-gez v4, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 275
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->remove()[B

    .line 276
    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v4}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v4

    const-string v8, "expiredBatches"

    invoke-interface {v4, v8, v6, v7}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 278
    :try_start_2
    iget-object v8, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v8}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v8

    const-string/jumbo v9, "removeBatchesIOFailure"

    invoke-interface {v8, v9, v6, v7}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 280
    sget-object v6, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

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

    invoke-virtual {v6, v7, v4, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 283
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v1, "purgeExpiredBatches"

    const-string v4, "Number of batches purged: "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    sub-long/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v5

    invoke-virtual {v0, v1, v4, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->mFileNameQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 228
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v6, v8

    if-gtz v0, :cond_0

    long-to-int v0, v6

    .line 243
    new-array v0, v0, [B

    .line 245
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 248
    iget-wide v7, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v9

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mBytesUsed:J

    .line 249
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 250
    iget-wide v7, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    iput-wide v7, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mNumEntries:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v1, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v6

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v6

    goto :goto_0

    .line 232
    :cond_0
    :try_start_4
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v5, "remove"

    const-string/jumbo v8, "size of metrics batch file should not be greater than Integer.MAX_VALUE"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "file size"

    aput-object v10, v9, v2

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-virtual {v0, v5, v8, v9}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v0

    const-string/jumbo v5, "removeBatchMAXLengthError"

    invoke-interface {v0, v5, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 238
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

    .line 254
    :goto_0
    :try_start_5
    iget-object v5, p0, Lcom/amazon/whispersync/client/metrics/batch/queue/BoundedByteArrayQueue;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v5}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v5

    const-string/jumbo v6, "removeBatchesIOFailure"

    invoke-interface {v5, v6, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 256
    sget-object v3, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

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

    invoke-virtual {v3, v4, v5, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    if-eqz v1, :cond_1

    .line 260
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_1
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 263
    :cond_2
    :goto_2
    monitor-exit p0

    return-object v1

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method
