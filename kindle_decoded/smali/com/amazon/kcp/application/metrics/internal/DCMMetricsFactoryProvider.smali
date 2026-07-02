.class public abstract Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;
.super Ljava/lang/Object;
.source "DCMMetricsFactoryProvider.java"


# instance fields
.field private volatile metricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createMetricsFactory(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;
.end method

.method public ensureDCMFullyInitialized()V
    .locals 0

    return-void
.end method

.method public getMetricsFactory(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;->metricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    if-nez v0, :cond_1

    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;->metricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;->createMetricsFactory(Landroid/content/Context;)Lcom/amazon/client/metrics/common/MetricsFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;->metricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    .line 24
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 26
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/application/metrics/internal/DCMMetricsFactoryProvider;->metricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    return-object p1
.end method
