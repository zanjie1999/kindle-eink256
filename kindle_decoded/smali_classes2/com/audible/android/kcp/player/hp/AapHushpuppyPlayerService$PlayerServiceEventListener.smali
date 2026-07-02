.class public Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "AapHushpuppyPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PlayerServiceEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;


# direct methods
.method protected constructor <init>(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 2

    .line 436
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$000(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lde/greenrobot/event/EventBus;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/event/servicescallback/PlayCompletionEvent;->INSTANCE:Lcom/audible/hushpuppy/common/event/servicescallback/PlayCompletionEvent;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 437
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$000(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerState;->END:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;-><init>(Lcom/audible/hushpuppy/common/player/PlayerState;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onContentUpdated(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$100(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lcom/audible/mobile/player/PlayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/player/PlayerManager;->getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v0

    .line 394
    invoke-virtual {p1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-static {}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Inside Content Updated. Asin equals to already loaded. Do not post PlayerStateChangedEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 401
    invoke-static {}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Inside Content updated. No previous audiodatasource is loaded."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 402
    invoke-virtual {v0}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 403
    invoke-static {}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Inside Content Updated. Asin NOT equal with already loaded."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 405
    :cond_2
    :goto_0
    invoke-static {}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Posting PlayerStateChangedEvent with Initialized PlayerState"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 406
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$000(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerState;->INITIALIZED:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;-><init>(Lcom/audible/hushpuppy/common/player/PlayerState;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 447
    invoke-static {}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnError received from playerService, error is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$300(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 449
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$000(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;

    sget-object v2, Lcom/audible/hushpuppy/common/player/PlayerState;->ERROR:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-direct {v1, v2}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;-><init>(Lcom/audible/hushpuppy/common/player/PlayerState;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 451
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PlayerError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, p2, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 455
    sget-object v0, Lcom/audible/mobile/player/Error;->INTERNAL_PLAYER:Lcom/audible/mobile/player/Error;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/audible/mobile/player/Error;->INTERNAL_PLAYER:Lcom/audible/mobile/player/Error;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    sget-object v0, Lcom/audible/mobile/player/Error;->CREATING_RENDERER_FAILED:Lcom/audible/mobile/player/Error;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/audible/mobile/player/Error;->CREATING_RENDERER_FAILED:Lcom/audible/mobile/player/Error;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 481
    :cond_1
    invoke-static {}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string p2, "onError CREATING_RENDERER_FAILED, resetting player..."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 482
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener$1;

    invoke-direct {p2, p0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener$1;-><init>(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 488
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$100(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lcom/audible/mobile/player/PlayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/mobile/player/Player;->reset()V

    goto/16 :goto_2

    .line 456
    :cond_2
    :goto_0
    invoke-static {}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string p2, "OnError invoked from PlayerService, INTERNAL_PLAYER, retrying..."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 461
    :try_start_0
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$100(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lcom/audible/mobile/player/PlayerManager;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$100(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lcom/audible/mobile/player/PlayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/mobile/player/PlayerManager;->getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    .line 462
    invoke-static {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$100(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lcom/audible/mobile/player/PlayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/mobile/player/PlayerManager;->getAudioDataSource()Lcom/audible/mobile/player/AudioDataSource;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 465
    iget-object p2, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {p2}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$100(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lcom/audible/mobile/player/PlayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/audible/mobile/player/PlayerManager;->getCurrentPosition()I

    move-result p2

    add-int/lit16 p2, p2, -0x2ee

    .line 468
    invoke-static {}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Position last played in %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 469
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->stop()V

    .line 470
    invoke-static {}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Setting the Audiodatasource"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$100(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lcom/audible/mobile/player/PlayerManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/Player;->setAudioDataSource(Lcom/audible/mobile/player/AudioDataSource;)V

    if-lez p2, :cond_4

    .line 473
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$500(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ge p2, p1, :cond_4

    .line 474
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {p1, p2}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 478
    :catch_0
    invoke-static {}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string p2, "Error happened when trying to recover onError. Ignore the recovery"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onListenerRegistered(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$500(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getMaxPositionAvailable()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 505
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {p1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getPlayerState()Lcom/audible/mobile/player/State;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$402(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;Lcom/audible/mobile/player/State;)Lcom/audible/mobile/player/State;

    return-void
.end method

.method public onMaxAvailableTimeUpdate(I)V
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$500(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 2

    .line 388
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$000(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerState;->INITIALIZED:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;-><init>(Lcom/audible/hushpuppy/common/player/PlayerState;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    sget-object v1, Lcom/audible/mobile/player/State;->PAUSED:Lcom/audible/mobile/player/State;

    invoke-static {v0, v1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$402(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;Lcom/audible/mobile/player/State;)Lcom/audible/mobile/player/State;

    .line 425
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$000(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;

    sget-object v2, Lcom/audible/hushpuppy/common/player/PlayerState;->PAUSED:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-direct {v1, v2}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;-><init>(Lcom/audible/hushpuppy/common/player/PlayerState;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlay()V
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    sget-object v1, Lcom/audible/mobile/player/State;->STARTED:Lcom/audible/mobile/player/State;

    invoke-static {v0, v1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$402(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;Lcom/audible/mobile/player/State;)Lcom/audible/mobile/player/State;

    .line 419
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$000(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;

    sget-object v2, Lcom/audible/hushpuppy/common/player/PlayerState;->STARTED:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-direct {v1, v2}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;-><init>(Lcom/audible/hushpuppy/common/player/PlayerState;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlaybackPositionChange(I)V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$300(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$000(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/PlaybackPositionChangedEvent;

    invoke-direct {v1, p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlaybackPositionChangedEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onReset(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 2

    .line 442
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$000(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerState;->END:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;-><init>(Lcom/audible/hushpuppy/common/player/PlayerState;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onSeekComplete()V
    .locals 2

    .line 510
    invoke-static {}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$200()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Seek to new position is complete"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$300(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 430
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    sget-object v1, Lcom/audible/mobile/player/State;->STOPPED:Lcom/audible/mobile/player/State;

    invoke-static {v0, v1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$402(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;Lcom/audible/mobile/player/State;)Lcom/audible/mobile/player/State;

    .line 431
    iget-object v0, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$000(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;

    sget-object v2, Lcom/audible/hushpuppy/common/player/PlayerState;->STOPPED:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-direct {v1, v2}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;-><init>(Lcom/audible/hushpuppy/common/player/PlayerState;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 1

    .line 494
    iget-object p1, p0, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService$PlayerServiceEventListener;->this$0:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-static {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->access$000(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;)Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/audible/hushpuppy/common/event/servicescallback/PlayNarrationRateChangedEvent;

    invoke-virtual {p2}, Lcom/audible/mobile/player/NarrationSpeed;->asFloat()F

    move-result p2

    invoke-direct {v0, p2}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayNarrationRateChangedEvent;-><init>(F)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
