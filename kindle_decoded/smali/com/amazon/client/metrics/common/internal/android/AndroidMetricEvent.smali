.class public Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;
.super Ljava/lang/Object;
.source "AndroidMetricEvent.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/MetricEvent;


# instance fields
.field private final mThirdPartyDelegateMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/MetricEvent;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;->mThirdPartyDelegateMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "DelegateMetricEvent may not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addCounter(Ljava/lang/String;D)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;->mThirdPartyDelegateMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->addCounter(Ljava/lang/String;D)V

    return-void
.end method

.method public addDataPoint(Lcom/amazon/client/metrics/common/DataPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/common/MetricsException;
        }
    .end annotation

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;->mThirdPartyDelegateMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-static {p1}, Lcom/amazon/client/metrics/common/DataPointConverter;->convertCommonToThirdParty(Lcom/amazon/client/metrics/common/DataPoint;)Lcom/amazon/client/metrics/thirdparty/DataPoint;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->addDataPoint(Lcom/amazon/client/metrics/thirdparty/DataPoint;)V
    :try_end_0
    .catch Lcom/amazon/client/metrics/thirdparty/MetricsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 132
    new-instance v0, Lcom/amazon/client/metrics/common/MetricsException;

    invoke-direct {v0, p1}, Lcom/amazon/client/metrics/common/MetricsException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public addString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;->mThirdPartyDelegateMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addTimer(Ljava/lang/String;D)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;->mThirdPartyDelegateMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->addTimer(Ljava/lang/String;D)V

    return-void
.end method

.method public appendString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;->mThirdPartyDelegateMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->appendString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDelegateMetricEvent()Lcom/amazon/client/metrics/thirdparty/MetricEvent;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;->mThirdPartyDelegateMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    return-object v0
.end method

.method public incrementCounter(Ljava/lang/String;D)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;->mThirdPartyDelegateMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    return-void
.end method

.method public setAnonymous(Z)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;->mThirdPartyDelegateMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0, p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->setAnonymous(Z)V

    return-void
.end method

.method public setNonAnonymousCustomerId(Ljava/lang/String;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;->mThirdPartyDelegateMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0, p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->setNonAnonymousCustomerId(Ljava/lang/String;)V

    return-void
.end method

.method public startTimer(Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;->mThirdPartyDelegateMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0, p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->startTimer(Ljava/lang/String;)V

    return-void
.end method

.method public stopTimer(Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;->mThirdPartyDelegateMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-interface {v0, p1}, Lcom/amazon/client/metrics/thirdparty/MetricEvent;->stopTimer(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidMetricEvent;->mThirdPartyDelegateMetricEvent:Lcom/amazon/client/metrics/thirdparty/MetricEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
