.class public interface abstract Lcom/amazon/client/metrics/thirdparty/MetricsFactory;
.super Ljava/lang/Object;
.source "MetricsFactory.java"


# virtual methods
.method public abstract createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/ClickStreamMetricsEvent;
.end method

.method public abstract createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;
.end method

.method public abstract createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;
.end method

.method public abstract createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/client/metrics/thirdparty/MetricEventType;Z)Lcom/amazon/client/metrics/thirdparty/MetricEvent;
.end method

.method public abstract createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/MetricEvent;
.end method

.method public abstract record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;)V
.end method

.method public abstract record(Lcom/amazon/client/metrics/thirdparty/MetricEvent;Lcom/amazon/client/metrics/thirdparty/Priority;Lcom/amazon/client/metrics/thirdparty/Channel;)V
.end method
