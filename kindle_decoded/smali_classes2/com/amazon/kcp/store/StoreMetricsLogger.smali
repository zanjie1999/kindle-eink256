.class final Lcom/amazon/kcp/store/StoreMetricsLogger;
.super Ljava/lang/Object;
.source "StoreMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private pageCategory:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

.field private startTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kcp/store/StoreMetricsLogger;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/store/StoreMetricsLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreMetricsLogger;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-void
.end method


# virtual methods
.method onLoadFinished()V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreMetricsLogger;->pageCategory:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kcp/store/StoreMetricsLogger;->startTimeMillis:J

    sub-long/2addr v0, v2

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadTime-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/store/StoreMetricsLogger;->pageCategory:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    iget-object v3, v3, Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    iget-object v3, p0, Lcom/amazon/kcp/store/StoreMetricsLogger;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    const-class v4, Lcom/amazon/kcp/store/StoreMetricsLogger;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    .line 67
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    sget-object v1, Lcom/amazon/kcp/application/PerfMarker;->FTUE_STORE_LOAD_END:Lcom/amazon/kcp/application/PerfMarker;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->reportTimeSinceRegistration(Lcom/amazon/kcp/application/PerfMarker;)V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/amazon/kcp/store/StoreMetricsLogger;->pageCategory:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    return-void
.end method

.method onLoadStarted(Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;)V
    .locals 2

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/store/StoreMetricsLogger;->startTimeMillis:J

    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreMetricsLogger;->pageCategory:Lcom/amazon/kcp/store/StoreMetricsLogger$PageCategory;

    return-void
.end method
