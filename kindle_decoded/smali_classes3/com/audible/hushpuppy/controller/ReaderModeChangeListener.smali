.class public Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;
.super Ljava/lang/Object;
.source "ReaderModeChangeListener.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private isPausedBecauseOfExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->isPausedBecauseOfExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 66
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 67
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->eventBus:Lde/greenrobot/event/EventBus;

    .line 68
    invoke-virtual {p3, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final handleKRXExternalScreenEvent(Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 97
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;->isOpened()Z

    move-result p1

    .line 98
    sget-object v0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Recieved KRXExternalScreenEvent with openedstate = %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->pause()V

    .line 105
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->isPausedBecauseOfExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;->ExternalScreenOpenedAudioPlaybackPaused:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->isPausedBecauseOfExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->isPausedBecauseOfExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 114
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->play()V

    .line 115
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;->ExternalScreenClosedAudioPlaybackResumed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    :cond_1
    return-void
.end method

.method public final handleReaderModeChangedEvent(Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 80
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    .line 81
    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AMPLIFY:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->DOUBLETIME:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne p1, v0, :cond_1

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->stop()V

    :cond_1
    return-void
.end method

.method public final onEventAsync(Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;)V
    .locals 2

    .line 129
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received ReaderPageNavigationEvent.PreNavigation event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->isPausedBecauseOfExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Resetting the state to not to resume audio"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->isPausedBecauseOfExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;->ExternalScreenClosedAudioPlaybackResumeCancelled:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    :cond_0
    return-void
.end method

.method public final onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;)V
    .locals 3

    .line 146
    sget-object v0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;->getPlayerState()Lcom/audible/hushpuppy/common/player/PlayerState;

    move-result-object v1

    const-string v2, "Player State Changed: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    sget-object v0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener$1;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerState:[I

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;->getPlayerState()Lcom/audible/hushpuppy/common/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 150
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received playback started event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->isPausedBecauseOfExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 152
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Closing the component viewer and resetting the state to not to resume audio"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->closeComponentViewer()V

    .line 154
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;->isPausedBecauseOfExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 155
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;->ExternalScreenClosedByAudible:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ExternalScreenUpdateMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    :cond_1
    return-void
.end method
