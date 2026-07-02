.class public interface abstract Lcom/amazon/whispersync/client/metrics/PeriodicMetricReporter;
.super Ljava/lang/Object;
.source "PeriodicMetricReporter.java"


# virtual methods
.method public abstract createTrackedMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
.end method

.method public abstract createTrackedMetricEvent(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricEventType;)Lcom/amazon/whispersync/client/metrics/MetricEvent;
.end method

.method public abstract getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;
.end method

.method public abstract shutdown()V
.end method

.method public abstract startRecordingPeriodically(JLjava/util/concurrent/TimeUnit;)V
.end method

.method public abstract stopTrackingMetricEvent(Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
.end method
