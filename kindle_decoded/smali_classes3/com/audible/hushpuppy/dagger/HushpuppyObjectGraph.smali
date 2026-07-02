.class public final Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;
.super Ljava/lang/Object;
.source "HushpuppyObjectGraph.java"


# static fields
.field private static component:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;


# direct methods
.method public static declared-synchronized create(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    const-class v0, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->component:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    if-nez v1, :cond_0

    .line 37
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->HushpuppyObjectGraphCreationTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 38
    invoke-static {}, Lcom/audible/hushpuppy/dagger/DaggerHushpuppyComponent;->builder()Lcom/audible/hushpuppy/dagger/HushpuppyComponent$Builder;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent$Builder;->kindleReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/dagger/HushpuppyComponent$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent$Builder;->build()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object p0

    sput-object p0, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->component:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    .line 39
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->HushpuppyObjectGraphCreationTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {p0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;
    .locals 1

    .line 51
    sget-object v0, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->component:Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    return-object v0
.end method
