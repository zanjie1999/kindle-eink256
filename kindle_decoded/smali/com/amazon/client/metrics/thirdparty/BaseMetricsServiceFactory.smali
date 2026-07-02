.class public Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;
.super Ljava/lang/Object;
.source "BaseMetricsServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$DelegatingOAuthHelper;
    }
.end annotation


# static fields
.field private static final BATCH_TYPE_CRITICAL:Ljava/lang/String; = "critical"

.field private static final CRITICAL_BATCH_SOURCE_APP:Ljava/lang/String; = "app"

.field private static final KEY_CRITICAL_METRIC_BATCH_SOURCE:Ljava/lang/String; = "criticalMetricBatchSource"

.field private static final KEY_METRIC_BATCH_TYPE:Ljava/lang/String; = "metricBatchType"

.field protected static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDelegatingOAuthHelper:Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$DelegatingOAuthHelper;

.field protected final mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

.field protected mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

.field protected mMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

.field protected mMetricsTransport:Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

.field protected mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

.field protected mTransmissionOffsetMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "BaseMetricsServiceFactory"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 131
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    if-nez p3, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->initializeMetricsConfiguration(Landroid/content/Context;)Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    .line 134
    new-instance p2, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$DelegatingOAuthHelper;

    invoke-direct {p2}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$DelegatingOAuthHelper;-><init>()V

    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mDelegatingOAuthHelper:Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$DelegatingOAuthHelper;

    .line 136
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->shouldUsePassThroughMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 137
    iget-object p2, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->setPassThroughMode()V

    .line 139
    :cond_1
    sget-object p2, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "createMetricsService"

    const-string v1, "Getting MetricsFactory via AndroidMetricsFactoryImpl.getInstance(Context)."

    invoke-virtual {p2, v0, v1, p3}, Lcom/amazon/dp/logger/DPLoggerBase;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsFactory:Lcom/amazon/client/metrics/thirdparty/MetricsFactory;

    .line 141
    new-instance p2, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;

    const-string p3, "MetricsService"

    const-string v0, "RecordMetric"

    invoke-direct {p2, p1, p3, v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporterImpl;-><init>(Lcom/amazon/client/metrics/thirdparty/MetricsFactory;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    const-wide/16 v0, 0x5

    .line 142
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, v1, p1}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->startRecordingPeriodically(JLjava/util/concurrent/TimeUnit;)V

    .line 153
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double p1, p1, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    double-to-long p1, p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mTransmissionOffsetMillis:J

    return-void

    .line 129
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected addOffset(JJ)J
    .locals 3

    .line 550
    rem-long/2addr p3, p1

    const-wide/16 v0, 0x2

    .line 552
    div-long v0, p1, v0

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    add-long/2addr p3, p1

    :cond_0
    return-wide p3
.end method

.method protected createBatchCreator(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;)Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/CodecException;
        }
    .end annotation

    .line 358
    invoke-virtual {p0, p2}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->getBatchPipelineConfiguration(Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    move-result-object v4

    .line 359
    new-instance v7, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;

    iget-object p2, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    invoke-direct {v7, p2, p3}, Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;-><init>(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;)V

    .line 360
    sget-object p2, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$CodecType:[I

    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getCodecConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;->getCodecType()Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 370
    new-instance p2, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;

    new-instance v2, Lcom/amazon/client/metrics/thirdparty/codec/MetricBatchToStringCodec;

    invoke-direct {v2}, Lcom/amazon/client/metrics/thirdparty/codec/MetricBatchToStringCodec;-><init>()V

    new-instance v3, Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryToStringCodec;

    invoke-direct {v3}, Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryToStringCodec;-><init>()V

    iget-object v5, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    move-object v0, p2

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;-><init>(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;Lcom/amazon/client/metrics/thirdparty/codec/MetricBatchCodec;Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryCodec;Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;)V

    return-object p2

    .line 378
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported CodecType: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    .line 379
    invoke-virtual {p3}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getCodecConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;->getCodecType()Lcom/amazon/client/metrics/thirdparty/configuration/CodecType;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_1
    new-instance p2, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;

    new-instance v2, Lcom/amazon/client/metrics/thirdparty/codec/MetricBatchProtocolBuffersCodec;

    invoke-direct {v2}, Lcom/amazon/client/metrics/thirdparty/codec/MetricBatchProtocolBuffersCodec;-><init>()V

    new-instance v3, Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryProtocolBuffersCodec;

    invoke-direct {v3}, Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryProtocolBuffersCodec;-><init>()V

    iget-object v5, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    move-object v0, p2

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;-><init>(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;Lcom/amazon/client/metrics/thirdparty/codec/MetricBatchCodec;Lcom/amazon/client/metrics/thirdparty/codec/MetricEntryCodec;Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;Lcom/amazon/client/metrics/thirdparty/UserAgentHelper;)V

    return-object p2
.end method

.method protected createBatchQueue(Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;)Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    invoke-virtual {p0, p1}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->getBatchPipelineConfiguration(Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    move-result-object v0

    .line 405
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$BatchQueueType:[I

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v2, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getPipelineConfiguration(Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    move-result-object v2

    .line 406
    invoke-interface {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getBatchQueueType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    move-result-object v2

    .line 405
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    const-string v4, "createBatchQueue"

    const/4 v5, 0x0

    if-eq v1, v3, :cond_2

    const/4 v6, 0x3

    if-ne v1, v6, :cond_1

    .line 437
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    .line 438
    invoke-virtual {v6, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getBatchQueueDirectoryName(Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 439
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 440
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-direct {p1, v0, v2, v1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/SemiVolatileBoundedByteArrayQueue;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;Ljava/io/File;)V

    return-object p1

    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    .line 445
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->getPriority()Lcom/amazon/client/metrics/thirdparty/Priority;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->getChannel()Lcom/amazon/client/metrics/thirdparty/Channel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Failed to create batch directory for semi-volatile queue. No metrics will be recorded for Channel: %s and Priority: %s in the SemiVolatile queue. Falling back to VolatileQueue"

    .line 443
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 446
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, p1, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    invoke-static {v4, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-direct {p1, v0, v1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;)V

    return-object p1

    .line 451
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported BatchQueueType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    .line 452
    invoke-virtual {v2, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getPipelineConfiguration(Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getBatchQueueType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchQueueType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_2
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    .line 418
    invoke-virtual {v6, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getBatchQueueDirectoryName(Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 419
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 420
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-direct {p1, v0, v2, v1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/NonVolatileBoundedByteArrayQueue;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;Ljava/io/File;)V

    return-object p1

    :cond_3
    new-array v1, v3, [Ljava/lang/Object;

    .line 425
    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->getPriority()Lcom/amazon/client/metrics/thirdparty/Priority;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {p1}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;->getChannel()Lcom/amazon/client/metrics/thirdparty/Channel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Failed to create batch directory for non-volatile queue. No metrics will be recorded for Channel: %s and Priority: %s in the NonVolatile queue. Falling back to VolatileQueue"

    .line 423
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 426
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, p1, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    invoke-static {v4, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-direct {p1, v0, v1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;)V

    return-object p1

    .line 408
    :cond_4
    new-instance p1, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    invoke-direct {p1, v0, v1}, Lcom/amazon/client/metrics/thirdparty/batch/queue/VolatileBoundedByteArrayQueue;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;)V

    return-object p1
.end method

.method protected createBatchTransmitter(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;)Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;
    .locals 14

    move-object v0, p0

    .line 471
    invoke-interface/range {p4 .. p4}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getTransmissionPeriodMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mTransmissionOffsetMillis:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->addOffset(JJ)J

    move-result-wide v11

    .line 472
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$BatchTransmitterType:[I

    invoke-interface/range {p4 .. p4}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getBatchTransmitterType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 477
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UrgentBatchTransmitter;

    iget-object v10, v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    iget-object v13, v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    move-object v5, v1

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v13}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UrgentBatchTransmitter;-><init>(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;JLandroid/content/Context;)V

    return-object v1

    .line 480
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported PeriodicBatchTransmitterType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-interface/range {p4 .. p4}, Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;->getBatchTransmitterType()Lcom/amazon/client/metrics/thirdparty/configuration/BatchTransmitterType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    :cond_1
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/PeriodicBatchTransmitter;

    iget-object v10, v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    iget-object v13, v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    move-object v5, v1

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v13}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/PeriodicBatchTransmitter;-><init>(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;JLandroid/content/Context;)V

    return-object v1
.end method

.method protected createDeviceInfoManager(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;
    .locals 16

    move-object/from16 v0, p0

    .line 260
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$Channel:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 274
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;

    iget-object v2, v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-direct {v1, v2}, Lcom/amazon/client/metrics/thirdparty/AndroidDeviceInfoManager;-><init>(Lcom/amazon/device/utils/thirdparty/DeviceUtil;)V

    goto :goto_0

    .line 270
    :cond_0
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/RotatingDeviceInfoManager;

    iget-object v4, v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    const-string v6, "locationDeviceSerialNumberUUID"

    const-string v7, "locationSessionIDKey"

    const-string v8, "locationCustomerIDKey"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/client/metrics/thirdparty/RotatingDeviceInfoManager;-><init>(Landroid/content/Context;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_1
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;

    iget-object v10, v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    const/4 v15, 0x1

    const-string/jumbo v12, "nonAnonymousDeviceSerialNumberUUID"

    const-string/jumbo v13, "nonAnonymousSessionIDKey"

    const-string/jumbo v14, "nonAnonymousCustomerIDKey"

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;-><init>(Landroid/content/Context;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 262
    :cond_2
    new-instance v1, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;

    iget-object v3, v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    const/4 v8, 0x0

    const-string v5, "anonymousDeviceSerialNumberUUID"

    const-string v6, "anonymousSessionIDKey"

    const-string v7, "anonymousCustomerIDKey"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/amazon/client/metrics/thirdparty/OverridingDeviceInfoManager;-><init>(Landroid/content/Context;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    :goto_0
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/Priority;->CRITICAL:Lcom/amazon/client/metrics/thirdparty/Priority;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "metricBatchType"

    const-string v3, "critical"

    .line 277
    invoke-interface {v1, v2, v3}, Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "criticalMetricBatchSource"

    const-string v3, "app"

    .line 278
    invoke-interface {v1, v2, v3}, Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;->addToMetricsDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method protected createExtraBatchCreators()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;",
            "Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;",
            ">;"
        }
    .end annotation

    .line 390
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected createMAPMetricsTransport(Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;)Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;
    .locals 4

    .line 329
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;-><init>(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;)V

    return-object v0
.end method

.method protected createMetricsConfigurationParser()Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;
    .locals 1

    .line 522
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;

    invoke-direct {v0}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;-><init>()V

    return-object v0
.end method

.method protected createMetricsService()Lcom/amazon/client/metrics/thirdparty/MetricsService;
    .locals 19

    move-object/from16 v7, p0

    const-string v8, "createMetricsService"

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 193
    :try_start_0
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;

    iget-object v1, v7, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;-><init>(Landroid/content/Context;)V

    .line 194
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 195
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/Priority;->values()[Lcom/amazon/client/metrics/thirdparty/Priority;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->createMetricsTransport()Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    move-result-object v1

    iput-object v1, v7, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsTransport:Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    .line 201
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 202
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/Priority;->HIGH:Lcom/amazon/client/metrics/thirdparty/Priority;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/Priority;->NORMAL:Lcom/amazon/client/metrics/thirdparty/Priority;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/Priority;->CRITICAL:Lcom/amazon/client/metrics/thirdparty/Priority;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/amazon/client/metrics/thirdparty/Priority;

    .line 207
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/Channel;->values()[Lcom/amazon/client/metrics/thirdparty/Channel;

    move-result-object v15

    array-length v6, v15

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v15, v5

    .line 208
    new-instance v2, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    invoke-direct {v2, v14, v1}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;-><init>(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    .line 209
    invoke-virtual {v7, v2}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->getBatchPipelineConfiguration(Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    move-result-object v16

    if-nez v16, :cond_1

    .line 211
    sget-object v2, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v3, "Skipping batch pipeline setup for Priority %s and Channel %s because no configuration is provided."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v14, v4, v10

    aput-object v1, v4, v9

    .line 213
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v10, [Ljava/lang/Object;

    .line 211
    invoke-virtual {v2, v8, v1, v3}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v18, v5

    move/from16 v16, v6

    goto :goto_1

    .line 219
    :cond_1
    new-instance v2, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    invoke-direct {v2, v14, v1}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;-><init>(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    invoke-virtual {v7, v2}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->createBatchQueue(Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;)Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;

    move-result-object v2

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;->setQueueName(Ljava/lang/String;)V

    .line 223
    new-instance v3, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    invoke-direct {v3, v14, v1}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;-><init>(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    .line 224
    invoke-virtual {v7, v14, v1}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->createDeviceInfoManager(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;

    move-result-object v4

    invoke-virtual {v7, v2, v3, v4}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->createBatchCreator(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;Lcom/amazon/client/metrics/thirdparty/DeviceInfoManager;)Lcom/amazon/client/metrics/thirdparty/batch/creator/BatchCreator;

    move-result-object v3

    .line 225
    new-instance v4, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    invoke-direct {v4, v14, v1}, Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;-><init>(Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V

    .line 226
    invoke-interface {v11, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v3, v7, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsTransport:Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    move-object/from16 v1, p0

    move-object/from16 v17, v4

    move-object v4, v0

    move/from16 v18, v5

    move-object/from16 v5, v16

    move/from16 v16, v6

    move-object/from16 v6, v17

    .line 228
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->createBatchTransmitter(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;Lcom/amazon/client/metrics/thirdparty/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;)Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    move-result-object v1

    .line 229
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v18, 0x1

    move/from16 v6, v16

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->createExtraBatchCreators()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 233
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->log:Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "Triggering intial push for stored metrics on service startup"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v8, v1, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;

    .line 235
    invoke-virtual {v1, v10}, Lcom/amazon/client/metrics/thirdparty/batch/transmitter/BatchTransmitter;->transmitBatches(Z)V

    goto :goto_2

    .line 238
    :cond_3
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/MetricsService;

    iget-object v1, v7, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    invoke-direct {v0, v1, v11, v12}, Lcom/amazon/client/metrics/thirdparty/MetricsService;-><init>(Lcom/amazon/device/utils/thirdparty/DeviceUtil;Ljava/util/Map;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/amazon/client/metrics/thirdparty/CodecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 243
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v10

    const-string v3, "\'could not create batch queue"

    invoke-virtual {v1, v8, v3, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 240
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v10

    const-string v3, "could not serialize device info"

    invoke-virtual {v1, v8, v3, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createMetricsTransport()Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;
    .locals 5

    .line 294
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/transport/StaticCredentialMetricsTransport;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/client/metrics/thirdparty/transport/StaticCredentialMetricsTransport;-><init>(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;)V

    .line 295
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$TransportType:[I

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getNetworkConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;->getTransportType()Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    .line 308
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->createOutputStreamMetricsTransport()Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 310
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "createMetricsTransport"

    const-string/jumbo v4, "postInitialize failed"

    invoke-virtual {v1, v3, v4, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported TransportType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getNetworkConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;->getTransportType()Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$thirdparty$configuration$HttpRequestSignerType:[I

    iget-object v4, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v4}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getHttpConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getHttpRequestSignerType()Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 304
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown request signer type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getHttpConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;->getHttpRequestSignerType()Lcom/amazon/client/metrics/thirdparty/configuration/HttpRequestSignerType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->createMAPMetricsTransport(Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;)Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    move-result-object v0

    return-object v0

    .line 299
    :cond_4
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mDelegatingOAuthHelper:Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$DelegatingOAuthHelper;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->createProvidedOAuthTransport(Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;)Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;

    move-result-object v0

    return-object v0
.end method

.method protected createOutputStreamMetricsTransport()Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "metric-log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 341
    sget-object v1, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->log:Lcom/amazon/dp/logger/DPLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Metric log file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "createOutputStreamMetricsService"

    invoke-virtual {v1, v4, v2, v3}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 343
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/transport/OutputStreamMetricsTransport;

    invoke-direct {v0, v1}, Lcom/amazon/client/metrics/thirdparty/transport/OutputStreamMetricsTransport;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method protected createProvidedOAuthTransport(Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;)Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;
    .locals 7

    .line 322
    new-instance v6, Lcom/amazon/client/metrics/thirdparty/transport/ProvidedOAuthMetricsTransport;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    iget-object v3, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mDeviceUtil:Lcom/amazon/device/utils/thirdparty/DeviceUtil;

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/client/metrics/thirdparty/transport/ProvidedOAuthMetricsTransport;-><init>(Landroid/content/Context;Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;Lcom/amazon/device/utils/thirdparty/DeviceUtil;Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;Lcom/amazon/client/metrics/thirdparty/transport/MetricsTransport;)V

    return-object v6
.end method

.method protected getBatchPipelineConfiguration(Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    invoke-virtual {v0, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;->getPipelineConfiguration(Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    move-result-object p1

    return-object p1
.end method

.method protected initializeMetricsConfiguration(Landroid/content/Context;)Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 512
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationHelper;

    invoke-direct {v0, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationHelper;-><init>(Landroid/content/Context;)V

    .line 513
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->createMetricsConfigurationParser()Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationHelper;->initializeMetricsConfiguration(Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationParser;)Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public setOAuthHelper(Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mDelegatingOAuthHelper:Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$DelegatingOAuthHelper;

    invoke-virtual {v0, p1}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$DelegatingOAuthHelper;->setInnerHelper(Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;)V

    return-void
.end method

.method protected shouldUsePassThroughMode(Landroid/content/Context;)Z
    .locals 5

    .line 170
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "shouldUsePassThroughMode"

    const-string v4, "Looking up transport preferences at transport-preferences"

    invoke-virtual {v0, v3, v4, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "transport-preferences"

    .line 172
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "PREF_USE_PASS_THROUGH_MODE"

    .line 174
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 176
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    const-string/jumbo v1, "usePassThroughMode"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public shutdown()V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;

    if-eqz v0, :cond_0

    .line 499
    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/PeriodicMetricReporter;->shutdown()V

    :cond_0
    return-void
.end method
