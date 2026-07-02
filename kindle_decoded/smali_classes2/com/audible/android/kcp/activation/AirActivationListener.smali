.class public Lcom/audible/android/kcp/activation/AirActivationListener;
.super Ljava/lang/Object;
.source "AirActivationListener.java"

# interfaces
.implements Lcom/audible/mobile/activation/ActivationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final activationCallback:Lcom/audible/android/kcp/activation/ActivationCallback;

.field private final countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/activation/AirActivationListener;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/activation/AirActivationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/android/kcp/activation/ActivationCallback;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/audible/android/kcp/activation/AirActivationListener;->activationCallback:Lcom/audible/android/kcp/activation/ActivationCallback;

    .line 38
    iput-object p2, p0, Lcom/audible/android/kcp/activation/AirActivationListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private handleActivationFailure(Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;)V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 83
    sget-object p1, Lcom/audible/android/kcp/activation/AirActivationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Activation failure response took longer. Count down latch expired."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 86
    :cond_0
    sget-object v0, Lcom/audible/android/kcp/activation/AirActivationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Activation failure %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 89
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationListener;->activationCallback:Lcom/audible/android/kcp/activation/ActivationCallback;

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lcom/audible/android/kcp/activation/AirActivationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Callback report failure"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationListener;->activationCallback:Lcom/audible/android/kcp/activation/ActivationCallback;

    sget-object v1, Lcom/audible/android/kcp/activation/ActivationStatus;->FAILURE:Lcom/audible/android/kcp/activation/ActivationStatus;

    invoke-interface {v0, v1}, Lcom/audible/android/kcp/activation/ActivationCallback;->onActivationStatus(Lcom/audible/android/kcp/activation/ActivationStatus;)V

    .line 94
    :cond_1
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->ACTIVATION_FAILURE:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->stopMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    .line 95
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;->ERROR_TYPE_NETWORK:Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

    if-ne p1, v1, :cond_2

    sget-object p1, Lcom/audible/android/kcp/metrics/AiRMetrics$ErrorMetrics;->ACTIVATION_NETWORK_ERROR:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/audible/android/kcp/metrics/AiRMetrics$ErrorMetrics;->ACTIVATION_ERROR:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    :goto_0
    invoke-interface {v0, p1}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->reportMetric(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    return-void
.end method


# virtual methods
.method public onActivationError(Lcom/audible/mobile/activation/ActivationError;)V
    .locals 0

    .line 73
    sget-object p1, Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;->ERROR_TYPE_ACTIVATION:Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

    invoke-direct {p0, p1}, Lcom/audible/android/kcp/activation/AirActivationListener;->handleActivationFailure(Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;)V

    return-void
.end method

.method public onNetworkError(Lcom/audible/mobile/downloader/NetworkError;)V
    .locals 0

    .line 67
    sget-object p1, Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;->ERROR_TYPE_NETWORK:Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;

    invoke-direct {p0, p1}, Lcom/audible/android/kcp/activation/AirActivationListener;->handleActivationFailure(Lcom/audible/android/kcp/activation/AirActivationListener$ActivationErrorMetricsType;)V

    return-void
.end method

.method public onResponse()V
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 49
    sget-object v0, Lcom/audible/android/kcp/activation/AirActivationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Activation success response took longer. Count down latch expired."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    sget-object v0, Lcom/audible/android/kcp/activation/AirActivationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Activation success"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationListener;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 55
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationListener;->activationCallback:Lcom/audible/android/kcp/activation/ActivationCallback;

    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lcom/audible/android/kcp/activation/AirActivationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Callback report success"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/audible/android/kcp/activation/AirActivationListener;->activationCallback:Lcom/audible/android/kcp/activation/ActivationCallback;

    sget-object v1, Lcom/audible/android/kcp/activation/ActivationStatus;->SUCCESS:Lcom/audible/android/kcp/activation/ActivationStatus;

    invoke-interface {v0, v1}, Lcom/audible/android/kcp/activation/ActivationCallback;->onActivationStatus(Lcom/audible/android/kcp/activation/ActivationStatus;)V

    .line 60
    :cond_1
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->ACTIVATION_SUCCESS:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->stopMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    .line 61
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->ACTIVATION_SUCCESS:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->reportMetric(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    return-void
.end method
