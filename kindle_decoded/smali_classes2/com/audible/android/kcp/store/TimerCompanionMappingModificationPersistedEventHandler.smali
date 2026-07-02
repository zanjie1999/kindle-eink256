.class public Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;
.super Ljava/lang/Object;
.source "TimerCompanionMappingModificationPersistedEventHandler.java"


# instance fields
.field private final mCountDownTimer:Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;

.field private final mEventBus:Lde/greenrobot/event/EventBus;

.field private final mHandler:Landroid/os/Handler;

.field private final mReaderUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;


# direct methods
.method public constructor <init>(Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;Lcom/amazon/kindle/krx/ui/IReaderUIManager;)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->eventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;-><init>(Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/ui/IReaderUIManager;)V

    return-void
.end method

.method protected constructor <init>(Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/ui/IReaderUIManager;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->mCountDownTimer:Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;

    .line 37
    iput-object p2, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 38
    iput-object p3, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->mReaderUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 39
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->mHandler:Landroid/os/Handler;

    .line 41
    iget-object p1, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->mCountDownTimer:Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;

    invoke-virtual {p1, p0}, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->setEventHandler(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;)Lcom/amazon/kindle/krx/ui/IReaderUIManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->mReaderUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    return-object p0
.end method

.method private refresh()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler$1;

    invoke-direct {v1, p0}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler$1;-><init>(Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->mCountDownTimer:Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;)V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->cancel()V

    .line 46
    invoke-direct {p0}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->refresh()V

    return-void
.end method

.method public start()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->mCountDownTimer:Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
