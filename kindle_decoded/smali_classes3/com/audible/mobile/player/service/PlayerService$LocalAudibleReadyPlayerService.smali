.class public Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;
.super Lcom/audible/mobile/player/service/AudibleReadyPlayerService$Stub;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/service/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalAudibleReadyPlayerService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/service/PlayerService;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/player/service/PlayerService;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-direct {p0}, Lcom/audible/mobile/player/service/AudibleReadyPlayerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnPlayerEventListener(Lcom/audible/mobile/player/PlayerEventListener;)V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 412
    :try_start_0
    new-instance v0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-direct {v0, v1, p1}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;-><init>(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/PlayerEventListener;)V

    .line 413
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$1100(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/audible/mobile/player/Player;->registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 416
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object p1, p1, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v0, "Not adding PlayerEventListener"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    :goto_0
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 419
    throw p1
.end method

.method public addPlayerServiceEventListener(Lcom/audible/mobile/player/PlayerServiceEventListener;)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$1200(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearPreferences()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->clearPreferences()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 404
    throw v0
.end method

.method public decrementVolume()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$1000(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object v0, v0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v1, "Deferring decrementVolume call to pre-loading new player"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$1000(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->decrementVolume()V

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->decrementVolume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 381
    throw v0
.end method

.method public fastForward(I)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$000(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->startSeekTimer()V

    .line 272
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/Player;->fastForward(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 275
    throw p1
.end method

.method public incrementVolume()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$1000(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object v0, v0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v1, "Deferring incrementVolume call to pre-loading new player"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$1000(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->incrementVolume()V

    goto :goto_0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->incrementVolume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 365
    throw v0
.end method

.method public isPlayWhenReady()Z
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->isPlayWhenReady()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 239
    throw v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->isPlaying()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 229
    throw v0
.end method

.method public loadPlayer(Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0, p1, p2}, Lcom/audible/mobile/player/service/PlayerService;->access$1300(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$000(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->startPauseTimer()V

    .line 260
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 263
    throw v0
.end method

.method public prepare(I)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$900(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object p1, p1, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v0, "Ignoring prepare call while pre-loading new player"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/Player;->prepare(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 218
    throw p1
.end method

.method public releasePlayer()Lcom/audible/mobile/player/Player;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$1400(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    return-object v0
.end method

.method public removeOnPlayerEventListener(Lcom/audible/mobile/player/PlayerEventListener;)V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 427
    :try_start_0
    new-instance v0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-direct {v0, v1, p1}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;-><init>(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/PlayerEventListener;)V

    .line 428
    invoke-virtual {v0}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->unlinkToDeath()V

    .line 429
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$1100(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 430
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/audible/mobile/player/Player;->unregisterListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 432
    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object p1, p1, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v0, "Not removing PlayerEventListener"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    :goto_0
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 435
    throw p1
.end method

.method public removePlayerServiceEventListener(Lcom/audible/mobile/player/PlayerServiceEventListener;)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$1200(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 393
    throw v0
.end method

.method public rewind(I)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$000(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->startSeekTimer()V

    .line 284
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/Player;->rewind(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 287
    throw p1
.end method

.method public seekTo(I)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$000(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->startSeekTimer()V

    .line 307
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/Player;->seekTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 310
    throw p1
.end method

.method public setAudioDataSource(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 5

    .line 172
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$000(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->recordSetAudioDataSource(Lcom/audible/mobile/player/AudioDataSource;)V

    .line 175
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$100(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$100(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v1

    if-eq v1, v0, :cond_3

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$100(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$200(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider;

    move-result-object v1

    iget-object v3, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    .line 178
    invoke-static {v3}, Lcom/audible/mobile/player/service/PlayerService;->access$100(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/audible/mobile/player/AudioDataSource;->getDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;

    move-result-object v3

    .line 177
    invoke-interface {v1, v3, v0}, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider;->getPolicyForDataTypes(Lcom/audible/mobile/player/AudioDataSourceType;Lcom/audible/mobile/player/AudioDataSourceType;)Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

    move-result-object v1

    sget-object v3, Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;->SeamlessContinuation:Lcom/audible/mobile/player/policy/ChangeDataSourceTypePolicyProvider$Policy;

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 180
    :goto_0
    iget-object v3, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v3}, Lcom/audible/mobile/player/service/PlayerService;->access$100(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/AudioDataSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$300(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/PlayerStatusSnapshot;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getPlayerState()Lcom/audible/mobile/player/State;

    move-result-object v3

    sget-object v4, Lcom/audible/mobile/player/State;->IDLE:Lcom/audible/mobile/player/State;

    if-eq v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getPlayerState()Lcom/audible/mobile/player/State;

    move-result-object v3

    sget-object v4, Lcom/audible/mobile/player/State;->PREPARING:Lcom/audible/mobile/player/State;

    if-eq v3, v4, :cond_2

    .line 185
    invoke-virtual {v1}, Lcom/audible/mobile/player/PlayerStatusSnapshot;->getPlayerState()Lcom/audible/mobile/player/State;

    move-result-object v1

    sget-object v3, Lcom/audible/mobile/player/State;->PLAYBACK_COMPLETED:Lcom/audible/mobile/player/State;

    if-eq v1, v3, :cond_2

    .line 186
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0, p1}, Lcom/audible/mobile/player/service/PlayerService;->access$400(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/AudioDataSource;)V

    return-void

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-virtual {v1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/audible/mobile/player/service/PlayerService;->access$500(Lcom/audible/mobile/player/service/PlayerService;Landroid/content/Context;Lcom/audible/mobile/player/AudioDataSourceType;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1, v0, p1, v2}, Lcom/audible/mobile/player/service/PlayerService;->access$600(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/Player;Lcom/audible/mobile/player/AudioDataSource;Z)V

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/Player;->setAudioDataSource(Lcom/audible/mobile/player/AudioDataSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 202
    throw p1
.end method

.method public setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$000(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->startSetSpeedTimer()V

    .line 319
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/Player;->setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 322
    throw p1
.end method

.method public setVolume(F)Z
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$1000(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object v0, v0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v1, "Deferring setVolume call to pre-loading new player"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$1000(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/service/PlayerService$PreloadingPlayerListener;->setVolume(F)V

    const/4 p1, 0x1

    return p1

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/Player;->setVolume(F)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 350
    throw p1
.end method

.method public start()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$000(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/PlayerServiceMetricRecorder;->startStartTimer()V

    .line 248
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 251
    throw v0
.end method

.method public stop()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 298
    throw v0
.end method

.method public volumeBoost(Z)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/Player;->volumeBoost(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$LocalAudibleReadyPlayerService;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 333
    throw p1
.end method
