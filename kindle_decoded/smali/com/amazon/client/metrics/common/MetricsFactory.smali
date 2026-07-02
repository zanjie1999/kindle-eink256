.class public interface abstract Lcom/amazon/client/metrics/common/MetricsFactory;
.super Ljava/lang/Object;
.source "MetricsFactory.java"


# virtual methods
.method public abstract createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/common/ClickStreamMetricsEvent;
.end method

.method public abstract createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/common/MetricEvent;
.end method

.method public abstract record(Lcom/amazon/client/metrics/common/MetricEvent;)V
.end method

.method public abstract record(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/client/metrics/common/Priority;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract record(Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)V
.end method
