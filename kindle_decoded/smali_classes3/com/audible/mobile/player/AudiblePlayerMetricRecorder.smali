.class public Lcom/audible/mobile/player/AudiblePlayerMetricRecorder;
.super Ljava/lang/Object;
.source "AudiblePlayerMetricRecorder.java"


# instance fields
.field private final metricManager:Lcom/audible/mobile/metric/logger/MetricManager;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/audible/mobile/player/AudiblePlayerMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    return-void
.end method


# virtual methods
.method public recordFailureToAcquireAudioFocus()V
    .locals 4

    .line 33
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->Player:Lcom/audible/mobile/metric/logger/AAPCategory;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPSource;->Player:Lcom/audible/mobile/metric/logger/AAPSource;

    sget-object v3, Lcom/audible/mobile/player/metric/Names;->AudioSessionAcquisitionError:Lcom/audible/mobile/player/metric/Names;

    invoke-direct {v0, v1, v2, v3}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 34
    iget-object v1, p0, Lcom/audible/mobile/player/AudiblePlayerMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    return-void
.end method
