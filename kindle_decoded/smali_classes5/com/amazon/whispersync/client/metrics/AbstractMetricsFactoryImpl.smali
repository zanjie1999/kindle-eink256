.class public abstract Lcom/amazon/whispersync/client/metrics/AbstractMetricsFactoryImpl;
.super Lcom/amazon/whispersync/client/metrics/BaseMetricsFactoryImpl;
.source "AbstractMetricsFactoryImpl.java"


# static fields
.field private static final DEFAULT_ALLOW_RUNNING_TIMERS:Z = false

.field private static final TAG:Ljava/lang/String; = "AbstractMetricsFactoryImpl"

.field protected static sMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

.field protected static sMetricsService:Lcom/amazon/whispersync/client/metrics/IMetricsService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/whispersync/client/metrics/BaseMetricsFactoryImpl;-><init>()V

    return-void
.end method

.method public static getSystemServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.amazon.whispersync.client.metrics.api"

    return-object v0
.end method

.method public static setInstance(Lcom/amazon/whispersync/client/metrics/MetricsFactory;)V
    .locals 0

    .line 72
    sput-object p0, Lcom/amazon/whispersync/client/metrics/AbstractMetricsFactoryImpl;->sMetricsFactory:Lcom/amazon/whispersync/client/metrics/MetricsFactory;

    return-void
.end method

.method public static declared-synchronized setService(Lcom/amazon/whispersync/client/metrics/IMetricsService;)V
    .locals 1

    const-class v0, Lcom/amazon/whispersync/client/metrics/AbstractMetricsFactoryImpl;

    monitor-enter v0

    .line 76
    :try_start_0
    sput-object p0, Lcom/amazon/whispersync/client/metrics/AbstractMetricsFactoryImpl;->sMetricsService:Lcom/amazon/whispersync/client/metrics/IMetricsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected abstract getService()Lcom/amazon/whispersync/client/metrics/IMetricsService;
.end method

.method public record(Lcom/amazon/whispersync/client/metrics/MetricEvent;Lcom/amazon/whispersync/client/metrics/Priority;)V
    .locals 10

    const-string v0, "AbstractMetricsFactoryImpl"

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->hasDataPoints()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 107
    :cond_1
    instance-of v1, p1, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;

    if-eqz v1, :cond_2

    .line 108
    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;

    invoke-virtual {v1}, Lcom/amazon/whispersync/client/metrics/ConcurrentMetricEvent;->getAsDataPointsAndClear()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 110
    :cond_2
    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->getAsDataPoints()Ljava/util/List;

    move-result-object v1

    .line 111
    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->clear()V

    :goto_0
    if-eqz v1, :cond_4

    .line 114
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 122
    :cond_3
    :try_start_0
    invoke-static {v1}, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;->convertToEnvelopes(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 125
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/AbstractMetricsFactoryImpl;->getService()Lcom/amazon/whispersync/client/metrics/IMetricsService;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->getProgram()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->getSource()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-interface/range {v3 .. v9}, Lcom/amazon/whispersync/client/metrics/IMetricsService;->record(ILjava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string/jumbo p2, "record : RemoteException caught while trying to record metric: "

    .line 133
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p1

    const-string/jumbo p2, "record : SecurityException caught while trying to record metric: "

    .line 129
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void
.end method
