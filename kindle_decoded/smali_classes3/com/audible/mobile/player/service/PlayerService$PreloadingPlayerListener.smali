.class Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/service/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadingPlayerListener"
.end annotation


# instance fields
.field private autoStart:Z

.field private final newAudioDataSource:Lcom/audible/mobile/player/AudioDataSource;

.field private final newPlayer:Lcom/audible/mobile/player/Player;

.field final synthetic this$0:Lcom/audible/mobile/player/service/PlayerService;

.field private volume:F


# direct methods
.method public constructor <init>(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 522
    iput p1, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->volume:F

    const/4 p1, 0x0

    .line 523
    iput-boolean p1, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->autoStart:Z

    .line 534
    iput-object p2, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->newPlayer:Lcom/audible/mobile/player/Player;

    .line 535
    iput-object p3, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->newAudioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    return-void
.end method

.method private discardPreloadingPlayer()V
    .locals 3

    .line 613
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->newPlayer:Lcom/audible/mobile/player/Player;

    invoke-interface {v0, p0}, Lcom/audible/mobile/player/Player;->unregisterListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    .line 614
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->newPlayer:Lcom/audible/mobile/player/Player;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->onDestroy()V

    .line 615
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$900(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->newAudioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 616
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$1000(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public decrementVolume()V
    .locals 2

    .line 562
    iget v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->volume:F

    const v1, 0x3d4ccccd    # 0.05f

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 563
    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->setVolume(F)V

    return-void
.end method

.method public incrementVolume()V
    .locals 2

    .line 553
    iget v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->volume:F

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 554
    invoke-virtual {p0, v0}, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->setVolume(F)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object v0, v0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v1, "Error caused pre-loading player to fail: {} at {}"

    invoke-interface {v0, v1, p2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 599
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->discardPreloadingPlayer()V

    return-void
.end method

.method public onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$900(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/audible/mobile/player/AudioDataSource;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 606
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object p1, p1, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v0, "License failure caused pre-loading player to fail: {}"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 607
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->discardPreloadingPlayer()V

    :cond_0
    return-void
.end method

.method public declared-synchronized onReady(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 2

    monitor-enter p0

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object v0, v0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v1, "Received onReady callback for pre-loading player"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->newAudioDataSource:Lcom/audible/mobile/player/AudioDataSource;

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$900(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/mobile/player/AudioDataSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object p1, p1, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v0, "Ignoring onReady callback for abandoned pre-loading player"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 573
    invoke-direct {p0}, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->discardPreloadingPlayer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    monitor-exit p0

    return-void

    .line 577
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->volume:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->newPlayer:Lcom/audible/mobile/player/Player;

    iget v1, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->volume:F

    invoke-interface {v0, v1}, Lcom/audible/mobile/player/Player;->setVolume(F)Z

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object v0, v0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v1, "Finishing pre-loading new player"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->newPlayer:Lcom/audible/mobile/player/Player;

    invoke-static {v0, v1, p1}, Lcom/audible/mobile/player/service/PlayerService;->access$1500(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/PlayerStatusSnapshot;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->autoStart:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSeekComplete()V
    .locals 4

    monitor-enter p0

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->newPlayer:Lcom/audible/mobile/player/Player;

    invoke-interface {v0, p0}, Lcom/audible/mobile/player/Player;->unregisterListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    .line 591
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object v0, v0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v1, "Switching to pre-loaded player after seeking to current position"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->newPlayer:Lcom/audible/mobile/player/Player;

    iget-object v2, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v2}, Lcom/audible/mobile/player/service/PlayerService;->access$900(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/player/AudioDataSource;

    iget-boolean v3, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->autoStart:Z

    invoke-static {v0, v1, v2, v3}, Lcom/audible/mobile/player/service/PlayerService;->access$600(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVolume(F)V
    .locals 0

    .line 545
    iput p1, p0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->volume:F

    return-void
.end method
