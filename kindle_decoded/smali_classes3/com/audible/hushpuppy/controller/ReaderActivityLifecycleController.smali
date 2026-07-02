.class public final Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;
.super Lcom/audible/hushpuppy/controller/AbstractController;
.source "ReaderActivityLifecycleController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/controller/AbstractController<",
        "Lcom/audible/hushpuppy/model/write/HushpuppyModel;",
        ">;",
        "Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;"
    }
.end annotation


# static fields
.field public static final DELAY_IN_MILLISECS:J

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final checkReaderActivityForegroundStatusHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private final debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private final isReaderActivityForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final threadToCheckReaderActivityForegroundStatus:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->DELAY_IN_MILLISECS:J

    .line 41
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Landroid/content/Context;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 0

    .line 73
    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/AbstractController;-><init>(Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V

    .line 44
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ThreadToCheckReaderActivityForeGroundStatus"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->threadToCheckReaderActivityForegroundStatus:Landroid/os/HandlerThread;

    .line 74
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 75
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->context:Landroid/content/Context;

    .line 76
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 77
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->isReaderActivityForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->threadToCheckReaderActivityForegroundStatus:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 79
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->threadToCheckReaderActivityForegroundStatus:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->checkReaderActivityForegroundStatusHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->isReaderActivityForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 35
    sget-object v0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method


# virtual methods
.method public onActionBarVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onOverlayVisibilityChange(Z)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/reader/OverlayVisibilityChangedEvent;

    invoke-direct {v1, p1}, Lcom/audible/hushpuppy/common/event/reader/OverlayVisibilityChangedEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 85
    sget-object v0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "OnPause of Reader Activity"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->isReaderActivityForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->onPause()V

    .line 91
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->checkReaderActivityForegroundStatusHandler:Landroid/os/Handler;

    new-instance v1, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController$1;-><init>(Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;)V

    sget-wide v2, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->DELAY_IN_MILLISECS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v1, Lcom/audible/hushpuppy/common/event/common/ReaderActivityLifecycleEvent$OnPause;->INSTANCE:Lcom/audible/hushpuppy/common/event/common/ReaderActivityLifecycleEvent$OnPause;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 111
    sget-object v0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "OnResume of Reader Activity"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->isReaderActivityForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasFullAudiobook()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->onResume()V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v1, Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;->FOREGROUND:Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v1, Lcom/audible/hushpuppy/common/event/common/ReaderActivityLifecycleEvent$OnResume;->INSTANCE:Lcom/audible/hushpuppy/common/event/common/ReaderActivityLifecycleEvent$OnResume;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onSettingsChange()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
