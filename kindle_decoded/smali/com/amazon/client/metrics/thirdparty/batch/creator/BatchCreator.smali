.class public Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;
.super Ljava/lang/Object;
.source "BatchCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator$BatchOpenTimeWatcher;
    }
.end annotation


# static fields
.field private static final BATCH_COUNT:Ljava/lang/String; = "BATCH_COUNT"

.field private static final BATCH_ENQUEUED:Ljava/lang/String; = "BATCH_ENQUEUED"

.field private static final BATCH_OPEN_TIME:Ljava/lang/String; = "BATCH_OPEN_TIME"

.field private static final BATCH_SIZE:Ljava/lang/String; = "BATCH_SIZE"

.field private static final THREAD_NAME_BATCH_OPEN_TIME_WATCHER:Ljava/lang/String; = "BatchOpenTimeWatcherThread"

.field private static final THREAD_POOL_TERMINATION_WAIT_MS:I = 0x1388

.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field private final mBatchOpenTimeWatcher:Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator$BatchOpenTimeWatcher;

.field private final mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

.field private final mBatchQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;

.field private final mDeviceInfoManager:Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;

.field private final mMetricBatchCodec:Lcom/amazon/client/metrics/thirdparty/codec/MetricBatchCodec;

.field private final mMetricEntryCodec:Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryCodec;

.field private final mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

.field private mRunningBatch:Lcom/amazon/client/metrics/thirdparty/MetricBatch;

.field protected final mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mTimeSinceLastPublish:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mUserAgentHelper:Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "Metrics:BatchCreator"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;Lcom/amazon/client/metrics/thirdparty/codec/MetricBatchCodec;Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryCodec;Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/CodecException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator$BatchOpenTimeWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator$BatchOpenTimeWatcher;-><init>(Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator$1;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mBatchOpenTimeWatcher:Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator$BatchOpenTimeWatcher;

    .line 75
    new-instance v0, Lcom/amazon/device/utils/thirdparty/BackgroundThreadFactory;

    const-string v1, "BatchOpenTimeWatcherThread"

    invoke-direct {v0, v1}, Lcom/amazon/device/utils/thirdparty/BackgroundThreadFactory;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    .line 88
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mBatchQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;

    .line 89
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mMetricBatchCodec:Lcom/amazon/client/metrics/thirdparty/codec/MetricBatchCodec;

    .line 90
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mMetricEntryCodec:Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryCodec;

    .line 91
    iput-object p4, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    .line 92
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mTimeSinceLastPublish:Ljava/util/concurrent/atomic/AtomicLong;

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 94
    iput-object p6, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mDeviceInfoManager:Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;

    .line 95
    iput-object p7, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mUserAgentHelper:Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;

    .line 103
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/MetricBatch;

    invoke-direct {p1}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;-><init>()V

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/client/metrics/thirdparty/MetricBatch;

    .line 105
    iput-object p5, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    .line 107
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->scheduleBatchOpenTimeWatcher()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->scheduleBatchOpenTimeWatcher()V

    return-void
.end method

.method private maxBatchCountReached()Z
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/client/metrics/thirdparty/MetricBatch;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->getMetricEntryCount()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    .line 285
    invoke-interface {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getMaxNumEntriesPerBatch()J

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

.method private maxBatchOpenTimeReached()Z
    .locals 5

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 294
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mTimeSinceLastPublish:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 295
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    .line 296
    invoke-interface {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getMaxBatchOpenTimeMillis()J

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

.method private scheduleBatchOpenTimeWatcher()V
    .locals 5

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mBatchOpenTimeWatcher:Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator$BatchOpenTimeWatcher;

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    .line 318
    invoke-interface {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getCheckBatchOpenTimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 317
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 321
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v3, "scheduleLastPublishTimeWatcher"

    const-string v4, "Unexpected rejected execution exception while scheduling LastPublishTimeWatcher"

    invoke-virtual {v1, v3, v4, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    throw v0
.end method


# virtual methods
.method public declared-synchronized addMetricEntry(Lcom/amazon/client/metrics/thirdparty/MetricEntry;)V
    .locals 10

    monitor-enter p0

    if-eqz p1, :cond_5

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mUserAgentHelper:Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;->addUserAgentIfNotSet(Lcom/amazon/client/metrics/thirdparty/MetricEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 121
    :try_start_1
    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mMetricEntryCodec:Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryCodec;

    .line 122
    invoke-interface {v4, p1}, Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryCodec;->encode(Lcom/amazon/client/metrics/thirdparty/MetricEntry;)Lcom/amazon/client/metrics/thirdparty/codec/EncodedMetricEntry;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 124
    invoke-interface {v4}, Lcom/amazon/client/metrics/thirdparty/codec/EncodedMetricEntry;->getEncodedSize()I

    move-result v5

    if-eqz v5, :cond_3

    .line 129
    sget-object v5, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v6, "addMetricEntry"

    const-string v7, "Adding metric entry"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "metricEntry"

    aput-object v9, v8, v2

    .line 130
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricEntry;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 129
    invoke-virtual {v5, v6, v7, v8}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v5, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/client/metrics/thirdparty/MetricBatch;

    invoke-virtual {v5, v4}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->addEntry(Lcom/amazon/client/metrics/thirdparty/codec/EncodedMetricEntry;)V

    const-string v4, "MetricsService"

    .line 136
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricEntry;->getProgram()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "RecordMetric"

    .line 137
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/MetricEntry;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/client/metrics/thirdparty/MetricBatch;

    invoke-virtual {p1, v3}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->setContainsUserMetrics(Z)V

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->maxBatchCountReached()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->maxBatchSizeReached()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->enqueueBatchForTransmission()V

    goto :goto_0

    .line 125
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Metric entry serialized to null or nothing."

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/amazon/client/metrics/thirdparty/CodecException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception p1

    .line 151
    :try_start_2
    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v4}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v4

    const-string v5, "addEntry.UnexpectedException"

    invoke-interface {v4, v5, v0, v1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 153
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "add"

    const-string v4, "Unexpected exception while trying to add metric to batch."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v4, v3}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 146
    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v4}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v4

    const-string v5, "addEntry.CodecException"

    invoke-interface {v4, v5, v0, v1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 148
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "add"

    const-string v4, "Codec Exception while trying to add metric to batch."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v4, v3}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 113
    :cond_5
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add null metric entry"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized checkBatchOpenTimeAndEnqueueIfReady()V
    .locals 1

    monitor-enter p0

    .line 307
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->maxBatchOpenTimeReached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/client/metrics/thirdparty/MetricBatch;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->containsUserMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->enqueueBatchForTransmission()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enqueueBatchForTransmission()V
    .locals 10

    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/client/metrics/thirdparty/MetricBatch;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->getBatchSizeInBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 193
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "enqueueBatchForTransmission"

    const-string v2, "Metrics Batch is empty. Aborting enqueue operation."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 199
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->maxBatchCountReached()Z

    move-result v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string v3, "enqueueReason.batchCount"

    invoke-interface {v0, v3, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->maxBatchSizeReached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string v3, "enqueueReason.batchSize"

    invoke-interface {v0, v3, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto :goto_0

    .line 205
    :cond_2
    invoke-direct {p0}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->maxBatchOpenTimeReached()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string v3, "enqueueReason.batchOpenTime"

    invoke-interface {v0, v3, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    goto :goto_0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v0

    const-string v3, "enqueueReason.forceEnqueue"

    invoke-interface {v0, v3, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x1

    .line 217
    :try_start_2
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/client/metrics/thirdparty/MetricBatch;

    iget-object v5, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mDeviceInfoManager:Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;

    invoke-interface {v5}, Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;->getDeviceInfo()Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/client/metrics/thirdparty/MetricsDeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->putMetricsDeviceInfo(Ljava/util/Map;)V

    .line 220
    sget-object v3, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v5, "enqueueBatchForTransmission"

    const-string v6, "Metrics Batch created. Adding to queue"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6, v7}, Lcom/amazon/dp/logger/DPLoggerBase;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mMetricBatchCodec:Lcom/amazon/client/metrics/thirdparty/codec/MetricBatchCodec;

    iget-object v5, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/client/metrics/thirdparty/MetricBatch;

    invoke-interface {v3, v5}, Lcom/amazon/client/metrics/thirdparty/codec/MetricBatchCodec;->encode(Lcom/amazon/client/metrics/thirdparty/MetricBatch;)[B

    move-result-object v3

    .line 222
    iget-object v5, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mBatchQueue:Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;

    new-instance v6, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;

    invoke-direct {v6, v3}, Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;-><init>([B)V

    invoke-interface {v5, v6, v0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;->add(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;Z)V

    .line 224
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v3}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v3

    const-string v5, "BATCH_COUNT"

    iget-object v6, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/client/metrics/thirdparty/MetricBatch;

    .line 225
    invoke-virtual {v6}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->getMetricEntryCount()I

    move-result v6

    int-to-double v6, v6

    .line 224
    invoke-interface {v3, v5, v6, v7}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 226
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v3}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v3

    const-string v5, "BATCH_SIZE"

    iget-object v6, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/client/metrics/thirdparty/MetricBatch;

    .line 227
    invoke-virtual {v6}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->getBatchSizeInBytes()J

    move-result-wide v6

    long-to-double v6, v6

    .line 226
    invoke-interface {v3, v5, v6, v7}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 228
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v3}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v3

    const-string v5, "BATCH_OPEN_TIME"

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mTimeSinceLastPublish:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-double v6, v6

    .line 228
    invoke-interface {v3, v5, v6, v7}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 230
    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v3}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v3

    const-string v5, "BATCH_ENQUEUED"

    invoke-interface {v3, v5, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V
    :try_end_2
    .catch Lcom/amazon/client/metrics/thirdparty/CodecException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 255
    :try_start_3
    iget-object v5, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v5}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v5

    const-string v6, "enqueBatch.UnknownException"

    invoke-interface {v5, v6, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 257
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v2, "enqueueBatchForTransmission"

    const-string v5, "Unexpected Exception while trying to add metrics batch to queue"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v4

    invoke-virtual {v1, v2, v5, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v3

    .line 248
    iget-object v5, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v5}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v5

    const-string v6, "enqueBatch.IllegalArgumentException"

    invoke-interface {v5, v6, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 250
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v2, "enqueueBatchForTransmission"

    const-string v5, "IllegalArguementException while trying to add metrics batch to queue"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v4

    invoke-virtual {v1, v2, v5, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v3

    .line 241
    iget-object v5, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v5}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v5

    const-string v6, "enqueBatch.IOException"

    invoke-interface {v5, v6, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 243
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v2, "enqueueBatchForTransmission"

    const-string v5, "IOException while trying to add metrics batch to queue."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v4

    invoke-virtual {v1, v2, v5, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_3
    move-exception v3

    .line 235
    iget-object v5, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-interface {v5}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->getMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object v5

    const-string v6, "enqueBatch.CodecException"

    invoke-interface {v5, v6, v1, v2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 237
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v2, "enqueueBatchForTransmission"

    const-string v5, "Exception trying to serialize metrics batch"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v4

    invoke-virtual {v1, v2, v5, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :goto_1
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/MetricBatch;

    invoke-direct {v0}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;-><init>()V

    iput-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/client/metrics/thirdparty/MetricBatch;

    .line 267
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mTimeSinceLastPublish:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected maxBatchSizeReached()Z
    .locals 5

    .line 275
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mRunningBatch:Lcom/amazon/client/metrics/thirdparty/MetricBatch;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/MetricBatch;->getBatchSizeInBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mBatchPipelineConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    .line 276
    invoke-interface {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getMaxSizePerBatchBytes()J

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

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 163
    :try_start_1
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1388

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 167
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->log:Lcom/amazon/dp/logger/DPLogger;

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

    .line 173
    :try_start_2
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->mThreadPool:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 174
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string/jumbo v3, "shutdown"

    const-string v4, "Thread pool interrupted on shutdown."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
