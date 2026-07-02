.class public final Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;
.super Lcom/audible/hushpuppy/controller/AbstractController;
.source "ApplicationActivityLifeCycleController.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/controller/AbstractController<",
        "Lcom/audible/hushpuppy/model/write/HushpuppyModel;",
        ">;",
        "Landroid/app/Application$ActivityLifecycleCallbacks;"
    }
.end annotation


# static fields
.field public static final DELAY_IN_MILLISECS:J

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final MAIN_ACTIVITY:Ljava/lang/String; = "com.amazon.kcp.oob.MainActivity"


# instance fields
.field private final checkForegroundStatusHandler:Landroid/os/Handler;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final isApplicationForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final threadToCheckForegroundStatus:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->DELAY_IN_MILLISECS:J

    .line 41
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;)V
    .locals 1

    .line 65
    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/AbstractController;-><init>(Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V

    .line 44
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ThreadToCheckForeGroundStatus"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->threadToCheckForegroundStatus:Landroid/os/HandlerThread;

    .line 66
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->eventBus:Lde/greenrobot/event/EventBus;

    .line 67
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->isApplicationForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->threadToCheckForegroundStatus:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 69
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->threadToCheckForegroundStatus:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->checkForegroundStatusHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->isApplicationForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 35
    sget-object v0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;)Lde/greenrobot/event/EventBus;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 128
    sget-object v0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityDestroyed() of %s activity is called."

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.amazon.kcp.oob.MainActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->reset()V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 83
    sget-object v0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onActivityPaused() of %s activity is called."

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->isApplicationForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->checkForegroundStatusHandler:Landroid/os/Handler;

    new-instance v0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController$1;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController$1;-><init>(Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;)V

    sget-wide v1, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->DELAY_IN_MILLISECS:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 75
    sget-object v0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onActivityResumed() of %s activity is called. Application is FOREGROUNDED"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->isApplicationForeground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v0, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;->FOREGROUND:Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
