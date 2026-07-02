.class public interface abstract Lcom/amazon/client/metrics/thirdparty/MetricEvent;
.super Ljava/lang/Object;
.source "MetricEvent.java"


# virtual methods
.method public abstract addCounter(Ljava/lang/String;D)V
.end method

.method public abstract addDataPoint(Lcom/amazon/client/metrics/thirdparty/DataPoint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/thirdparty/MetricsException;
        }
    .end annotation
.end method

.method public abstract addString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addTimer(Ljava/lang/String;D)V
.end method

.method public abstract appendString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract clear()V
.end method

.method public abstract getAnonymous()Z
.end method

.method public abstract getAsDataPoints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNonAnonymousCustomerId()Ljava/lang/String;
.end method

.method public abstract getNonAnonymousSessionId()Ljava/lang/String;
.end method

.method public abstract getProgram()Ljava/lang/String;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract incrementCounter(Ljava/lang/String;D)V
.end method

.method public abstract setAnonymous(Z)V
.end method

.method public abstract setNonAnonymousCustomerId(Ljava/lang/String;)V
.end method

.method public abstract setNonAnonymousSessionId(Ljava/lang/String;)V
.end method

.method public abstract startTimer(Ljava/lang/String;)V
.end method

.method public abstract stopTimer(Ljava/lang/String;)V
.end method
