.class public Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;
.super Ljava/lang/Object;
.source "BaseMetricsServiceFactory.java"


# static fields
.field protected static final METRIC_LOG_FILE_NAME:Ljava/lang/String; = "metric-log"

.field protected static final PERIODIC_METRIC_REPORTER_PERIOD_MINS:I = 0x5

.field protected static final PREF_USE_PASS_THROUGH_MODE:Ljava/lang/String; = "PREF_USE_PASS_THROUGH_MODE"

.field protected static final PROGRAM_NAME_METRICS_SERVICE:Ljava/lang/String; = "MetricsService"

.field protected static final SOURCE_NAME_RECORD_METRIC:Ljava/lang/String; = "RecordMetric"

.field protected static final TRANSPORT_PREF_FILENAME:Ljava/lang/String; = "transport-preferences"

.field protected static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

.field protected mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

.field protected mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

.field protected final mOAuthRequestSigner:Lcom/amazon/whispersync/client/metrics/transport/OAuthRequestSigner;

.field protected mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

.field protected mTransmissionOffsetMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "BaseMetricsServiceFactory"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whispersync/device/utils/DeviceUtil;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;-><init>(Landroid/content/Context;Lcom/amazon/whispersync/device/utils/DeviceUtil;Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whispersync/device/utils/DeviceUtil;Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/amazon/whispersync/client/metrics/transport/OAuthRequestSigner;

    invoke-direct {v0}, Lcom/amazon/whispersync/client/metrics/transport/OAuthRequestSigner;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mOAuthRequestSigner:Lcom/amazon/whispersync/client/metrics/transport/OAuthRequestSigner;

    .line 123
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    if-nez p3, :cond_0

    .line 125
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->getMetricsConfiguration(Landroid/content/Context;)Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    .line 126
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->shouldUsePassThroughMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 127
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {p2}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->setPassThroughMode()V

    .line 129
    :cond_1
    sget-object p2, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "createMetricsService"

    const-string v2, "Getting MetricsFactory via getSystemService()."

    invoke-virtual {p2, v1, v2, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    const-string v0, "com.amazon.whispersync.dp.metrics.MetricsFactory"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    if-nez p2, :cond_2

    .line 132
    sget-object p2, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "Could not obtain MetricsFactory via context.getSystemService(). Falling back on AndroidMetricsFactoryImpl.getInstance(context)"

    invoke-virtual {p2, v1, v0, p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/AndroidMetricsFactoryImpl;->getInstance(Landroid/content/Context;)Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    .line 135
    :cond_2
    new-instance p1, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;

    iget-object p2, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    const-string p3, "MetricsService"

    const-string v0, "RecordMetric"

    invoke-direct {p1, p2, p3, v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporterImpl;-><init>(Lcom/amazon/whispersync/client/metrics/MetricsFactory;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    const-wide/16 p2, 0x5

    .line 136
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->startRecordingPeriodically(JLjava/util/concurrent/TimeUnit;)V

    .line 150
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double p1, p1, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    double-to-long p1, p1

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mTransmissionOffsetMillis:J

    return-void
.end method

.method private createHTTPMetricsTransport()Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;
    .locals 5

    .line 265
    new-instance v0, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    iget-object v3, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->createRequestSigner()Lamazon/whispersync/communication/authentication/RequestSigner;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;-><init>(Landroid/content/Context;Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;Lcom/amazon/whispersync/device/utils/DeviceUtil;Lamazon/whispersync/communication/authentication/RequestSigner;)V

    return-object v0
.end method

.method private createOutputStreamMetricsTransport()Lcom/amazon/whispersync/client/metrics/transport/OutputStreamMetricsTransport;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "metric-log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 296
    sget-object v1, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

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

    invoke-virtual {v1, v4, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 298
    new-instance v0, Lcom/amazon/whispersync/client/metrics/transport/OutputStreamMetricsTransport;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/client/metrics/transport/OutputStreamMetricsTransport;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method


# virtual methods
.method protected addOffset(JJ)J
    .locals 3

    .line 464
    rem-long/2addr p3, p1

    const-wide/16 v0, 0x2

    .line 466
    div-long v0, p1, v0

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    add-long/2addr p3, p1

    :cond_0
    return-wide p3
.end method

.method protected createBatchCreator(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;Lcom/amazon/whispersync/client/metrics/Priority;Lcom/amazon/whispersync/client/metrics/DeviceInfoManager;)Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/dp/framework/CodecException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->getBatchPipelineConfiguration(Lcom/amazon/whispersync/client/metrics/Priority;)Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    move-result-object v4

    .line 314
    sget-object p2, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$configuration$CodecType:[I

    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getCodecConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;->getCodecType()Lcom/amazon/whispersync/client/metrics/configuration/CodecType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 323
    new-instance p2, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;

    new-instance v2, Lcom/amazon/whispersync/client/metrics/codec/MetricBatchToStringCodec;

    invoke-direct {v2}, Lcom/amazon/whispersync/client/metrics/codec/MetricBatchToStringCodec;-><init>()V

    new-instance v3, Lcom/amazon/whispersync/client/metrics/codec/MetricEntryToStringCodec;

    invoke-direct {v3}, Lcom/amazon/whispersync/client/metrics/codec/MetricEntryToStringCodec;-><init>()V

    iget-object v5, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    move-object v0, p2

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;-><init>(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;Lcom/amazon/whispersync/client/metrics/codec/MetricBatchCodec;Lcom/amazon/whispersync/client/metrics/codec/MetricEntryCodec;Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;Lcom/amazon/whispersync/client/metrics/DeviceInfoManager;)V

    return-object p2

    .line 330
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported CodecType: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {p3}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getCodecConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/whispersync/client/metrics/configuration/CodecConfiguration;->getCodecType()Lcom/amazon/whispersync/client/metrics/configuration/CodecType;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_1
    new-instance p2, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;

    new-instance v2, Lcom/amazon/whispersync/client/metrics/codec/MetricBatchProtocolBuffersCodec;

    invoke-direct {v2}, Lcom/amazon/whispersync/client/metrics/codec/MetricBatchProtocolBuffersCodec;-><init>()V

    new-instance v3, Lcom/amazon/whispersync/client/metrics/codec/MetricEntryProtocolBuffersCodec;

    invoke-direct {v3}, Lcom/amazon/whispersync/client/metrics/codec/MetricEntryProtocolBuffersCodec;-><init>()V

    iget-object v5, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    move-object v0, p2

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;-><init>(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;Lcom/amazon/whispersync/client/metrics/codec/MetricBatchCodec;Lcom/amazon/whispersync/client/metrics/codec/MetricEntryCodec;Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;Lcom/amazon/whispersync/client/metrics/DeviceInfoManager;)V

    return-object p2
.end method

.method protected createBatchQueue(Lcom/amazon/whispersync/client/metrics/Priority;)Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->getBatchPipelineConfiguration(Lcom/amazon/whispersync/client/metrics/Priority;)Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    move-result-object v0

    .line 346
    sget-object v1, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$configuration$BatchQueueType:[I

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {v2}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getBatchQueueConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;->getBatchQueueType()Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 354
    new-instance v1, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    iget-object v3, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {v4, p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getBatchQueueDirectoryName(Lcom/amazon/whispersync/client/metrics/Priority;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lcom/amazon/whispersync/client/metrics/batch/queue/NonVolatileBoundedByteArrayQueue;-><init>(Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;Ljava/io/File;)V

    return-object v1

    .line 361
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported BatchQueueType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getBatchQueueConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueConfiguration;->getBatchQueueType()Lcom/amazon/whispersync/client/metrics/configuration/BatchQueueType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 348
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    invoke-direct {p1, v0, v1}, Lcom/amazon/whispersync/client/metrics/batch/queue/VolatileBoundedByteArrayQueue;-><init>(Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;)V

    return-object p1
.end method

.method protected createBatchTransmitter(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;)Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;
    .locals 13

    move-object v0, p0

    .line 389
    invoke-interface/range {p4 .. p4}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getTransmissionPeriodMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mTransmissionOffsetMillis:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->addOffset(JJ)J

    move-result-wide v11

    .line 390
    sget-object v1, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$configuration$BatchTransmitterType:[I

    invoke-interface/range {p4 .. p4}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getBatchTransmitterType()Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 394
    new-instance v1, Lcom/amazon/whispersync/client/metrics/batch/transmitter/UrgentBatchTransmitter;

    iget-object v10, v0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    move-object v5, v1

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v12}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/UrgentBatchTransmitter;-><init>(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;J)V

    return-object v1

    .line 396
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported PeriodicBatchTransmitterType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;->getBatchTransmitterType()Lcom/amazon/whispersync/client/metrics/configuration/BatchTransmitterType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_1
    new-instance v1, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;

    iget-object v10, v0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    move-object v5, v1

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v12}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/PeriodicBatchTransmitter;-><init>(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;J)V

    return-object v1
.end method

.method protected createMetricsService()Lcom/amazon/whispersync/client/metrics/MetricsService;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "createMetricsService"

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 176
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->createMetricsTransport()Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;

    move-result-object v0

    .line 177
    new-instance v5, Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;

    iget-object v6, v1, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;-><init>(Landroid/content/Context;)V

    .line 178
    new-instance v6, Ljava/util/HashMap;

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/Priority;->values()[Lcom/amazon/whispersync/client/metrics/Priority;

    move-result-object v7

    array-length v7, v7

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 179
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {}, Lcom/amazon/whispersync/client/metrics/Priority;->values()[Lcom/amazon/whispersync/client/metrics/Priority;

    move-result-object v8

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    new-instance v8, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;

    iget-object v9, v1, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-direct {v8, v9}, Lcom/amazon/whispersync/client/metrics/AndroidDeviceInfoManager;-><init>(Lcom/amazon/whispersync/device/utils/DeviceUtil;)V

    .line 182
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/Priority;->values()[Lcom/amazon/whispersync/client/metrics/Priority;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_2

    aget-object v12, v9, v11

    .line 183
    invoke-virtual {v1, v12}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->getBatchPipelineConfiguration(Lcom/amazon/whispersync/client/metrics/Priority;)Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    move-result-object v13

    if-nez v13, :cond_0

    .line 188
    sget-object v13, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v14, "Skipping batch pipeline setup for "

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v12, v15, v4

    const-string v12, " because no configuration is provided."

    aput-object v12, v15, v3

    invoke-virtual {v13, v2, v14, v15}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 196
    :cond_0
    invoke-virtual {v1, v12}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->createBatchQueue(Lcom/amazon/whispersync/client/metrics/Priority;)Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;

    move-result-object v14

    .line 202
    sget-object v15, Lcom/amazon/whispersync/client/metrics/Priority;->RESERVED_FOR_NON_ANONYMOUS_METRICS:Lcom/amazon/whispersync/client/metrics/Priority;

    invoke-virtual {v12, v15}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 206
    new-instance v15, Lcom/amazon/whispersync/client/metrics/DSNOverridingDeviceInfoManager;

    iget-object v3, v1, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-direct {v15, v3, v4}, Lcom/amazon/whispersync/client/metrics/DSNOverridingDeviceInfoManager;-><init>(Landroid/content/Context;Lcom/amazon/whispersync/device/utils/DeviceUtil;)V

    .line 207
    invoke-virtual {v1, v14, v12, v15}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->createBatchCreator(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;Lcom/amazon/whispersync/client/metrics/Priority;Lcom/amazon/whispersync/client/metrics/DeviceInfoManager;)Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;

    move-result-object v3

    goto :goto_1

    .line 209
    :cond_1
    invoke-virtual {v1, v14, v12, v8}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->createBatchCreator(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;Lcom/amazon/whispersync/client/metrics/Priority;Lcom/amazon/whispersync/client/metrics/DeviceInfoManager;)Lcom/amazon/whispersync/client/metrics/batch/creator/BatchCreator;

    move-result-object v3

    .line 211
    :goto_1
    invoke-interface {v6, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {v1, v14, v0, v5, v13}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->createBatchTransmitter(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;Lcom/amazon/whispersync/client/metrics/batch/transmitter/UploadResultBroadcaster;Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;)Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    move-result-object v3

    .line 217
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_0

    .line 221
    :cond_2
    sget-object v0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v3, "Triggering intial push for stored metrics on service startup"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;

    const/4 v4, 0x0

    .line 223
    invoke-virtual {v3, v4}, Lcom/amazon/whispersync/client/metrics/batch/transmitter/BatchTransmitter;->transmitBatches(Z)V

    goto :goto_3

    .line 226
    :cond_3
    new-instance v0, Lcom/amazon/whispersync/client/metrics/MetricsService;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->createTriggerEvaluator()Lcom/amazon/whispersync/client/metrics/trigger/TriggerEvaluator;

    move-result-object v3

    invoke-direct {v0, v6, v7, v3}, Lcom/amazon/whispersync/client/metrics/MetricsService;-><init>(Ljava/util/Map;Ljava/util/List;Lcom/amazon/whispersync/client/metrics/trigger/TriggerEvaluator;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/dp/framework/CodecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 231
    sget-object v3, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v5, "\'could not create batch queue"

    invoke-virtual {v3, v2, v5, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 228
    sget-object v3, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const-string v5, "could not serialize device info"

    invoke-virtual {v3, v2, v5, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected createMetricsTransport()Lcom/amazon/whispersync/client/metrics/transport/MetricsTransport;
    .locals 5

    .line 244
    sget-object v0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$configuration$TransportType:[I

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getTransportType()Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 249
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->createOutputStreamMetricsTransport()Lcom/amazon/whispersync/client/metrics/transport/OutputStreamMetricsTransport;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 251
    sget-object v2, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const-string v3, "createMetricsTransport"

    const-string/jumbo v4, "postInitialize failed"

    invoke-virtual {v2, v3, v4, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported TransportType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {v2}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getTransportType()Lcom/amazon/whispersync/client/metrics/configuration/TransportType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->createHTTPMetricsTransport()Lcom/amazon/whispersync/client/metrics/transport/HTTPMetricsTransport;

    move-result-object v0

    return-object v0
.end method

.method protected createRequestSigner()Lamazon/whispersync/communication/authentication/RequestSigner;
    .locals 3

    .line 278
    sget-object v0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory$1;->$SwitchMap$com$amazon$client$metrics$configuration$HttpRequestSignerType:[I

    iget-object v1, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getHttpConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;->getHttpRequestSignerType()Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mOAuthRequestSigner:Lcom/amazon/whispersync/client/metrics/transport/OAuthRequestSigner;

    return-object v0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported TransportType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {v2}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getHttpConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/client/metrics/configuration/HttpConfiguration;->getHttpRequestSignerType()Lcom/amazon/whispersync/client/metrics/configuration/HttpRequestSignerType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createTriggerEvaluator()Lcom/amazon/whispersync/client/metrics/trigger/TriggerEvaluator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBatchPipelineConfiguration(Lcom/amazon/whispersync/client/metrics/Priority;)Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mMetricsConfiguration:Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;->getPipelineConfiguration(Lcom/amazon/whispersync/client/metrics/Priority;)Lcom/amazon/whispersync/client/metrics/configuration/BatchPipelineConfiguration;

    move-result-object p1

    return-object p1
.end method

.method protected getMetricsConfiguration(Landroid/content/Context;)Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 436
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "metrics_configuration"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 437
    new-instance v1, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationParser;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationParser;-><init>(Ljava/io/InputStream;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationParser;->parseConfiguration()Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfiguration;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 439
    new-instance v0, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;

    const-string v1, "An IOException was thrown loading the metrics configuration"

    invoke-direct {v0, v1, p1}, Lcom/amazon/whispersync/client/metrics/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getPeriodicMetricReporter()Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    return-object v0
.end method

.method protected getSessionID()Ljava/lang/String;
    .locals 4

    .line 449
    sget-object v0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-interface {v2}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchSessionID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "BaseMetricsServiceFactory_getSessionID"

    const-string v3, "SessionID"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mDeviceUtil:Lcom/amazon/whispersync/device/utils/DeviceUtil;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/utils/DeviceUtil;->fetchSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setOAuthHelper(Lcom/amazon/whispersync/client/metrics/transport/OAuthHelper;)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mOAuthRequestSigner:Lcom/amazon/whispersync/client/metrics/transport/OAuthRequestSigner;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/client/metrics/transport/OAuthRequestSigner;->setOAuthHelper(Lcom/amazon/whispersync/client/metrics/transport/OAuthHelper;)V

    return-void
.end method

.method protected shouldUsePassThroughMode(Landroid/content/Context;)Z
    .locals 5

    .line 157
    sget-object v0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "shouldUsePassThroughMode"

    const-string v4, "Looking up transport preferences at transport-preferences"

    invoke-virtual {v0, v3, v4, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "transport-preferences"

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "PREF_USE_PASS_THROUGH_MODE"

    .line 161
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 163
    sget-object v0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    const-string/jumbo v1, "usePassThroughMode"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public shutdown()V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/BaseMetricsServiceFactory;->mPeriodicMetricReporter:Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;

    if-eqz v0, :cond_0

    .line 413
    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;->shutdown()V

    :cond_0
    return-void
.end method
