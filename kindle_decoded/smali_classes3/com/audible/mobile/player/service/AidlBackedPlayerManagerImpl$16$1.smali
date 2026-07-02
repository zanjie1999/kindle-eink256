.class Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;
.super Ljava/lang/Object;
.source "AidlBackedPlayerManagerImpl.java"

# interfaces
.implements Lcom/audible/mobile/player/service/PlayerService$OnBind;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

.field final synthetic val$bindingTimerMetric:Lcom/audible/mobile/metric/domain/TimerMetric;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;Lcom/audible/mobile/metric/domain/TimerMetric;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iput-object p2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->val$bindingTimerMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bound(Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)V
    .locals 5

    .line 620
    iget-object v0, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v0, v0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    monitor-enter v0

    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v1, v1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$700(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v1, v1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$700(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->setAudioDataSource(Lcom/audible/mobile/player/AudioDataSource;)V

    .line 624
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v1, v1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$800(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->prepare(I)V

    .line 627
    :cond_0
    new-instance v1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;

    iget-object v2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v2, v2, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$GetAudioMetadataListener;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$1;)V

    invoke-virtual {p1, v1}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->addOnPlayerEventListener(Lcom/audible/mobile/player/PlayerEventListener;)V

    .line 628
    new-instance v1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingListener;

    iget-object v2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v2, v2, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-direct {v1, v2, v3}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$UnbindingListener;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$1;)V

    invoke-virtual {p1, v1}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->addOnPlayerEventListener(Lcom/audible/mobile/player/PlayerEventListener;)V

    .line 629
    new-instance v1, Lcom/audible/mobile/player/StateTrackingLocalPlayerEventListener;

    iget-object v2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v2, v2, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v2}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$000(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    iget-object v4, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v4, v4, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v4}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$800(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/audible/mobile/player/StateTrackingLocalPlayerEventListener;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {p1, v1}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->addOnPlayerEventListener(Lcom/audible/mobile/player/PlayerEventListener;)V

    .line 631
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v1, v1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$1100(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/player/PlayerEventListener;

    .line 632
    invoke-virtual {p1, v2}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->addOnPlayerEventListener(Lcom/audible/mobile/player/PlayerEventListener;)V

    goto :goto_0

    .line 636
    :cond_1
    new-instance v1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceUnbindListener;

    iget-object v2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v2, v2, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-direct {v1, v2, v3}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceUnbindListener;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$1;)V

    invoke-virtual {p1, v1}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->addOnPlayerEventListener(Lcom/audible/mobile/player/PlayerEventListener;)V

    .line 638
    new-instance v1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceEventListenerImpl;

    iget-object v2, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v2, v2, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-direct {v1, v2, v3}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$PlayerServiceEventListenerImpl;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$1;)V

    invoke-virtual {p1, v1}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->addPlayerServiceEventListener(Lcom/audible/mobile/player/PlayerServiceEventListener;)V

    .line 639
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v1, v1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$1400(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/player/PlayerServiceEventListener;

    .line 640
    invoke-virtual {p1, v2}, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->addPlayerServiceEventListener(Lcom/audible/mobile/player/PlayerServiceEventListener;)V

    goto :goto_1

    .line 643
    :cond_2
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v1, v1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$1500(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1$1;

    invoke-direct {v2, p0, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1$1;-><init>(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 649
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v1, v1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v1, p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$302(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;)Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;

    .line 650
    iget-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->val$bindingTimerMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 651
    iget-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object p1, p1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$1600(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Lcom/audible/mobile/metric/logger/MetricManager;

    move-result-object p1

    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->val$bindingTimerMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-interface {p1, v1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/DurationMetric;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    :try_start_1
    iget-object p1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object p1, p1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {p1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$100(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 656
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 654
    iget-object v1, p0, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16$1;->this$1:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;

    iget-object v1, v1, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl$16;->this$0:Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;

    invoke-static {v1}, Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;->access$100(Lcom/audible/mobile/player/service/AidlBackedPlayerManagerImpl;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 655
    throw p1

    :catchall_1
    move-exception p1

    .line 656
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method
