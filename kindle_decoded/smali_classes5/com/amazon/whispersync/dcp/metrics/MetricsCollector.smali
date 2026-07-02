.class public interface abstract Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;
.super Ljava/lang/Object;
.source "MetricsCollector.java"


# virtual methods
.method public abstract incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs abstract incrementMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;[Ljava/lang/String;)V
.end method

.method public abstract incrementStateMetricCounter(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract recordMetricTimerEvent(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;J)V
.end method

.method public abstract startDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)V
.end method

.method public abstract stopDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;)J
.end method

.method public varargs abstract stopDurableTimer(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;Ljava/lang/String;[Ljava/lang/String;)J
.end method
