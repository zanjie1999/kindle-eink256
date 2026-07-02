.class public Lcom/amazon/client/metrics/common/internal/android/AndroidNullMetricEvent;
.super Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;
.source "AndroidNullMetricEvent.java"


# instance fields
.field private final mDelegateThirdPartyNullMetricEvent:Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;


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

.method public bridge synthetic getDelegateMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/internal/android/AndroidNullMetricEvent;->getDelegateMetricEvent()Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateMetricEvent()Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidNullMetricEvent;->mDelegateThirdPartyNullMetricEvent:Lcom/amazon/client/metrics/thirdparty/NullMetricEvent;

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
