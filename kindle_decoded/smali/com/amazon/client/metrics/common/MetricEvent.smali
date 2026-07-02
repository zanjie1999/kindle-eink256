.class public interface abstract Lcom/amazon/client/metrics/common/MetricEvent;
.super Ljava/lang/Object;
.source "MetricEvent.java"


# virtual methods
.method public abstract addCounter(Ljava/lang/String;D)V
.end method

.method public abstract addDataPoint(Lcom/amazon/client/metrics/common/DataPoint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/common/MetricsException;
        }
    .end annotation
.end method

.method public abstract addString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addTimer(Ljava/lang/String;D)V
.end method

.method public abstract appendString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract incrementCounter(Ljava/lang/String;D)V
.end method

.method public abstract setAnonymous(Z)V
.end method

.method public abstract setNonAnonymousCustomerId(Ljava/lang/String;)V
.end method

.method public abstract startTimer(Ljava/lang/String;)V
.end method

.method public abstract stopTimer(Ljava/lang/String;)V
.end method
