.class public final Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;
.super Ljava/lang/Object;
.source "PlaybackMetricsLoggerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;,
        Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final PLAYBACK_MODE_TIMER_METRIC_KEY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;",
            "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$TimerMetricKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCREEN_ON_OFF_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final context:Landroid/content/Context;

.field private currentPlaybackMode:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final hushpuppyMetrics:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final isPlaybackTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isReaderActivityForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final screenOnOffReceiver:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->PLAYBACK_MODE_TIMER_METRIC_KEY_MAP:Ljava/util/Map;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->SCREEN_ON_OFF_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 77
    sget-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->PLAYBACK_MODE_TIMER_METRIC_KEY_MAP:Ljava/util/Map;

    sget-object v1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->FULL_PLAYER_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackTimeInFullPlayerMode:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->PLAYBACK_MODE_TIMER_METRIC_KEY_MAP:Ljava/util/Map;

    sget-object v1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->IMMERSION_READING_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackTimeInImmersionReadingMode:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->PLAYBACK_MODE_TIMER_METRIC_KEY_MAP:Ljava/util/Map;

    sget-object v1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->OUTSIDE_READER_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackTimeOutsideReader:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->PLAYBACK_MODE_TIMER_METRIC_KEY_MAP:Ljava/util/Map;

    sget-object v1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->LOCK_SCREEN_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackTimeInLockScreen:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/common/metric/IMetricLogger;)V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;-><init>(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->screenOnOffReceiver:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->isPlaybackTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->isReaderActivityForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 130
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->eventBus:Lde/greenrobot/event/EventBus;

    .line 131
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 132
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->context:Landroid/content/Context;

    .line 133
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->hushpuppyMetrics:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    .line 135
    sget-object p1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->SCREEN_ON_OFF_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    sget-object p1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->SCREEN_ON_OFF_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 48
    sget-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->setPlaybackModeAndStartTimerIfNeeded(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->isReaderActivityForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;)Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->currentPlaybackMode:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    return-object p0
.end method

.method private setPlaybackModeAndStartTimerIfNeeded(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;)V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->currentPlaybackMode:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    if-ne p1, v0, :cond_0

    return-void

    .line 346
    :cond_0
    sget-object v1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Current Player Mode - %s"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->isPlaybackTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->stopPlaybackTimerForCurrentMode()V

    .line 353
    :cond_1
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->currentPlaybackMode:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    .line 354
    sget-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Current Player Mode changed to- %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 357
    sget-object p1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->currentPlaybackMode:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    const-string v1, "Audio is playing, starting the timer for playback mode - %s"

    invoke-interface {p1, v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->startPlaybackTimerForCurrentMode()V

    :cond_2
    return-void
.end method

.method private startPlaybackSessionTimer()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->hushpuppyMetrics:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackSessionTime:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 384
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->isPlaybackTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private startPlaybackTimerForCurrentMode()V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->hushpuppyMetrics:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    sget-object v1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->PLAYBACK_MODE_TIMER_METRIC_KEY_MAP:Ljava/util/Map;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->currentPlaybackMode:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return-void
.end method

.method private stopPlaybackSessionTimer()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->hushpuppyMetrics:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;->PlaybackSessionTime:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessTimerMetricKey;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 393
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->isPlaybackTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private stopPlaybackTimerForCurrentMode()V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->hushpuppyMetrics:Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    sget-object v1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->PLAYBACK_MODE_TIMER_METRIC_KEY_MAP:Ljava/util/Map;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->currentPlaybackMode:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/metric/IMetricLogger;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return-void
.end method


# virtual methods
.method public handleReaderModeChange(Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 252
    sget-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v1

    const-string v2, "Mode changed to %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    sget-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$1;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 262
    sget-object p1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Invalid mode; Not handling this mode change"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 259
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->IMMERSION_READING_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->setPlaybackModeAndStartTimerIfNeeded(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;)V

    return-void

    .line 255
    :cond_1
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->OpenFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 256
    sget-object p1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->FULL_PLAYER_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->setPlaybackModeAndStartTimerIfNeeded(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;)V
    .locals 3

    .line 302
    sget-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle ReaderActivityForegroundStateChangeEvent for app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 303
    sget-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$1;->$SwitchMap$com$audible$hushpuppy$common$event$common$ReaderActivityForegroundStateChangeEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 327
    sget-object p1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Reader Activity in UNKNOWN state"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 312
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Reader Activity is foregrounded"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->isReaderActivityForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 314
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object p1

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 315
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    .line 317
    sget-object v1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$1;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_1

    .line 322
    sget-object p1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->IMMERSION_READING_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->setPlaybackModeAndStartTimerIfNeeded(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;)V

    goto :goto_0

    .line 319
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->FULL_PLAYER_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->setPlaybackModeAndStartTimerIfNeeded(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;)V

    :goto_0
    return-void

    .line 305
    :cond_2
    sget-object p1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Reader Activity is backgrounded"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->isReaderActivityForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 307
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->isOnLockScreen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 308
    sget-object p1, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;->OUTSIDE_READER_MODE:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->setPlaybackModeAndStartTimerIfNeeded(Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$PlaybackMode;)V

    :cond_3
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;)V
    .locals 3

    .line 275
    sget-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;->getPlayerState()Lcom/audible/hushpuppy/common/player/PlayerState;

    move-result-object v1

    const-string v2, "Player State Changed: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    sget-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$1;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerState:[I

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;->getPlayerState()Lcom/audible/hushpuppy/common/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 287
    :pswitch_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->stopPlaybackSessionTimer()V

    .line 288
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->stopPlaybackTimerForCurrentMode()V

    return-void

    .line 279
    :pswitch_1
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->startPlaybackSessionTimer()V

    .line 280
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->startPlaybackTimerForCurrentMode()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public register()V
    .locals 3

    .line 239
    sget-object v0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Registering"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->screenOnOffReceiver:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController$ScreenOnOffReceiver;

    sget-object v2, Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;->SCREEN_ON_OFF_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
