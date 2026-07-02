.class public interface abstract Lcom/amazon/whispersync/client/metrics/MetricsFactory;
.super Ljava/lang/Object;
.source "MetricsFactory.java"


# static fields
.field public static final SYSTEM_SERVICE_KEY:Ljava/lang/String; = "com.amazon.whispersync.client.metrics.api"


# virtual methods
.method public abstract createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/ClickStreamMetricsEvent;
.end method

.method public abstract createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)Lcom/amazon/whispersync/client/metrics/ClickStreamMetricsEvent;
.end method

.method public abstract createClickStreamMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/ClickStreamMetricsEvent;
.end method

.method public abstract createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
.end method

.method public abstract createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
.end method

.method public abstract createConcurrentMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/MetricEvent;
.end method

.method public abstract createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
.end method

.method public abstract createMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
.end method

.method public abstract createMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;Z)Lcom/amazon/whispersync/client/metrics/MetricEvent;
.end method

.method public abstract getSessionID()Ljava/lang/String;
.end method

.method public abstract record(Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
.end method

.method public abstract record(Lcom/amazon/whispersync/client/metrics/MetricEvent;Lcom/amazon/whispersync/client/metrics/Priority;)V
.end method
