.class public interface abstract Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;
.super Ljava/lang/Object;
.source "IBatchMetricCollector.java"


# virtual methods
.method public abstract collectEndTimerMetric(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract collectEndTimerMetric(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract collectStartTimerMetric(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract collectStartTimerMetric(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeAll()V
.end method

.method public abstract submitSpecificMetrics(Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/IMetricsAggregator;Ljava/lang/String;)V
.end method

.method public abstract submitSpecificMetrics(Ljava/lang/String;Ljava/lang/String;)V
.end method
