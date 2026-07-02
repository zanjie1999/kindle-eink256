.class final Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;
.super Ljava/lang/Object;
.source "DummyMetricLogger.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetricLogger;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logWarning()V
    .locals 2

    .line 97
    sget-object v0, Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Metric is not configured yet. Please add metric logger implementation before using."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;->logWarning()V

    return-void
.end method

.method public reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;->logWarning()V

    return-void
.end method

.method public startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;->logWarning()V

    return-void
.end method

.method public startSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;->logWarning()V

    return-void
.end method

.method public startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;->logWarning()V

    return-void
.end method

.method public startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;->logWarning()V

    return-void
.end method

.method public stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;->logWarning()V

    return-void
.end method

.method public stopSynchronousTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;->logWarning()V

    return-void
.end method

.method public stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;->logWarning()V

    return-void
.end method

.method public stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/metric/DummyMetricLogger;->logWarning()V

    return-void
.end method
