.class public Lcom/amazon/kedu/ftue/metrics/MetricManager;
.super Ljava/lang/Object;
.source "MetricManager.java"


# static fields
.field private static final INSTANCE:Lcom/amazon/kedu/ftue/metrics/MetricManager;


# instance fields
.field private metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/amazon/kedu/ftue/metrics/MetricManager;

    invoke-direct {v0}, Lcom/amazon/kedu/ftue/metrics/MetricManager;-><init>()V

    sput-object v0, Lcom/amazon/kedu/ftue/metrics/MetricManager;->INSTANCE:Lcom/amazon/kedu/ftue/metrics/MetricManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildTimerKey(Lcom/amazon/kedu/ftue/metrics/Metric;)Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeduFTUE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/metrics/Metric;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;
    .locals 1

    .line 167
    sget-object v0, Lcom/amazon/kedu/ftue/metrics/MetricManager;->INSTANCE:Lcom/amazon/kedu/ftue/metrics/MetricManager;

    return-object v0
.end method


# virtual methods
.method getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kedu/ftue/metrics/MetricManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/ftue/metrics/MetricManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/ftue/metrics/MetricManager;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-object v0
.end method

.method getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 158
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V
    .locals 1

    monitor-enter p0

    .line 98
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/metrics/Metric;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {p0, v0}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounters(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    .line 111
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/metrics/Metric;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0, v0}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounters(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reportMetricCounters(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "KeduFTUE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    .line 126
    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reportMetricEvent(Lcom/amazon/kedu/ftue/metrics/Metric;)V
    .locals 2

    monitor-enter p0

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "KeduFTUE"

    .line 30
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/metrics/Metric;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reportTimerMetric(Lcom/amazon/kedu/ftue/metrics/Metric;J)V
    .locals 2

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "KeduFTUE"

    .line 87
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/metrics/Metric;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startMetricTimer(Lcom/amazon/kedu/ftue/metrics/Metric;)V
    .locals 1

    monitor-enter p0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->buildTimerKey(Lcom/amazon/kedu/ftue/metrics/Metric;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopMetricTimer(Lcom/amazon/kedu/ftue/metrics/Metric;)V
    .locals 3

    monitor-enter p0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "KeduFTUE"

    .line 72
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/metrics/Metric;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->buildTimerKey(Lcom/amazon/kedu/ftue/metrics/Metric;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
