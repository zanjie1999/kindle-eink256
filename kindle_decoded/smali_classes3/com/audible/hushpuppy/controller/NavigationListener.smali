.class public final Lcom/audible/hushpuppy/controller/NavigationListener;
.super Ljava/lang/Object;
.source "NavigationListener.java"


# static fields
.field private static final AUDIO_UPDATE_IGNORE_DELAY_MS:J

.field private static final IGNORE_PLAYBACK_POSITION_CHANGED_EVENT:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final READER_ACTIVITY_BACKGROUNDED:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final stopIgnoringPlaybackPositionChangeEventsRunnable:Ljava/lang/Runnable;

.field private final threadToTurnOFFIgnorePlaybackChangeEventFlag:Landroid/os/HandlerThread;

.field private final turnOffIgnorePlaybackChangeEventFlagHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/NavigationListener;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/NavigationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/audible/hushpuppy/controller/NavigationListener;->AUDIO_UPDATE_IGNORE_DELAY_MS:J

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/audible/hushpuppy/controller/NavigationListener;->IGNORE_PLAYBACK_POSITION_CHANGED_EVENT:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/audible/hushpuppy/controller/NavigationListener;->READER_ACTIVITY_BACKGROUNDED:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "ThreadToTurnOFFIgnorePlaybackChangeEventFlag"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/audible/hushpuppy/controller/NavigationListener;->threadToTurnOFFIgnorePlaybackChangeEventFlag:Landroid/os/HandlerThread;

    .line 54
    new-instance p2, Lcom/audible/hushpuppy/controller/NavigationListener$1;

    invoke-direct {p2, p0}, Lcom/audible/hushpuppy/controller/NavigationListener$1;-><init>(Lcom/audible/hushpuppy/controller/NavigationListener;)V

    iput-object p2, p0, Lcom/audible/hushpuppy/controller/NavigationListener;->stopIgnoringPlaybackPositionChangeEventsRunnable:Ljava/lang/Runnable;

    .line 72
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/NavigationListener;->eventBus:Lde/greenrobot/event/EventBus;

    .line 73
    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 74
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/NavigationListener;->threadToTurnOFFIgnorePlaybackChangeEventFlag:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/audible/hushpuppy/controller/NavigationListener;->threadToTurnOFFIgnorePlaybackChangeEventFlag:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/NavigationListener;->turnOffIgnorePlaybackChangeEventFlagHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 30
    sget-object v0, Lcom/audible/hushpuppy/controller/NavigationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 30
    sget-object v0, Lcom/audible/hushpuppy/controller/NavigationListener;->IGNORE_PLAYBACK_POSITION_CHANGED_EVENT:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private stopIgnoringPlaybackPositionChangeEvent()V
    .locals 4

    .line 199
    sget-object v0, Lcom/audible/hushpuppy/controller/NavigationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Removing All callbacks from turnOffIgnorePlaybackChangeEventFlagHandler and post delay runnable to turn off the ignore flag"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/NavigationListener;->turnOffIgnorePlaybackChangeEventFlagHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/NavigationListener;->turnOffIgnorePlaybackChangeEventFlagHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/NavigationListener;->stopIgnoringPlaybackPositionChangeEventsRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/audible/hushpuppy/controller/NavigationListener;->AUDIO_UPDATE_IGNORE_DELAY_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public isIgnoreAudioPositionChange()Z
    .locals 1

    .line 194
    sget-object v0, Lcom/audible/hushpuppy/controller/NavigationListener;->IGNORE_PLAYBACK_POSITION_CHANGED_EVENT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isReaderActivityInBackground()Z
    .locals 1

    .line 220
    sget-object v0, Lcom/audible/hushpuppy/controller/NavigationListener;->READER_ACTIVITY_BACKGROUNDED:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/common/ReaderActivityLifecycleEvent$OnPause;)V
    .locals 1

    .line 97
    sget-object p1, Lcom/audible/hushpuppy/controller/NavigationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received ReaderActivityLifecycleEvent.OnPause event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 98
    sget-object p1, Lcom/audible/hushpuppy/controller/NavigationListener;->READER_ACTIVITY_BACKGROUNDED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/common/ReaderActivityLifecycleEvent$OnResume;)V
    .locals 1

    .line 86
    sget-object p1, Lcom/audible/hushpuppy/controller/NavigationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received ReaderActivityLifecycleEvent.OnResume event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 87
    sget-object p1, Lcom/audible/hushpuppy/controller/NavigationListener;->READER_ACTIVITY_BACKGROUNDED:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$NavigationFailed;)V
    .locals 1

    .line 168
    sget-object p1, Lcom/audible/hushpuppy/controller/NavigationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received ReaderPageNavigationEvent.NavigationFailed event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/NavigationListener;->stopIgnoringPlaybackPositionChangeEvent()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;)V
    .locals 1

    .line 138
    sget-object p1, Lcom/audible/hushpuppy/controller/NavigationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received ReaderPageNavigationEvent.PageChange event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/NavigationListener;->isReaderActivityInBackground()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    sget-object p1, Lcom/audible/hushpuppy/controller/NavigationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Reader Activity in background upon onPageChange()"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/NavigationListener;->stopIgnoringPlaybackPositionChangeEvent()V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageFlowChanged;)V
    .locals 1

    .line 181
    sget-object p1, Lcom/audible/hushpuppy/controller/NavigationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received ReaderPageNavigationEvent.PageFlowChanged event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/NavigationListener;->stopIgnoringPlaybackPositionChangeEvent()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PostNavigation;)V
    .locals 1

    .line 155
    sget-object p1, Lcom/audible/hushpuppy/controller/NavigationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received ReaderPageNavigationEvent.PostNavigation event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/NavigationListener;->stopIgnoringPlaybackPositionChangeEvent()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;)V
    .locals 1

    .line 110
    sget-object p1, Lcom/audible/hushpuppy/controller/NavigationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received ReaderPageNavigationEvent.PreNavigation event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/NavigationListener;->turnOffIgnorePlaybackChangeEventFlagHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 112
    sget-object p1, Lcom/audible/hushpuppy/controller/NavigationListener;->IGNORE_PLAYBACK_POSITION_CHANGED_EVENT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/readalong/AudioPositionSeekEvent$AudioSeeking;)V
    .locals 1

    .line 124
    sget-object p1, Lcom/audible/hushpuppy/controller/NavigationListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received AudioPositionSeekEvent.AudioSeeking event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 125
    sget-object p1, Lcom/audible/hushpuppy/controller/NavigationListener;->IGNORE_PLAYBACK_POSITION_CHANGED_EVENT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 126
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/NavigationListener;->stopIgnoringPlaybackPositionChangeEvent()V

    return-void
.end method
