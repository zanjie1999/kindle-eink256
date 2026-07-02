.class public Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;
.super Landroid/os/CountDownTimer;
.source "ToDoQueueCheckCountdownTimer.java"


# static fields
.field private static final MILLISECONDS_PER_TICK:I = 0x3e8

.field private static final MILLISECONDS_TIMER:I = 0x4e20

.field private static final TICKS_FOR_SECOND_REQUEST:I = 0x7


# instance fields
.field private final mAudibleStoreActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

.field private mCompanionMappingPersistedEventHandler:Ljava/lang/Object;

.field private final mEventBus:Lde/greenrobot/event/EventBus;

.field private final mSyncManager:Lcom/amazon/kindle/krx/sync/ISyncManager;

.field private final mTickTotal:J


# direct methods
.method public constructor <init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;)V
    .locals 2

    .line 36
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->kindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSyncManager()Lcom/amazon/kindle/krx/sync/ISyncManager;

    move-result-object v0

    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->eventBus()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;-><init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;Lcom/amazon/kindle/krx/sync/ISyncManager;Lde/greenrobot/event/EventBus;)V

    return-void
.end method

.method protected constructor <init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;Lcom/amazon/kindle/krx/sync/ISyncManager;Lde/greenrobot/event/EventBus;)V
    .locals 4

    const-wide/16 v0, 0x4e20

    const-wide/16 v2, 0x3e8

    .line 41
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 43
    iput-object p1, p0, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->mAudibleStoreActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    .line 44
    iput-object p2, p0, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->mSyncManager:Lcom/amazon/kindle/krx/sync/ISyncManager;

    .line 45
    iput-object p3, p0, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->mEventBus:Lde/greenrobot/event/EventBus;

    const-wide/16 p1, 0x14

    .line 46
    iput-wide p1, p0, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->mTickTotal:J

    return-void
.end method

.method private getTicks(J)I
    .locals 4

    .line 85
    iget-wide v0, p0, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->mTickTotal:J

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->mCompanionMappingPersistedEventHandler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 75
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->mAudibleStoreActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    .line 76
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->mAudibleStoreActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {v0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->isActivityDestroyed()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->mAudibleStoreActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->store_failed_todo:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->getTicks(J)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->mSyncManager:Lcom/amazon/kindle/krx/sync/ISyncManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/sync/ISyncManager;->triggerToDoSync()V

    :cond_0
    const/4 v0, 0x7

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->getTicks(J)I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->mSyncManager:Lcom/amazon/kindle/krx/sync/ISyncManager;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/sync/ISyncManager;->triggerToDoSync()V

    :cond_1
    return-void
.end method

.method public setEventHandler(Ljava/lang/Object;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->mCompanionMappingPersistedEventHandler:Ljava/lang/Object;

    return-void
.end method
