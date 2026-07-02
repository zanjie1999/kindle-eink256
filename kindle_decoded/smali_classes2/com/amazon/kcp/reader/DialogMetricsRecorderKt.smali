.class public final Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;
.super Ljava/lang/Object;
.source "DialogMetricsRecorder.kt"


# static fields
.field private static final DIALOG_METRICS:Ljava/lang/String;

.field private static final instance:Lcom/amazon/kcp/reader/DialogMetricsRecorder;

.field private static metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private static mrprCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-class v0, Lcom/amazon/kcp/reader/DialogMetricsRecorder;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(DialogMetricsRecorder::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->DIALOG_METRICS:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/amazon/kcp/reader/DialogMetricsRecorder;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->instance:Lcom/amazon/kcp/reader/DialogMetricsRecorder;

    .line 40
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "MetricsManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-void
.end method

.method public static final synthetic access$getInstance$p()Lcom/amazon/kcp/reader/DialogMetricsRecorder;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->instance:Lcom/amazon/kcp/reader/DialogMetricsRecorder;

    return-object v0
.end method

.method public static final synthetic access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-object v0
.end method

.method public static final synthetic access$getMrprCount$p()I
    .locals 1

    .line 1
    sget v0, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->mrprCount:I

    return v0
.end method

.method public static final synthetic access$reportAndStopTimerMetric(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->reportAndStopTimerMetric(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$resetMetricTimer(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->resetMetricTimer(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setMrprCount$p(I)V
    .locals 0

    .line 1
    sput p0, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->mrprCount:I

    return-void
.end method

.method public static final getDIALOG_METRICS()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->DIALOG_METRICS:Ljava/lang/String;

    return-object v0
.end method

.method private static final reportAndStopTimerMetric(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 211
    invoke-interface {p0, p2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->getMetricElapsedTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 212
    invoke-interface {p0, p1, p2, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    .line 213
    invoke-interface {p0, p2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    return-wide v0
.end method

.method private static final resetMetricTimer(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;)V
    .locals 0

    .line 223
    invoke-interface {p0, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 224
    invoke-interface {p0, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    return-void
.end method
