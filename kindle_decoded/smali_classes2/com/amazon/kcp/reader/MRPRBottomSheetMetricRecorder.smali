.class public final Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;
.super Ljava/lang/Object;
.source "MRPRBottomSheetMetricRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder$Companion;
    }
.end annotation


# static fields
.field private static final DOUBLE_MRPR_BOTTOMSHEET_LATENCY:Ljava/lang/String;

.field private static final FIRST_MRPR_BOTTOMSHEET_TIMER:Ljava/lang/String;

.field private static final MRPR_BOTTOMSHEET_LATENCY:Ljava/lang/String;

.field private static final SECOND_MRPR_BOTTOMSHEET_TIMER:Ljava/lang/String;

.field private static final TEXT_CHANGE_MRPR_BOTTOMSHEET_LATENCY:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private mrprShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "FirstMRPRBottomsheetTimer"

    .line 15
    sput-object v0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->FIRST_MRPR_BOTTOMSHEET_TIMER:Ljava/lang/String;

    const-string v0, "SecondMRPRBottomsheetTimer"

    .line 16
    sput-object v0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->SECOND_MRPR_BOTTOMSHEET_TIMER:Ljava/lang/String;

    const-string v0, "MRPRBottomSheetLatency"

    .line 18
    sput-object v0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->MRPR_BOTTOMSHEET_LATENCY:Ljava/lang/String;

    const-string v0, "DoubleMRPRBottomSheetLatency"

    .line 19
    sput-object v0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->DOUBLE_MRPR_BOTTOMSHEET_LATENCY:Ljava/lang/String;

    const-string v0, "TextChangeMRPRBottomSheetLatency"

    .line 20
    sput-object v0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->TEXT_CHANGE_MRPR_BOTTOMSHEET_LATENCY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;-><init>(Lcom/amazon/kindle/krx/metrics/IMetricsManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V
    .locals 1

    const-string v0, "metricsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 12
    const-class p1, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Utils.getTag(MRPRBottomS\u2026tricRecorder::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->TAG:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/krx/metrics/IMetricsManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 10
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "MetricsManager.getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;-><init>(Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V

    return-void
.end method


# virtual methods
.method public final onReaderActivityEvent(Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->resetState()V

    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    sget-object v0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->FIRST_MRPR_BOTTOMSHEET_TIMER:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final recordBottomSheetShownMetric()V
    .locals 4

    .line 50
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->mrprShown:Z

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 52
    iget-object v1, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->TAG:Ljava/lang/String;

    .line 53
    sget-object v2, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->MRPR_BOTTOMSHEET_LATENCY:Ljava/lang/String;

    .line 54
    sget-object v3, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->FIRST_MRPR_BOTTOMSHEET_TIMER:Ljava/lang/String;

    .line 51
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->mrprShown:Z

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 59
    iget-object v1, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->TAG:Ljava/lang/String;

    .line 60
    sget-object v2, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->DOUBLE_MRPR_BOTTOMSHEET_LATENCY:Ljava/lang/String;

    .line 61
    sget-object v3, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->SECOND_MRPR_BOTTOMSHEET_TIMER:Ljava/lang/String;

    .line 58
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    sget-object v1, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->SECOND_MRPR_BOTTOMSHEET_TIMER:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    return-void
.end method

.method public final recordTextChangeMetric()V
    .locals 4

    .line 68
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->mrprShown:Z

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 73
    iget-object v1, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->TAG:Ljava/lang/String;

    .line 74
    sget-object v2, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->TEXT_CHANGE_MRPR_BOTTOMSHEET_LATENCY:Ljava/lang/String;

    .line 75
    sget-object v3, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->SECOND_MRPR_BOTTOMSHEET_TIMER:Ljava/lang/String;

    .line 72
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final resetState()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    sget-object v1, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->FIRST_MRPR_BOTTOMSHEET_TIMER:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    sget-object v1, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->SECOND_MRPR_BOTTOMSHEET_TIMER:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/MRPRBottomSheetMetricRecorder;->mrprShown:Z

    return-void
.end method
