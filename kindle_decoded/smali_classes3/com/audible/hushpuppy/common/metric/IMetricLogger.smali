.class public interface abstract Lcom/audible/hushpuppy/common/metric/IMetricLogger;
.super Ljava/lang/Object;
.source "IMetricLogger.java"


# virtual methods
.method public abstract reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V
.end method

.method public abstract reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V
.end method

.method public abstract startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
.end method

.method public abstract startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
.end method

.method public abstract startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
.end method

.method public abstract startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
.end method

.method public abstract stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
.end method

.method public abstract stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
.end method

.method public abstract stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
.end method

.method public abstract stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
.end method
