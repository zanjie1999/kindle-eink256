.class public Lcom/audible/android/kcp/metrics/KrxMetricsManager;
.super Ljava/lang/Object;
.source "KrxMetricsManager.java"

# interfaces
.implements Lcom/audible/android/kcp/metrics/AiRMetricsManager;


# static fields
.field private static final INSTANCE:Lcom/audible/android/kcp/metrics/AiRMetricsManager;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private mMetricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private mReleaseBuild:Z

.field private final mStartTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/audible/android/kcp/metrics/AiRMetricKey;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/metrics/KrxMetricsManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 28
    new-instance v0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;

    invoke-direct {v0}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;-><init>()V

    sput-object v0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->INSTANCE:Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->mStartTimeMap:Ljava/util/Map;

    return-void
.end method

.method private checkMetricsManager()Z
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->mMetricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "MetricsManager must be set before logging metric"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;
    .locals 2

    const-class v0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->INSTANCE:Lcom/audible/android/kcp/metrics/AiRMetricsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 51
    iget-boolean v0, p0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->mReleaseBuild:Z

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "%s, %s : %d"

    invoke-interface {v0, p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 115
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->mMetricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 116
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$bool;->is_release_build:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->mReleaseBuild:Z

    return-void
.end method

.method public reportMetric(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V
    .locals 4

    .line 59
    invoke-direct {p0}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->checkMetricsManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;->getEventName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AiR"

    const-string v3, "Reporting metric [%s:%s]"

    invoke-interface {v0, v3, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->mMetricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-virtual {p1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V
    .locals 4

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 70
    invoke-virtual {p1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;->getEventStartName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 72
    invoke-virtual {p0, p1, v0, v1}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->startMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;J)V

    return-void
.end method

.method public startMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;J)V
    .locals 4

    .line 78
    sget-object v0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Starting metric timer [%s] with start time [%s]"

    invoke-interface {v0, v3, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->mStartTimeMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public stopMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V
    .locals 4

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 86
    invoke-virtual {p1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;->getEventEndName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->log(Ljava/lang/String;Ljava/lang/String;J)V

    .line 88
    invoke-virtual {p0, p1, v0, v1}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->stopMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;J)V

    return-void
.end method

.method public stopMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;J)V
    .locals 5

    .line 94
    invoke-direct {p0}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->checkMetricsManager()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->mStartTimeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    sget-object p1, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "No start time found! Method startTimerMetric must be called first."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->mStartTimeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    .line 103
    sget-object p1, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Timer log is equal or less than zero! Dropping this log."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_1
    sget-object v0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AiR"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;->getEventName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "Stopping and reporting metric timer [%s:%s] with time [%s]"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->mMetricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-virtual {p1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1, p2, p3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    return-void
.end method
