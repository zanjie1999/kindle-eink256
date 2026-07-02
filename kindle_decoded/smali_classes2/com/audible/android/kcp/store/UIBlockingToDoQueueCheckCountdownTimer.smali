.class public Lcom/audible/android/kcp/store/UIBlockingToDoQueueCheckCountdownTimer;
.super Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;
.source "UIBlockingToDoQueueCheckCountdownTimer.java"


# instance fields
.field private final mAudibleStoreActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;


# direct methods
.method public constructor <init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;)V
    .locals 2

    .line 25
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

    invoke-direct {p0, p1, v0, v1}, Lcom/audible/android/kcp/store/UIBlockingToDoQueueCheckCountdownTimer;-><init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;Lcom/amazon/kindle/krx/sync/ISyncManager;Lde/greenrobot/event/EventBus;)V

    return-void
.end method

.method protected constructor <init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;Lcom/amazon/kindle/krx/sync/ISyncManager;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;-><init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;Lcom/amazon/kindle/krx/sync/ISyncManager;Lde/greenrobot/event/EventBus;)V

    .line 32
    iput-object p1, p0, Lcom/audible/android/kcp/store/UIBlockingToDoQueueCheckCountdownTimer;->mAudibleStoreActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/audible/android/kcp/store/UIBlockingToDoQueueCheckCountdownTimer;->mAudibleStoreActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {v0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->hideSpinner()V

    .line 46
    iget-object v0, p0, Lcom/audible/android/kcp/store/UIBlockingToDoQueueCheckCountdownTimer;->mAudibleStoreActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->store_failed_todo:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/audible/android/kcp/store/UIBlockingToDoQueueCheckCountdownTimer;->mAudibleStoreActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {v0}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->showSpinner()V

    .line 39
    invoke-super {p0, p1, p2}, Lcom/audible/android/kcp/store/ToDoQueueCheckCountdownTimer;->onTick(J)V

    return-void
.end method
