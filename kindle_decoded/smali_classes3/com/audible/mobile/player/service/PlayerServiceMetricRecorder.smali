.class public Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "PlayerServiceMetricRecorder.java"


# instance fields
.field private final metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

.field private pauseMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

.field private seamlessSwitchMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

.field private seekMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

.field private setSpeedMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

.field private startMetric:Lcom/audible/mobile/metric/domain/TimerMetric;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    return-void
.end method

.method private getAndStartPlayerServiceTimerMetric(Lcom/audible/mobile/player/metric/Names;)Lcom/audible/mobile/metric/domain/TimerMetric;
    .locals 3

    .line 222
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->Player:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->Service:Lcom/audible/mobile/metric/logger/AAPSource;

    invoke-direct {v0, v1, v2, p1}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object p1

    .line 223
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->start()V

    return-object p1
.end method

.method private resetAllCounterMetrics()V
    .locals 1

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->seamlessSwitchMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    .line 230
    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->startMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    .line 231
    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->pauseMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    .line 232
    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->seekMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    .line 233
    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->setSpeedMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method


# virtual methods
.method public onContentUpdated(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->seamlessSwitchMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    if-eqz p1, :cond_0

    .line 136
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 137
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->seamlessSwitchMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-interface {p1, v0}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/DurationMetric;)V

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->seamlessSwitchMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    :cond_0
    return-void
.end method

.method public onError(Lcom/audible/mobile/player/exception/PlayerException;)V
    .locals 1

    .line 190
    sget-object v0, Lcom/audible/mobile/player/metric/Names;->PlayerError:Lcom/audible/mobile/player/metric/Names;

    invoke-virtual {p0, v0, p1}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->sendPlayerExceptionMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/exception/PlayerException;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 195
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->resetAllCounterMetrics()V

    .line 196
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->Player:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->Service:Lcom/audible/mobile/metric/logger/AAPSource;

    sget-object v3, Lcom/audible/mobile/player/metric/Names;->InternalError:Lcom/audible/mobile/player/metric/Names;

    invoke-direct {v0, v1, v2, v3}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    if-eqz p1, :cond_0

    .line 198
    sget-object v1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ERROR_SOURCE_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v0, v1, p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    :cond_0
    if-eqz p2, :cond_1

    .line 202
    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ERROR_MESSAGE_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v0, p1, p2}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    return-void
.end method

.method public onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V
    .locals 4

    .line 210
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->resetAllCounterMetrics()V

    .line 211
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->Player:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->Service:Lcom/audible/mobile/metric/logger/AAPSource;

    sget-object v3, Lcom/audible/mobile/player/metric/Names;->LicenseError:Lcom/audible/mobile/player/metric/Names;

    invoke-direct {v0, v1, v2, v3}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    sget-object v1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ERROR_SOURCE_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 212
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    if-eqz p1, :cond_0

    .line 214
    sget-object p2, Lcom/audible/mobile/metric/domain/CommonDataTypes;->AUDIO_DATA_SOURCE_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    move-object p2, v0

    check-cast p2, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 215
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    .line 214
    invoke-virtual {p2, v1, p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    return-void
.end method

.method public onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 0

    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->seamlessSwitchMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->pauseMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 163
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->pauseMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-interface {v0, v1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/DurationMetric;)V

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->pauseMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->startMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 153
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->startMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-interface {v0, v1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/DurationMetric;)V

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->startMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    :cond_0
    return-void
.end method

.method public onSeekComplete()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->seekMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 173
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->seekMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-interface {v0, v1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/DurationMetric;)V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->seekMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    :cond_0
    return-void
.end method

.method public onTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->setSpeedMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    if-eqz p1, :cond_0

    .line 182
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 183
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    iget-object p2, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->setSpeedMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-interface {p1, p2}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/DurationMetric;)V

    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->setSpeedMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    :cond_0
    return-void
.end method

.method recordNewPlayerType(Lcom/audible/mobile/player/AudioDataSourceType;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    new-instance v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->Player:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v3, Lcom/audible/mobile/metric/logger/AAPSource;->Service:Lcom/audible/mobile/metric/logger/AAPSource;

    sget-object v4, Lcom/audible/mobile/player/metric/Names;->NewPlayerTypeLoaded:Lcom/audible/mobile/player/metric/Names;

    invoke-direct {v1, v2, v3, v4}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    sget-object v2, Lcom/audible/mobile/metric/domain/CommonDataTypes;->AUDIO_DATA_SOURCE_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 75
    invoke-virtual {v1, v2, p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p1

    .line 74
    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    return-void
.end method

.method recordSetAudioDataSource(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    new-instance v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->Player:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v3, Lcom/audible/mobile/metric/logger/AAPSource;->Service:Lcom/audible/mobile/metric/logger/AAPSource;

    sget-object v4, Lcom/audible/mobile/player/metric/Names;->DataSourceSet:Lcom/audible/mobile/player/metric/Names;

    invoke-direct {v1, v2, v3, v4}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    sget-object v2, Lcom/audible/mobile/metric/domain/CommonDataTypes;->AUDIO_DATA_SOURCE_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 60
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v2, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 61
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p1

    .line 59
    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    return-void
.end method

.method public sendPlayerExceptionMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/player/exception/PlayerException;)V
    .locals 8

    .line 244
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->resetAllCounterMetrics()V

    .line 245
    invoke-virtual {p2}, Lcom/audible/mobile/player/exception/PlayerException;->getAudioDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/audible/mobile/player/AudioDataSourceType;->NotSet:Lcom/audible/mobile/player/AudioDataSourceType;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/audible/mobile/player/exception/PlayerException;->getAudioDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v0

    .line 246
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 247
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 248
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 249
    :goto_2
    invoke-static {p2}, Lcom/audible/mobile/util/ErrorUtils;->getExceptionStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    const/16 v5, 0x3e7

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 252
    :goto_3
    iget-object v4, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    new-instance v5, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v6, Lcom/audible/mobile/metric/logger/AAPCategory;->Player:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v7, Lcom/audible/mobile/metric/logger/AAPSource;->Service:Lcom/audible/mobile/metric/logger/AAPSource;

    invoke-direct {v5, v6, v7, p1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ERROR_SOURCE_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 253
    invoke-virtual {p2}, Lcom/audible/mobile/player/exception/PlayerException;->getError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v5, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ERROR_CODE_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 254
    invoke-virtual {p2}, Lcom/audible/mobile/player/exception/PlayerException;->getErrorCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v5, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 255
    invoke-virtual {p2}, Lcom/audible/mobile/player/exception/PlayerException;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v5, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->AUDIO_DATA_SOURCE_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 256
    invoke-virtual {v5, p1, v0}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v5, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->NETWORK_SPEED:Lcom/audible/mobile/metric/domain/DataType;

    .line 257
    invoke-virtual {p2}, Lcom/audible/mobile/player/exception/PlayerException;->getEstimatedNetworkSpeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, p1, v0}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v5, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->NETWORK_SPEED_RANGE:Lcom/audible/mobile/metric/domain/DataType;

    sget-object v0, Lcom/audible/mobile/player/exception/NetworkSpeedRange;->Companion:Lcom/audible/mobile/player/exception/NetworkSpeedRange$Companion;

    .line 258
    invoke-virtual {p2}, Lcom/audible/mobile/player/exception/PlayerException;->getEstimatedNetworkSpeed()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/audible/mobile/player/exception/NetworkSpeedRange$Companion;->getNetwokSpeedRange(J)Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v5, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ERROR_REASON_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 259
    invoke-virtual {v5, p1, v2}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v5, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ERROR_MESSAGE_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 260
    invoke-virtual {v5, p1, v1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v5, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->STACK_TRACE:Lcom/audible/mobile/metric/domain/DataType;

    .line 261
    invoke-virtual {v5, p1, v3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v5, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    .line 262
    invoke-virtual {v5}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p1

    .line 252
    invoke-interface {v4, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    return-void
.end method

.method startPauseTimer()V
    .locals 1

    .line 111
    sget-object v0, Lcom/audible/mobile/player/metric/Names;->Pause:Lcom/audible/mobile/player/metric/Names;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->getAndStartPlayerServiceTimerMetric(Lcom/audible/mobile/player/metric/Names;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->pauseMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method startSeamlessSwitchTimer(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 4

    .line 88
    sget-object v0, Lcom/audible/mobile/player/metric/Names;->SeamlessSwitchToNewPlayerType:Lcom/audible/mobile/player/metric/Names;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->getAndStartPlayerServiceTimerMetric(Lcom/audible/mobile/player/metric/Names;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->seamlessSwitchMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    .line 89
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->Player:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->Service:Lcom/audible/mobile/metric/logger/AAPSource;

    sget-object v3, Lcom/audible/mobile/player/metric/Names;->SeamlessSwitchToNewPlayerType:Lcom/audible/mobile/player/metric/Names;

    invoke-direct {v0, v1, v2, v3}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    sget-object v1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 90
    invoke-virtual {p2}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->AUDIO_DATA_SOURCE_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 91
    invoke-virtual {p2}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    sget-object p2, Lcom/audible/mobile/metric/domain/CommonDataTypes;->PREVIOUS_AUDIO_DATA_SOURCE_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 92
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->seamlessSwitchMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    .line 93
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->start()V

    return-void
.end method

.method startSeekTimer()V
    .locals 1

    .line 120
    sget-object v0, Lcom/audible/mobile/player/metric/Names;->Seek:Lcom/audible/mobile/player/metric/Names;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->getAndStartPlayerServiceTimerMetric(Lcom/audible/mobile/player/metric/Names;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->seekMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method startSetSpeedTimer()V
    .locals 1

    .line 129
    sget-object v0, Lcom/audible/mobile/player/metric/Names;->SetSpeed:Lcom/audible/mobile/player/metric/Names;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->getAndStartPlayerServiceTimerMetric(Lcom/audible/mobile/player/metric/Names;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->setSpeedMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method startStartTimer()V
    .locals 1

    .line 102
    sget-object v0, Lcom/audible/mobile/player/metric/Names;->Start:Lcom/audible/mobile/player/metric/Names;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->getAndStartPlayerServiceTimerMetric(Lcom/audible/mobile/player/metric/Names;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->startMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method
