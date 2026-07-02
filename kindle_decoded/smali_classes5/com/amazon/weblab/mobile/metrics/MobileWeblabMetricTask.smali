.class public Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;
.super Ljava/lang/Object;
.source "MobileWeblabMetricTask.java"


# direct methods
.method public static incrementPeriodicMetric(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 0

    .line 23
    invoke-static {p1, p0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricsUtil;->getPeriodicMobileWeblabMetric(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/weblab/mobile/metrics/IMobileWeblabMetric;

    move-result-object p1

    .line 24
    invoke-interface {p1, p0, p2, p3}, Lcom/amazon/weblab/mobile/metrics/IMobileWeblabMetric;->increment(Ljava/lang/String;D)V

    return-void
.end method

.method public static logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 62
    invoke-static {p0, p1, p2, v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;->getInstance()Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$3;

    invoke-direct {v1, p2, p0, p1, p3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 28
    invoke-static {p0, p1, v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static logMetric(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-static {}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;->getInstance()Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$1;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;->getInstance()Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$4;

    invoke-direct {v1, p3, p0, p1, p2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask$4;-><init>(Ljava/lang/String;Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
