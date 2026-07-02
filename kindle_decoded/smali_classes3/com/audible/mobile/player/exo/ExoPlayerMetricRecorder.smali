.class public Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;
.super Ljava/lang/Object;
.source "ExoPlayerMetricRecorder.java"


# instance fields
.field private asin:Lcom/audible/mobile/domain/Asin;

.field private bufferingTime:Lcom/audible/mobile/metric/domain/TimerMetric;

.field private final context:Landroid/content/Context;

.field private final metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

.field private preparePlayerTime:Lcom/audible/mobile/metric/domain/TimerMetric;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    return-void
.end method

.method private getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;)Lcom/audible/mobile/metric/domain/TimerMetric;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->ExoPlayer:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->Player:Lcom/audible/mobile/metric/logger/AAPSource;

    invoke-direct {v0, v1, v2, p1}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    iget-object v1, p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->asin:Lcom/audible/mobile/domain/Asin;

    .line 106
    invoke-virtual {v0, p1, v1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->NETWORK_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v0, p1, p2}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object p1

    .line 107
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->start()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private resetAllTimerMetrics()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->preparePlayerTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    .line 124
    iput-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->bufferingTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method private stopAndRecordMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 116
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 117
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/DurationMetric;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public endBufferingTimer()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->bufferingTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->stopAndRecordMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-void
.end method

.method public endPreparePlayerTimer()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->preparePlayerTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0, v0}, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->stopAndRecordMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-void
.end method

.method public recordFailureToAcquireAudioFocus()V
    .locals 4

    .line 60
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->ExoPlayer:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->Player:Lcom/audible/mobile/metric/logger/AAPSource;

    sget-object v3, Lcom/audible/mobile/player/metric/Names;->AudioSessionAcquisitionError:Lcom/audible/mobile/player/metric/Names;

    invoke-direct {v0, v1, v2, v3}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 62
    iget-object v1, p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    return-void
.end method

.method public setAsin(Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->resetAllTimerMetrics()V

    .line 52
    iput-object p1, p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->asin:Lcom/audible/mobile/domain/Asin;

    return-void
.end method

.method public startBufferingTimer()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/mobile/metric/domain/MetricUtils;->getConnectedNetworkType(Landroid/content/Context;)Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->ExoBufferingTime:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    invoke-direct {p0, v1, v0}, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->bufferingTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method

.method public startPreparePlayerTimer()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/mobile/metric/domain/MetricUtils;->getConnectedNetworkType(Landroid/content/Context;)Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;->ExoPrepareTime:Lcom/audible/mobile/player/exo/ExoPlayerMetricNames;

    invoke-direct {p0, v1, v0}, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;)Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/player/exo/ExoPlayerMetricRecorder;->preparePlayerTime:Lcom/audible/mobile/metric/domain/TimerMetric;

    return-void
.end method
