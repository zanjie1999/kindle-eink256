.class public final Lcom/audible/hushpuppy/controller/JitTutorialListener;
.super Ljava/lang/Object;
.source "JitTutorialListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private volatile currentPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/JitTutorialListener;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    return-void
.end method

.method private reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V
    .locals 2

    if-nez p1, :cond_0

    .line 143
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "JIT: No Valid key to report click metric"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 146
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, p1, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method

.method private reportClickWithSuffix(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;I)V
    .locals 2

    if-nez p1, :cond_0

    .line 134
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "JIT: No Valid key to report click metric"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, p1, p2, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method

.method private startTimer(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$TimerMetricKey;I)V
    .locals 1

    if-nez p1, :cond_0

    .line 152
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "JIT: No Valid key to report start timer metric"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    return-void
.end method

.method private stopTimer(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$TimerMetricKey;I)V
    .locals 1

    if-nez p1, :cond_0

    .line 161
    sget-object p1, Lcom/audible/hushpuppy/controller/JitTutorialListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "JIT: No Valid key to report stop timer metric"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 164
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;Ljava/lang/String;)V

    return-void
.end method

.method private updateNextTimers()V
    .locals 2

    .line 126
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->JitTimeSpentOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    iget v1, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->stopTimer(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$TimerMetricKey;I)V

    .line 127
    iget v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    .line 128
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->JitTimeSpentOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    iget v1, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->startTimer(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$TimerMetricKey;I)V

    return-void
.end method

.method private updatePrevTimers()V
    .locals 2

    .line 119
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->JitTimeSpentOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    iget v1, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->stopTimer(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$TimerMetricKey;I)V

    .line 120
    iget v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    .line 121
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->JitTimeSpentOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    iget v1, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->startTimer(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$TimerMetricKey;I)V

    return-void
.end method


# virtual methods
.method public onBrochureNavigation(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$BrochureNavigation;I)V
    .locals 2

    .line 87
    sget-object v0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "JIT: onBrochureNavigation %s for page %s"

    invoke-interface {v0, v1, p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    sget-object p2, Lcom/audible/hushpuppy/controller/JitTutorialListener$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$ITutorialLifecycleListener$BrochureNavigation:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitPrevSwipeOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    iget p2, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->reportClickWithSuffix(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;I)V

    .line 110
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->updatePrevTimers()V

    goto :goto_0

    .line 105
    :cond_2
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitNextSwipeOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    iget p2, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->reportClickWithSuffix(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;I)V

    .line 106
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->updateNextTimers()V

    goto :goto_0

    .line 101
    :cond_3
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitPrevButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    iget p2, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->reportClickWithSuffix(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;I)V

    .line 102
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->updatePrevTimers()V

    goto :goto_0

    .line 97
    :cond_4
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitNextButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    iget p2, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->reportClickWithSuffix(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;I)V

    .line 98
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->updateNextTimers()V

    :goto_0
    return-void
.end method

.method public onDialogButtonClicked(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DialogButton;)V
    .locals 2

    .line 81
    sget-object v0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "JIT: onDialogButtonClicked %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onTutorialDismissed(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;)V
    .locals 2

    .line 48
    sget-object v0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "JIT: onTutorialDismissed %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/JitTutorialListener$1;->$SwitchMap$com$amazon$kindle$krx$tutorial$ITutorialLifecycleListener$DismissalType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitDismissedByTapOutsideOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    iget v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->reportClickWithSuffix(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;I)V

    goto :goto_0

    .line 61
    :cond_2
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitDismissedByXButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    iget v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->reportClickWithSuffix(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;I)V

    goto :goto_0

    .line 58
    :cond_3
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitDismissedByBackButtonOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    iget v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->reportClickWithSuffix(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;I)V

    goto :goto_0

    .line 55
    :cond_4
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;->JitDismissedByDoneButton:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$JitMetricKey;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 70
    :goto_0
    iget p1, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    .line 71
    sget-object p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->JitTimeSpentOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    iget v1, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    invoke-direct {p0, p1, v1}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->stopTimer(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$TimerMetricKey;I)V

    .line 72
    iput v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    :cond_5
    return-void
.end method

.method public onTutorialShown()V
    .locals 2

    .line 35
    sget-object v0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "JIT: onTutorialShown"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 36
    iget v0, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 39
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->JitTimeSpentOnPage_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/controller/JitTutorialListener;->startTimer(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$TimerMetricKey;I)V

    .line 40
    iput v1, p0, Lcom/audible/hushpuppy/controller/JitTutorialListener;->currentPage:I

    :cond_0
    return-void
.end method
