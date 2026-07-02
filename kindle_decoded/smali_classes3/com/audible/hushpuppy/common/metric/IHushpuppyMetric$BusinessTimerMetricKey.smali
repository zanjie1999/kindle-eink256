.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$TimerMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$TimerMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

.field public static final enum JitEvaluateResponseTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

.field public static final enum JitTimeSpentOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

.field public static final enum PlaybackSessionTime:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

.field public static final enum PlaybackTimeInFullPlayerMode:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

.field public static final enum PlaybackTimeInImmersionReadingMode:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

.field public static final enum PlaybackTimeInLockScreen:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

.field public static final enum PlaybackTimeOutsideReader:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

.field public static final enum TimeForTodoAfterPurchase:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

.field public static final enum TimeForTodoAfterWebviewPurchase:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 103
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    const/4 v1, 0x0

    const-string v2, "PlaybackTimeInImmersionReadingMode"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackTimeInImmersionReadingMode:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    .line 106
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    const/4 v2, 0x1

    const-string v3, "PlaybackTimeInFullPlayerMode"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackTimeInFullPlayerMode:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    .line 109
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    const/4 v3, 0x2

    const-string v4, "PlaybackTimeOutsideReader"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackTimeOutsideReader:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    .line 112
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    const/4 v4, 0x3

    const-string v5, "PlaybackTimeInLockScreen"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackTimeInLockScreen:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    .line 115
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    const/4 v5, 0x4

    const-string v6, "PlaybackSessionTime"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackSessionTime:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    .line 118
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    const/4 v6, 0x5

    const-string v7, "TimeForTodoAfterPurchase"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->TimeForTodoAfterPurchase:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    .line 121
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    const/4 v7, 0x6

    const-string v8, "TimeForTodoAfterWebviewPurchase"

    invoke-direct {v0, v8, v7}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->TimeForTodoAfterWebviewPurchase:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    .line 124
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    const/4 v8, 0x7

    const-string v9, "JitTimeSpentOnPage_"

    invoke-direct {v0, v9, v8}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->JitTimeSpentOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    .line 127
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    const/16 v9, 0x8

    const-string v10, "JitEvaluateResponseTimer"

    invoke-direct {v0, v10, v9}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->JitEvaluateResponseTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    .line 100
    sget-object v11, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackTimeInImmersionReadingMode:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    aput-object v11, v10, v1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackTimeInFullPlayerMode:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    aput-object v1, v10, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackTimeOutsideReader:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    aput-object v1, v10, v3

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackTimeInLockScreen:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    aput-object v1, v10, v4

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackSessionTime:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    aput-object v1, v10, v5

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->TimeForTodoAfterPurchase:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    aput-object v1, v10, v6

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->TimeForTodoAfterWebviewPurchase:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    aput-object v1, v10, v7

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->JitTimeSpentOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;
    .locals 1

    .line 100
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;
    .locals 1

    .line 100
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    return-object v0
.end method
