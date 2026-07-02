.class public interface abstract Lcom/amazon/whispersync/client/metrics/MetricEvent;
.super Ljava/lang/Object;
.source "MetricEvent.java"


# virtual methods
.method public abstract addCounter(Ljava/lang/String;D)V
.end method

.method public abstract addDataPoint(Lcom/amazon/whispersync/client/metrics/DataPoint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/MetricsException;
        }
    .end annotation
.end method

.method public abstract addDataPoints(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/client/metrics/MetricsException;
        }
    .end annotation
.end method

.method public abstract addString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addTimer(Ljava/lang/String;D)V
.end method

.method public abstract addTimer(Ljava/lang/String;DI)V
.end method

.method public abstract appendString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getAsDataPoints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetricEventType()Lcom/amazon/whispersync/client/metrics/MetricEventType;
.end method

.method public abstract getProgram()Ljava/lang/String;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract hasDataPoints()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract incrementCounter(Ljava/lang/String;D)V
.end method

.method public abstract removeCounter(Ljava/lang/String;)V
.end method

.method public abstract removeString(Ljava/lang/String;)V
.end method

.method public abstract removeTimer(Ljava/lang/String;)V
.end method

.method public abstract restoreFromMap(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract saveToMap(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startTimer(Ljava/lang/String;)V
.end method

.method public abstract stopTimer(Ljava/lang/String;)V
.end method
