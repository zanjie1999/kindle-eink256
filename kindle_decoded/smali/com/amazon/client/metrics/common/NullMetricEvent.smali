.class public Lcom/amazon/client/metrics/common/NullMetricEvent;
.super Ljava/lang/Object;
.source "NullMetricEvent.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/MetricEvent;


# instance fields
.field private final mDelegateMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;


# virtual methods
.method public addCounter(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method

.method public addDataPoint(Lcom/amazon/client/metrics/common/DataPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/common/MetricsException;
        }
    .end annotation

    return-void
.end method

.method public addString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addTimer(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method

.method public appendString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method getDelegateMetricEvent()Lcom/amazon/client/metrics/common/MetricEvent;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/amazon/client/metrics/common/NullMetricEvent;->mDelegateMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    return-object v0
.end method

.method public incrementCounter(Ljava/lang/String;D)V
    .locals 0

    return-void
.end method

.method public setAnonymous(Z)V
    .locals 0

    return-void
.end method

.method public setNonAnonymousCustomerId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startTimer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public stopTimer(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
