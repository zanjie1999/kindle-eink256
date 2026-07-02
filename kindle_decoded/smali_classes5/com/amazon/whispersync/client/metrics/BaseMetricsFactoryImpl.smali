.class public abstract Lcom/amazon/whispersync/client/metrics/BaseMetricsFactoryImpl;
.super Ljava/lang/Object;
.source "BaseMetricsFactoryImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/MetricsFactory;


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
.method public createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/ClickStreamMetricsEvent;
    .locals 2

    .line 81
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/MetricEventType;->getDefault()Lcom/amazon/whispersync/client/metrics/MetricEventType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazon/whispersync/client/metrics/BaseMetricsFactoryImpl;->createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/ClickStreamMetricsEvent;

    move-result-object p1

    return-object p1
.end method

.method public createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)Lcom/amazon/whispersync/client/metrics/ClickStreamMetricsEvent;
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/client/metrics/BaseMetricsFactoryImpl;->createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/ClickStreamMetricsEvent;

    move-result-object p1

    return-object p1
.end method

.method public createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/ClickStreamMetricsEvent;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/BaseMetricsFactoryImpl;->shouldRecordMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/client/metrics/BasicClickStreamMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)V

    return-object v0

    .line 98
    :cond_0
    new-instance p4, Lcom/amazon/whispersync/client/metrics/NullClickStreamMetricEvent;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/NullClickStreamMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    return-object p4
.end method

.method public createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 2

    .line 52
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/MetricEventType;->getDefault()Lcom/amazon/whispersync/client/metrics/MetricEventType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazon/whispersync/client/metrics/BaseMetricsFactoryImpl;->createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    return-object p1
.end method

.method public createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/client/metrics/BaseMetricsFactoryImpl;->createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    return-object p1
.end method

.method public createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/BaseMetricsFactoryImpl;->shouldRecordMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)V

    return-object v0

    .line 69
    :cond_0
    new-instance p4, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    return-object p4
.end method

.method public createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 2

    .line 30
    invoke-static {}, Lcom/amazon/whispersync/client/metrics/MetricEventType;->getDefault()Lcom/amazon/whispersync/client/metrics/MetricEventType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazon/whispersync/client/metrics/BaseMetricsFactoryImpl;->createMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    return-object p1
.end method

.method public createMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/client/metrics/BaseMetricsFactoryImpl;->createMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object p1

    return-object p1
.end method

.method public createMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/BaseMetricsFactoryImpl;->shouldRecordMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/whispersync/client/metrics/BasicMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)V

    return-object v0

    .line 46
    :cond_0
    new-instance p4, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    return-object p4
.end method

.method public record(Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
    .locals 1

    .line 75
    sget-object v0, Lcom/amazon/whispersync/client/metrics/Priority;->NORMAL:Lcom/amazon/whispersync/client/metrics/Priority;

    invoke-interface {p0, p1, v0}, Lcom/amazon/whispersync/client/metrics/MetricsFactory;->record(Lcom/amazon/whispersync/client/metrics/MetricEvent;Lcom/amazon/whispersync/client/metrics/Priority;)V

    return-void
.end method

.method protected abstract shouldRecordMetrics()Z
.end method
