.class Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "PlayerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/service/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerEventListenerAdapter"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

.field final synthetic this$0:Lcom/audible/mobile/player/service/PlayerService;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/player/service/PlayerService;Lcom/audible/mobile/player/PlayerEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    iput-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    .line 634
    iput-object p2, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    .line 635
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iput-object p2, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->binder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 638
    :try_start_0
    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 640
    iget-object p1, p1, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteException calling linkToDeath {}"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 641
    throw p2
.end method

.method private handleRemoteException(Landroid/os/RemoteException;)V
    .locals 2

    .line 872
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object v0, v0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RemoteException {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 874
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->binder:Landroid/os/IBinder;

    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 875
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object p1, p1, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v0, "Binder has died, removing listener from local AudioReadyPlayer"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 876
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 878
    :try_start_0
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/audible/mobile/player/Player;->unregisterListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    iget-object p1, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {p1}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$700(Lcom/audible/mobile/player/service/PlayerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 881
    throw p1

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    iget-object v0, v0, Lcom/audible/mobile/player/service/PlayerService;->logger:Lorg/slf4j/Logger;

    const-string v1, "Binder has died, removing listener from local AudioReadyPlayer"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->this$0:Lcom/audible/mobile/player/service/PlayerService;

    invoke-static {v0}, Lcom/audible/mobile/player/service/PlayerService;->access$800(Lcom/audible/mobile/player/service/PlayerService;)Lcom/audible/mobile/player/Player;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/mobile/player/Player;->unregisterListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 847
    const-class v2, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 849
    :cond_1
    check-cast p1, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;

    .line 851
    iget-object v2, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 853
    :cond_3
    iget-object v2, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->binder:Landroid/os/IBinder;

    iget-object p1, p1, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->binder:Landroid/os/IBinder;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 859
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 860
    iget-object v2, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->binder:Landroid/os/IBinder;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public onBuffering()V
    .locals 1

    .line 807
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0}, Lcom/audible/mobile/player/PlayerEventListener;->onBuffering()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 809
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onBufferingUpdate(II)V
    .locals 1

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0, p1, p2}, Lcom/audible/mobile/player/PlayerEventListener;->onBufferingUpdate(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 789
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onCompletion(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 1

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/PlayerEventListener;->onCompletion(Lcom/audible/mobile/player/AudioDataSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 718
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onContentUpdated(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 1

    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/PlayerEventListener;->onContentUpdated(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 839
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0, p1, p2}, Lcom/audible/mobile/player/PlayerEventListener;->onError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 738
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onLicenseAcquired()V
    .locals 1

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0}, Lcom/audible/mobile/player/PlayerEventListener;->onLicenseAcquired()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 779
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V
    .locals 1

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0, p1, p2}, Lcom/audible/mobile/player/PlayerEventListener;->onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 769
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onListenerRegistered(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 1

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/PlayerEventListener;->onListenerRegistered(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 658
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onMaxAvailableTimeUpdate(I)V
    .locals 1

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/PlayerEventListener;->onMaxAvailableTimeUpdate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 799
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 1

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/PlayerEventListener;->onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 668
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0}, Lcom/audible/mobile/player/PlayerEventListener;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 698
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onPlay()V
    .locals 1

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0}, Lcom/audible/mobile/player/PlayerEventListener;->onPlay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 688
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onPlaybackPositionChange(I)V
    .locals 1

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/PlayerEventListener;->onPlaybackPositionChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 678
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onReady(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 1

    .line 827
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/PlayerEventListener;->onReady(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 829
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onReset(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 1

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/PlayerEventListener;->onReset(Lcom/audible/mobile/player/AudioDataSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 728
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onSeekComplete()V
    .locals 1

    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0}, Lcom/audible/mobile/player/PlayerEventListener;->onSeekComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 819
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 706
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0}, Lcom/audible/mobile/player/PlayerEventListener;->onStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 708
    invoke-direct {p0, v0}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 1

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0, p1, p2}, Lcom/audible/mobile/player/PlayerEventListener;->onTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 748
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public onVolumeChanged(FF)V
    .locals 1

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->playerEventListener:Lcom/audible/mobile/player/PlayerEventListener;

    invoke-interface {v0, p1, p2}, Lcom/audible/mobile/player/PlayerEventListener;->onVolumeChanged(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 759
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    .line 866
    iget-object v0, p0, Lcom/audible/mobile/player/service/PlayerService$PlayerEventListenerAdapter;->binder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
