.class public Lcom/audible/hushpuppy/controller/audible/library/manager/util/sync/HushpuppySyncIntegration;
.super Ljava/lang/Object;
.source "HushpuppySyncIntegration.java"

# interfaces
.implements Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/sync/SyncIntegration$ILogger;
    .locals 2

    .line 56
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/sync/HushpuppySyncIntegration$1HushpuppySyncIntegrationLogger;

    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/sync/HushpuppySyncIntegration$1HushpuppySyncIntegrationLogger;-><init>(Lcom/audible/hushpuppy/controller/audible/library/manager/util/sync/HushpuppySyncIntegration;Lcom/audible/hushpuppy/common/logging/ILogger;)V

    return-object v0
.end method

.method public reportFailureMetric()V
    .locals 3

    .line 60
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->SyncData:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->ERROR:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method
