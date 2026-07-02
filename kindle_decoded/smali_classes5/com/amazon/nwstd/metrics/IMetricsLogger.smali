.class public interface abstract Lcom/amazon/nwstd/metrics/IMetricsLogger;
.super Ljava/lang/Object;
.source "IMetricsLogger.java"


# virtual methods
.method public abstract onCloseSession()V
.end method

.method public abstract onPauseSession()V
.end method

.method public abstract onResumeSession()V
.end method

.method public abstract onStartSession()V
.end method

.method public abstract reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;)V
.end method

.method public abstract reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/nwstd/metrics/MetricsTags;",
            "Ljava/util/Map<",
            "Lcom/amazon/nwstd/metrics/MetricsAttributes;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract tagScreen(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;)V
.end method
