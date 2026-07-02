.class public Lcom/amazon/whispersync/client/metrics/NullMetricsFactory;
.super Ljava/lang/Object;
.source "NullMetricsFactory.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/MetricsFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/ClickStreamMetricsEvent;
    .locals 1

    .line 70
    new-instance v0, Lcom/amazon/whispersync/client/metrics/NullClickStreamMetricEvent;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/client/metrics/NullClickStreamMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)Lcom/amazon/whispersync/client/metrics/ClickStreamMetricsEvent;
    .locals 1

    .line 76
    new-instance v0, Lcom/amazon/whispersync/client/metrics/NullClickStreamMetricEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/NullClickStreamMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    return-object v0
.end method

.method public createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/ClickStreamMetricsEvent;
    .locals 0

    .line 83
    new-instance p4, Lcom/amazon/whispersync/client/metrics/NullClickStreamMetricEvent;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/NullClickStreamMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    return-object p4
.end method

.method public createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 1

    .line 25
    new-instance v0, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 1

    .line 31
    new-instance v0, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    return-object v0
.end method

.method public createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 0

    .line 37
    new-instance p4, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    return-object p4
.end method

.method public createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 1

    .line 42
    new-instance v0, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 1

    .line 48
    new-instance v0, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    return-object v0
.end method

.method public createMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/MetricEvent;
    .locals 0

    .line 54
    new-instance p4, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/whispersync/client/metrics/NullMetricEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)V

    return-object p4
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public record(Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
    .locals 0

    return-void
.end method

.method public record(Lcom/amazon/whispersync/client/metrics/MetricEvent;Lcom/amazon/whispersync/client/metrics/Priority;)V
    .locals 0

    return-void
.end method
