.class public final Lcom/amazon/kcp/reader/DialogMetricsRecorder;
.super Ljava/lang/Object;
.source "DialogMetricsRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/DialogMetricsRecorder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/reader/DialogMetricsRecorder$Companion;


# instance fields
.field private currentDialogType:Lcom/amazon/kcp/reader/MrprDialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/reader/DialogMetricsRecorder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/DialogMetricsRecorder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->Companion:Lcom/amazon/kcp/reader/DialogMetricsRecorder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/amazon/kcp/reader/MrprDialogType;->NON_VALID:Lcom/amazon/kcp/reader/MrprDialogType;

    iput-object v0, p0, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->currentDialogType:Lcom/amazon/kcp/reader/MrprDialogType;

    return-void
.end method

.method private final recordLprMetric(Lcom/amazon/kindle/krx/sync/LPRSyncType;Ljava/lang/String;)V
    .locals 3

    .line 94
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReaderActivity:Sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final resetMetricTimer(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->Companion:Lcom/amazon/kcp/reader/DialogMetricsRecorder$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/DialogMetricsRecorder$Companion;->resetMetricTimer(Ljava/lang/String;)V

    return-void
.end method

.method public static final resetMetricTimer(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->Companion:Lcom/amazon/kcp/reader/DialogMetricsRecorder$Companion;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/DialogMetricsRecorder$Companion;->resetMetricTimer(Ljava/util/List;)V

    return-void
.end method

.method public static final resetMrprCount()V
    .locals 1

    sget-object v0, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->Companion:Lcom/amazon/kcp/reader/DialogMetricsRecorder$Companion;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorder$Companion;->resetMrprCount()V

    return-void
.end method


# virtual methods
.method public final onShowMrprDialogEvent(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 4

    const-string v0, "readerActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMrprCount$p()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$setMrprCount$p(I)V

    .line 47
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMrprCount$p()I

    move-result v0

    const-string v2, "ReaderActivity"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 75
    :cond_0
    sget-object p1, Lcom/amazon/kcp/reader/MrprDialogType;->NON_VALID:Lcom/amazon/kcp/reader/MrprDialogType;

    iput-object p1, p0, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->currentDialogType:Lcom/amazon/kcp/reader/MrprDialogType;

    .line 76
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->getDIALOG_METRICS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MrprMoreThanTwice"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->isDialogBeingShown()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    sget-object p1, Lcom/amazon/kcp/reader/MrprDialogType;->MRPR_TEXT_CHANGED:Lcom/amazon/kcp/reader/MrprDialogType;

    goto :goto_0

    .line 66
    :cond_2
    sget-object p1, Lcom/amazon/kcp/reader/MrprDialogType;->MRPR_DOUBLE_DIALOG:Lcom/amazon/kcp/reader/MrprDialogType;

    .line 63
    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->currentDialogType:Lcom/amazon/kcp/reader/MrprDialogType;

    .line 69
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "MrprDoubleDialogDelay_v5"

    invoke-static {p1, v2, v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$reportAndStopTimerMetric(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;Ljava/lang/String;)J

    .line 70
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->getDIALOG_METRICS()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->currentDialogType:Lcom/amazon/kcp/reader/MrprDialogType;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/MrprDialogType;->getMetricName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "MrprDialogDelay_v4"

    invoke-static {p1, v2, v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$reportAndStopTimerMetric(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 50
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v3, "MrprDialogDelay_v5"

    invoke-static {p1, v2, v3}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$reportAndStopTimerMetric(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;Ljava/lang/String;)J

    .line 51
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v3, "MrprDialogDelayTimer"

    invoke-interface {p1, v2, v3, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;J)V

    .line 52
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "MrprDialogDelay_v3"

    invoke-static {p1, v2, v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$reportAndStopTimerMetric(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;Ljava/lang/String;)J

    .line 53
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "MrprDialogDelay_TODO"

    invoke-static {p1, v2, v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$reportAndStopTimerMetric(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;Ljava/lang/String;)J

    .line 55
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "MrprDialogDelay_onCreate"

    invoke-static {p1, v2, v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$reportAndStopTimerMetric(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;Ljava/lang/String;)J

    .line 56
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "MrprDialogDelay_onStart"

    invoke-static {p1, v2, v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$reportAndStopTimerMetric(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;Ljava/lang/String;)J

    .line 57
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "MrprDialogDelay_onResume"

    invoke-static {p1, v2, v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$reportAndStopTimerMetric(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;Ljava/lang/String;)J

    .line 58
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "MrprDialogDelay_onFocus"

    invoke-static {p1, v2, v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$reportAndStopTimerMetric(Lcom/amazon/kindle/krx/metrics/IMetricsManager;Ljava/lang/String;Ljava/lang/String;)J

    .line 60
    sget-object p1, Lcom/amazon/kcp/reader/MrprDialogType;->FIRST_MRPR:Lcom/amazon/kcp/reader/MrprDialogType;

    iput-object p1, p0, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->currentDialogType:Lcom/amazon/kcp/reader/MrprDialogType;

    :goto_1
    return-void
.end method

.method public final reportLprSyncAction(Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kcp/reader/DialogAction;)V
    .locals 3

    const-string v0, "syncType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/DialogAction;->getMetricName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->recordLprMetric(Lcom/amazon/kindle/krx/sync/LPRSyncType;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->currentDialogType:Lcom/amazon/kcp/reader/MrprDialogType;

    sget-object v0, Lcom/amazon/kcp/reader/MrprDialogType;->NON_VALID:Lcom/amazon/kcp/reader/MrprDialogType;

    if-eq p1, v0, :cond_0

    .line 85
    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->access$getMetricsManager$p()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kcp/reader/DialogMetricsRecorderKt;->getDIALOG_METRICS()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->currentDialogType:Lcom/amazon/kcp/reader/MrprDialogType;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/MrprDialogType;->getMetricName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/DialogAction;->getMetricName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final reportLprSyncDirection(Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kcp/reader/DialogDirection;)V
    .locals 1

    const-string v0, "syncType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/DialogDirection;->getMetricName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->recordLprMetric(Lcom/amazon/kindle/krx/sync/LPRSyncType;Ljava/lang/String;)V

    return-void
.end method
