.class public Lcom/audible/sdk/metric/LegacySdkMetricRecorder;
.super Ljava/lang/Object;
.source "LegacySdkMetricRecorder.java"


# instance fields
.field private authenticateTime:Lcom/audible/mobile/metric/domain/TimerMetric;

.field private closeFileTime:Lcom/audible/mobile/metric/domain/TimerMetric;

.field private final metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

.field private openFileTime:Lcom/audible/mobile/metric/domain/TimerMetric;

.field private readAudioSectionOffsetTime:Lcom/audible/mobile/metric/domain/TimerMetric;

.field private readCoverArtInfoTime:Lcom/audible/mobile/metric/domain/TimerMetric;

.field private readCoverArtTime:Lcom/audible/mobile/metric/domain/TimerMetric;

.field private readMetadataInfoTime:Lcom/audible/mobile/metric/domain/TimerMetric;

.field private readMetadataTime:Lcom/audible/mobile/metric/domain/TimerMetric;

.field private seekTime:Lcom/audible/mobile/metric/domain/TimerMetric;

.field private verifyFileTime:Lcom/audible/mobile/metric/domain/TimerMetric;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MetricManager must not be null"

    .line 41
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/mobile/metric/logger/MetricManager;

    iput-object p1, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    return-void
.end method

.method private getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)Lcom/audible/mobile/metric/domain/TimerMetric;
    .locals 3

    .line 239
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->LegacyAudibleSdk:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->LegacyAudibleSdk:Lcom/audible/mobile/metric/logger/AAPSource;

    invoke-direct {v0, v1, v2, p1}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object p1

    .line 240
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->start()V

    return-object p1
.end method

.method private stopAndRecordMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 247
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 248
    iget-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/DurationMetric;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public recordAuthenticateException(Ljava/lang/Exception;)V
    .locals 4

    .line 164
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->LegacyAudibleSdk:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->LegacyAudibleSdk:Lcom/audible/mobile/metric/logger/AAPSource;

    sget-object v3, Lcom/audible/sdk/metric/LegacySdkMetricNames;->AuthenticateException:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Throwable;)V

    .line 165
    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/ExceptionMetric;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/ExceptionMetric;)V

    return-void
.end method

.method public recordOpenFileException(Ljava/lang/Exception;)V
    .locals 4

    .line 67
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->LegacyAudibleSdk:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->LegacyAudibleSdk:Lcom/audible/mobile/metric/logger/AAPSource;

    sget-object v3, Lcom/audible/sdk/metric/LegacySdkMetricNames;->OpenFileException:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Throwable;)V

    .line 68
    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/ExceptionMetric;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/ExceptionMetric;)V

    return-void
.end method

.method public startAuthenticateTimer()V
    .locals 1

    .line 145
    sget-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->AuthenticateTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->authenticateTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method public startCloseFileTimer()V
    .locals 1

    .line 224
    sget-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->CloseFileTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->closeFileTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method public startOpenFileTimer()V
    .locals 1

    .line 49
    sget-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->OpenFileTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->openFileTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method public startReadAudioSectionOffsetTimer()V
    .locals 1

    .line 207
    sget-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->ReadAudioSectionOffsetTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->readAudioSectionOffsetTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method public startReadCoverArtInfoTimer()V
    .locals 1

    .line 128
    sget-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->ReadCoverArtInfoTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->readCoverArtInfoTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method public startReadCoverArtTimer()V
    .locals 1

    .line 111
    sget-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->ReadCoverArtTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->readCoverArtTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method public startReadMetadataInfoTimer()V
    .locals 1

    .line 94
    sget-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->ReadMetadataInfoTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->readMetadataInfoTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method public startReadMetadataTimer()V
    .locals 1

    .line 77
    sget-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->ReadMetadataTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->readMetadataTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method public startSeekTimer()V
    .locals 1

    .line 174
    sget-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->SeekTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->seekTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method public startVerifyFileTimer()V
    .locals 1

    .line 190
    sget-object v0, Lcom/audible/sdk/metric/LegacySdkMetricNames;->VerifyFileTime:Lcom/audible/sdk/metric/LegacySdkMetricNames;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->verifyFileTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method public stopAuthenticateTimer()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->authenticateTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopAndRecordMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-void
.end method

.method public stopCloseFileTimer()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->closeFileTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopAndRecordMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-void
.end method

.method public stopOpenFileTimer()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->openFileTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopAndRecordMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-void
.end method

.method public stopReadAudioSectionOffsetTimer()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->readAudioSectionOffsetTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopAndRecordMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-void
.end method

.method public stopReadCoverArtInfoTimer()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->readCoverArtInfoTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopAndRecordMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-void
.end method

.method public stopReadCoverArtTimer()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->readCoverArtTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopAndRecordMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-void
.end method

.method public stopReadMetadataInfoTimer()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->readMetadataInfoTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopAndRecordMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-void
.end method

.method public stopReadMetadataTimer()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->readMetadataTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopAndRecordMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-void
.end method

.method public stopSeekTimer()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->seekTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopAndRecordMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-void
.end method

.method public stopVerifyFileTimer()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->verifyFileTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0, v0}, Lcom/audible/sdk/metric/LegacySdkMetricRecorder;->stopAndRecordMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-void
.end method
