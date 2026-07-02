.class public final Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;
.super Ljava/lang/Object;
.source "AutoDisappearTimeOutController.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/IStateChangeViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController$AutoDisappearTimeOutReached;
    }
.end annotation


# static fields
.field private static final AUTO_DISAPPEAR_TIMEOUT:Lcom/audible/mobile/domain/Time;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private asin:Lcom/audible/mobile/domain/Asin;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final hushpuppyModelCallBack:Lcom/audible/hushpuppy/model/ITimeOutCallback;

.field private stateChangeViewSource:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

.field private threadForAutoDisappearTimeOut:Landroid/os/HandlerThread;

.field private timeOutHandler:Landroid/os/Handler;

.field private final upsellModelManagerCallBack:Lcom/audible/hushpuppy/model/ITimeOutCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 46
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-direct {v0, v2, v3, v1}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->AUTO_DISAPPEAR_TIMEOUT:Lcom/audible/mobile/domain/Time;

    return-void
.end method

.method constructor <init>(Lcom/audible/hushpuppy/model/ITimeOutCallback;Lcom/audible/hushpuppy/model/ITimeOutCallback;Lde/greenrobot/event/EventBus;Landroid/os/HandlerThread;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->NONE:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->stateChangeViewSource:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    .line 99
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->threadForAutoDisappearTimeOut:Landroid/os/HandlerThread;

    .line 100
    invoke-virtual {p4}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance p4, Landroid/os/Handler;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->threadForAutoDisappearTimeOut:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->timeOutHandler:Landroid/os/Handler;

    .line 102
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->upsellModelManagerCallBack:Lcom/audible/hushpuppy/model/ITimeOutCallback;

    .line 103
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->hushpuppyModelCallBack:Lcom/audible/hushpuppy/model/ITimeOutCallback;

    .line 104
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->eventBus:Lde/greenrobot/event/EventBus;

    .line 106
    invoke-virtual {p3, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;)V
    .locals 2

    .line 92
    check-cast p2, Lcom/audible/hushpuppy/model/ITimeOutCallback;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "threadForAutoDisappearTimeOut"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;-><init>(Lcom/audible/hushpuppy/model/ITimeOutCallback;Lcom/audible/hushpuppy/model/ITimeOutCallback;Lde/greenrobot/event/EventBus;Landroid/os/HandlerThread;)V

    return-void
.end method

.method static synthetic access$100()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 36
    sget-object v0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;)Lcom/audible/hushpuppy/model/ITimeOutCallback;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->upsellModelManagerCallBack:Lcom/audible/hushpuppy/model/ITimeOutCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;)Lcom/audible/hushpuppy/model/ITimeOutCallback;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->hushpuppyModelCallBack:Lcom/audible/hushpuppy/model/ITimeOutCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;[Lcom/audible/hushpuppy/model/ITimeOutCallback;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->notifyAndResetCurrentAsinState([Lcom/audible/hushpuppy/model/ITimeOutCallback;)V

    return-void
.end method

.method private cancelAutoDisappearTimeoutTimer()V
    .locals 2

    .line 220
    sget-object v0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Canceling Auto disappear timeout"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->timeOutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private isAudiobookAsinOrStateChangeViewNull(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isControllerAssociatedWithAudiobookAsin()Z
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSameAudiobookAsinAndStateChangeViewSource(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)Z
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->stateChangeViewSource:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private varargs notifyAndResetCurrentAsinState([Lcom/audible/hushpuppy/model/ITimeOutCallback;)V
    .locals 2

    .line 226
    sget-object v0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Notifying the models to update the state."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->notifyTimeOutForModels([Lcom/audible/hushpuppy/model/ITimeOutCallback;)V

    .line 228
    sget-object p1, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Reset the audiobook asin and the state change view source."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 229
    sget-object p1, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->NONE:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->setAsinAndStateChangeViewSource(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V

    return-void
.end method

.method private varargs notifyTimeOutForModels([Lcom/audible/hushpuppy/model/ITimeOutCallback;)V
    .locals 5

    .line 234
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 235
    iget-object v3, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->asin:Lcom/audible/mobile/domain/Asin;

    iget-object v4, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->stateChangeViewSource:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    invoke-interface {v2, v3, v4}, Lcom/audible/hushpuppy/model/ITimeOutCallback;->timeOut(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setStateChangeViewSource(Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->stateChangeViewSource:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    return-void
.end method


# virtual methods
.method public onEventAsync(Lcom/audible/hushpuppy/common/event/ebook/EbookCloseEvent;)V
    .locals 2

    .line 166
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->asin:Lcom/audible/mobile/domain/Asin;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->stateChangeViewSource:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->isAudiobookAsinOrStateChangeViewNull(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    sget-object p1, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received EbookCloseEvent, but no asin or stateChangeViewSource associated with the controller"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 171
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received EbookCloseEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->stateChangeViewSource:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    sget-object v0, Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;->CANCEL:Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;

    if-ne p1, v0, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->cancelAutoDisappearTimeoutTimer()V

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Lcom/audible/hushpuppy/model/ITimeOutCallback;

    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->upsellModelManagerCallBack:Lcom/audible/hushpuppy/model/ITimeOutCallback;

    aput-object v1, p1, v0

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->notifyAndResetCurrentAsinState([Lcom/audible/hushpuppy/model/ITimeOutCallback;)V

    return-void
.end method

.method setAsin(Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->asin:Lcom/audible/mobile/domain/Asin;

    return-void
.end method

.method protected setAsinAndStateChangeViewSource(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->setAsin(Lcom/audible/mobile/domain/Asin;)V

    .line 187
    invoke-direct {p0, p2}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->setStateChangeViewSource(Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V

    return-void
.end method

.method public declared-synchronized startTimer(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V
    .locals 3

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->isAudiobookAsinOrStateChangeViewNull(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object p1, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Audiobook asin is null. Cannot start timer for null asin"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 117
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->isSameAudiobookAsinAndStateChangeViewSource(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    sget-object p1, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Timer has been already started for this asin and stateChangeViewSource, not starting it again"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 123
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->isControllerAssociatedWithAudiobookAsin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    sget-object v0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling auto disappear timer for previous asin. This means EbookClosed event not called for asin  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->cancelAutoDisappearTimeoutTimer()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/audible/hushpuppy/model/ITimeOutCallback;

    const/4 v1, 0x0

    .line 126
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->upsellModelManagerCallBack:Lcom/audible/hushpuppy/model/ITimeOutCallback;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->notifyAndResetCurrentAsinState([Lcom/audible/hushpuppy/model/ITimeOutCallback;)V

    .line 129
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->setAsinAndStateChangeViewSource(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V

    .line 131
    sget-object p1, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Starting Auto Disappear Processing timeout"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->timeOutHandler:Landroid/os/Handler;

    new-instance p2, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController$AutoDisappearTimeOutReached;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController$AutoDisappearTimeOutReached;-><init>(Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController$1;)V

    sget-object v0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->AUTO_DISAPPEAR_TIMEOUT:Lcom/audible/mobile/domain/Time;

    invoke-interface {v0}, Lcom/audible/mobile/domain/Time;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->AUTO_DISAPPEAR_TIMEOUT:Lcom/audible/mobile/domain/Time;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Time;->getAmount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    sget-object p1, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Auto disappear timeout timer message started"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public viewDisplayed(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V
    .locals 3

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->isAudiobookAsinOrStateChangeViewNull(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget-object p1, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Audiobook asin is null. Cannot set asin to notify that view is displayed"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->isSameAudiobookAsinAndStateChangeViewSource(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    sget-object p1, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "View is already seen for this asin"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->isControllerAssociatedWithAudiobookAsin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    sget-object v0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating the upsell model state for previous asin. This means EbookClosed event not called for asin  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/audible/hushpuppy/model/ITimeOutCallback;

    const/4 v1, 0x0

    .line 153
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->upsellModelManagerCallBack:Lcom/audible/hushpuppy/model/ITimeOutCallback;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->notifyAndResetCurrentAsinState([Lcom/audible/hushpuppy/model/ITimeOutCallback;)V

    .line 156
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;->setAsinAndStateChangeViewSource(Lcom/audible/mobile/domain/Asin;Lcom/audible/hushpuppy/common/upsell/StateChangeViewSource;)V

    return-void
.end method
