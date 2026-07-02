.class public abstract Lcom/amazon/client/metrics/thirdparty/BaseMetricsFactoryImpl;
.super Ljava/lang/Object;
.source "BaseMetricsFactoryImpl.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/MetricsFactory;


# static fields
.field private static final DEFAULT_ALLOW_RUNNING_TIMERS:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;
    .locals 2

    .line 86
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/MetricEventType;->getDefault()Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsFactoryImpl;->createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;

    move-result-object p1

    return-object p1
.end method

.method public createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsFactoryImpl;->shouldRecordMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/internal/BasicClickStreamMetricEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/thirdparty/internal/BasicClickStreamMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)V

    return-object v0

    .line 103
    :cond_0
    new-instance p4, Lcom/amazon/client/metrics/thirdparty/NullClickStreamMetricEvent;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/NullClickStreamMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;)V

    return-object p4
.end method

.method public createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;
    .locals 2

    .line 52
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/MetricEventType;->getDefault()Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsFactoryImpl;->createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    return-object p1
.end method

.method public createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsFactoryImpl;->createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    return-object p1
.end method

.method public createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)Lcom/amazon/client/metrics/thirdparty/MetricEvent;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsFactoryImpl;->shouldRecordMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/thirdparty/ConcurrentMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)V

    return-object v0

    .line 69
    :cond_0
    new-instance p4, Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;)V

    return-object p4
.end method

.method public createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;
    .locals 2

    .line 30
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/MetricEventType;->getDefault()Lcom/amazon/client/metrics/thirdparty/MetricEventType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsFactoryImpl;->createMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    move-result-object p1

    return-object p1
.end method

.method public createMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)Lcom/amazon/client/metrics/thirdparty/MetricEvent;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsFactoryImpl;->shouldRecordMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/thirdparty/internal/BasicMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)V

    return-object v0

    .line 46
    :cond_0
    new-instance p4, Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;)V

    return-object p4
.end method

.method public record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;)V
    .locals 1

    .line 75
    sget-object v0, Lcom/amazon/client/metrics/thirdparty/Priority;->NORMAL:Lcom/amazon/client/metrics/thirdparty/Priority;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/client/metrics/thirdparty/BaseMetricsFactoryImpl;->record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;Lcom/amazon/client/metrics/thirdparty/Priority;)V

    return-void
.end method

.method public abstract record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;Lcom/amazon/client/metrics/thirdparty/Priority;)V
.end method

.method protected abstract shouldRecordMetrics()Z
.end method
