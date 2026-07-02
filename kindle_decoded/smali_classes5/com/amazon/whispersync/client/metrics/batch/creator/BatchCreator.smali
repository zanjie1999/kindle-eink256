.class public Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;
.super Ljava/lang/Object;
.source "BatchCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$LastPublishTimeWatcher;
    }
.end annotation


# static fields
.field private static final BATCH_COUNT:Ljava/lang/String; = "BATCH_COUNT"

.field private static final BATCH_ENQUEUED:Ljava/lang/String; = "BATCH_ENQUEUED"

.field private static final BATCH_OPEN_TIME:Ljava/lang/String; = "BATCH_OPEN_TIME"

.field private static final BATCH_SIZE:Ljava/lang/String; = "BATCH_SIZE"

.field private static final THREAD_POOL_TERMINATION_WAIT_MS:I = 0x1388

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

.field private final mBatchQueue:Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;

.field private final mDeviceInfoManager:Lcom/amazon/whispersync/client/metrics/DeviceInfoManager;

.field private final mLastPublishTimeWatcher:Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$LastPublishTimeWatcher;

.field private final mMetricBatchCodec:Lcom/amazon/whispersync/client/metrics/codec/MetricBatchCodec;

.field private final mMetricEntryCodec:Lcom/amazon/whispersync/client/metrics/codec/MetricEntryCodec;

.field private final mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

.field private mRunningBatch:Lcom/amazon/whispersync/client/metrics/MetricBatch;

.field protected final mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mTimeSinceLastPublish:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "Metrics:BatchCreator"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;Lcom/amazon/whispersync/client/metrics/codec/MetricBatchCodec;Lcom/amazon/whispersync/client/metrics/codec/MetricEntryCodec;Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;Lcom/amazon/whispersync/client/metrics/DeviceInfoManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$LastPublishTimeWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$LastPublishTimeWatcher;-><init>(Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$1;)V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mLastPublishTimeWatcher:Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$LastPublishTimeWatcher;

    .line 64
    new-instance v0, Lcom/amazon/whispersync/device/utils/BackgroundThreadFactory;

    invoke-direct {v0}, Lcom/amazon/whispersync/device/utils/BackgroundThreadFactory;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    .line 72
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mBatchQueue:Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;

    .line 73
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mMetricBatchCodec:Lcom/amazon/whispersync/client/metrics/codec/MetricBatchCodec;

    .line 74
    iput-object p3, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mMetricEntryCodec:Lcom/amazon/whispersync/client/metrics/codec/MetricEntryCodec;

    .line 75
    iput-object p4, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    .line 76
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mTimeSinceLastPublish:Ljava/util/concurrent/atomic/AtomicLong;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 78
    iput-object p6, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mDeviceInfoManager:Lcom/amazon/whispersync/client/metrics/DeviceInfoManager;

    .line 85
    new-instance p1, Lcom/amazon/whispersync/client/metrics/MetricBatch;

    invoke-direct {p1}, Lcom/amazon/whispersync/client/metrics/MetricBatch;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/whispersync/client/metrics/MetricBatch;

    .line 87
    iput-object p5, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    .line 89
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->scheduleLastPublishTimeWatcher()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->lastPublishTimeReached()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;)Lcom/amazon/whispersync/client/metrics/MetricBatch;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/whispersync/client/metrics/MetricBatch;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->scheduleLastPublishTimeWatcher()V

    return-void
.end method

.method private lastPublishTimeReached()Z
    .locals 5

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 258
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mTimeSinceLastPublish:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 259
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    invoke-interface {v2}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getMaxBatchOpenTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maxBatchCountReached()Z
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/whispersync/client/metrics/MetricBatch;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->getMetricEntryCount()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    invoke-interface {v2}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getMaxNumEntriesPerBatch()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private scheduleLastPublishTimeWatcher()V
    .locals 5

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mLastPublishTimeWatcher:Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator$LastPublishTimeWatcher;

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    invoke-interface {v2}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getCheckBatchOpenTimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 269
    sget-object v1, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v3, "scheduleLastPublishTimeWatcher"

    const-string v4, "Unexpected rejected execution exception while scheduling LastPublishTimeWatcher"

    invoke-virtual {v1, v3, v4, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    throw v0
.end method


# virtual methods
.method public declared-synchronized addMetricEntry(Lcom/amazon/whispersync/client/metrics/MetricEntry;)V
    .locals 10

    monitor-enter p0

    if-eqz p1, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 104
    :try_start_0
    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mMetricEntryCodec:Lcom/amazon/whispersync/client/metrics/codec/MetricEntryCodec;

    invoke-interface {v4, p1}, Lcom/amazon/whispersync/client/metrics/codec/MetricEntryCodec;->encode(Lcom/amazon/whispersync/client/metrics/MetricEntry;)Lcom/amazon/whispersync/client/metrics/codec/EncodedMetricEntry;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 105
    invoke-interface {v4}, Lcom/amazon/whispersync/client/metrics/codec/EncodedMetricEntry;->getEncodedSize()I

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    sget-object v5, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v6, "addMetricEntry"

    const-string v7, "Adding metric entry"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "metricEntry"

    aput-object v9, v8, v3

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/MetricEntry;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v2

    invoke-virtual {v5, v6, v7, v8}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/whispersync/client/metrics/MetricBatch;

    invoke-virtual {p1, v4}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->addEntry(Lcom/amazon/whispersync/client/metrics/codec/EncodedMetricEntry;)V

    .line 113
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->maxBatchCountReached()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->maxBatchSizeReached()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 114
    :cond_0
    invoke-virtual {p0, v3}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->enqueueBatchForTransmission(Z)V

    goto :goto_0

    .line 106
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Metric entry serialized to null or nothing."

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/amazon/whispersync/dp/framework/CodecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 120
    :try_start_1
    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v4}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v4

    const-string v5, "addEntry.UnexpectedException"

    invoke-interface {v4, v5, v0, v1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 121
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "add"

    const-string v4, "Unexpected exception while trying to add metric to batch."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v4, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 117
    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v4}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v4

    const-string v5, "addEntry.CodecException"

    invoke-interface {v4, v5, v0, v1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 118
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "add"

    const-string v4, "Codec Exception while trying to add metric to batch."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v4, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 99
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add null metric entry"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enqueueBatchForTransmission(Z)V
    .locals 10

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mTimeSinceLastPublish:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 159
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->maxBatchCountReached()Z

    move-result v1

    .line 160
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->maxBatchSizeReached()Z

    move-result v2

    .line 161
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->lastPublishTimeReached()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 164
    sget-object p1, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "enqueueBatchForTransmission"

    const-string v2, "Metrics Batch does not need to be queued for transmission"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "batch count"

    aput-object v6, v3, v5

    iget-object v5, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/whispersync/client/metrics/MetricBatch;

    invoke-virtual {v5}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->getMetricEntryCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "batch size"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/whispersync/client/metrics/MetricBatch;

    invoke-virtual {v5}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->getBatchSizeInBytes()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "time since last publish"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object v0, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_1

    .line 174
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v1}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v1

    const-string v8, "enqueueReason.batchCount"

    invoke-interface {v1, v8, v6, v7}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    :cond_1
    if-eqz v2, :cond_2

    .line 177
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v1}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v1

    const-string v2, "enqueueReason.batchSize"

    invoke-interface {v1, v2, v6, v7}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    :cond_2
    if-eqz v3, :cond_3

    .line 180
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v1}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v1

    const-string v2, "enqueueReason.batchOpenTime"

    invoke-interface {v1, v2, v6, v7}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    :cond_3
    if-eqz p1, :cond_4

    .line 183
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    const-string v1, "enqueueReason.forceEnqueue"

    invoke-interface {p1, v1, v6, v7}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 188
    :cond_4
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/whispersync/client/metrics/MetricBatch;

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->getBatchSizeInBytes()J

    move-result-wide v1

    const-wide/16 v8, 0x0

    cmp-long p1, v1, v8

    if-nez p1, :cond_5

    .line 189
    sget-object p1, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v0, "enqueueBatchForTransmission"

    const-string v1, "Metrics Batch is empty. Aborting enqueue operation."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 196
    :cond_5
    :try_start_2
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mDeviceInfoManager:Lcom/amazon/whispersync/client/metrics/DeviceInfoManager;

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/DeviceInfoManager;->getDeviceInfo()Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;

    move-result-object p1

    .line 197
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/whispersync/client/metrics/MetricBatch;

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/MetricsDeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->putMetricsDeviceInfo(Ljava/util/Map;)V

    .line 200
    sget-object p1, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "enqueueBatchForTransmission"

    const-string v2, "Metrics Batch created. Adding to queue"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mMetricBatchCodec:Lcom/amazon/whispersync/client/metrics/codec/MetricBatchCodec;

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/whispersync/client/metrics/MetricBatch;

    invoke-interface {p1, v1}, Lcom/amazon/whispersync/client/metrics/codec/MetricBatchCodec;->encode(Lcom/amazon/whispersync/client/metrics/MetricBatch;)[B

    move-result-object p1

    .line 202
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mBatchQueue:Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;

    invoke-interface {v1, p1, v4}, Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;->add([BZ)V

    .line 204
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    const-string v1, "BATCH_COUNT"

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/whispersync/client/metrics/MetricBatch;

    invoke-virtual {v2}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->getMetricEntryCount()I

    move-result v2

    int-to-double v2, v2

    invoke-interface {p1, v1, v2, v3}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 206
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    const-string v1, "BATCH_SIZE"

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/whispersync/client/metrics/MetricBatch;

    invoke-virtual {v2}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->getBatchSizeInBytes()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-interface {p1, v1, v2, v3}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 208
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    const-string v1, "BATCH_OPEN_TIME"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-interface {p1, v1, v2, v3}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 209
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    const-string v0, "BATCH_ENQUEUED"

    invoke-interface {p1, v0, v6, v7}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V
    :try_end_2
    .catch Lcom/amazon/whispersync/dp/framework/CodecException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 225
    :try_start_3
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v0

    const-string v1, "enqueBatch.UnknownException"

    invoke-interface {v0, v1, v6, v7}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 226
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "enqueueBatchForTransmission"

    const-string v2, "Unexpected Exception while trying to add metrics batch to queue"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 221
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v0

    const-string v1, "enqueBatch.IllegalArgumentException"

    invoke-interface {v0, v1, v6, v7}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 222
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "enqueueBatchForTransmission"

    const-string v2, "IllegalArguementException while trying to add metrics batch to queue"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 217
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v0

    const-string v1, "enqueBatch.IOException"

    invoke-interface {v0, v1, v6, v7}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 218
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "enqueueBatchForTransmission"

    const-string v2, "IOException while trying to add metrics batch to queue."

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 213
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v0

    const-string v1, "enqueBatch.CodecException"

    invoke-interface {v0, v1, v6, v7}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 214
    sget-object v0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "enqueueBatchForTransmission"

    const-string v2, "Exception trying to serialize metrics batch"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :goto_0
    new-instance p1, Lcom/amazon/whispersync/client/metrics/MetricBatch;

    invoke-direct {p1}, Lcom/amazon/whispersync/client/metrics/MetricBatch;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/whispersync/client/metrics/MetricBatch;

    .line 234
    iget-object p1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mTimeSinceLastPublish:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected maxBatchSizeReached()Z
    .locals 5

    .line 241
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/whispersync/client/metrics/MetricBatch;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/MetricBatch;->getBatchSizeInBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mBatchPipelineConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    invoke-interface {v2}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getMaxSizePerBatchBytes()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized shutdown()V
    .locals 6

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 131
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 134
    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    sget-object v1, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

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

    .line 139
    :try_start_2
    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 140
    sget-object v2, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v3, "shutdown"

    const-string v4, "Thread pool interrupted on shutdown."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
