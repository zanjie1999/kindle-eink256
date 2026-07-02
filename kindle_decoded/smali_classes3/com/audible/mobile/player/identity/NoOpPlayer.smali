.class public final Lcom/audible/mobile/player/identity/NoOpPlayer;
.super Lcom/audible/mobile/player/AbstractPlayer;
.source "NoOpPlayer.java"


# instance fields
.field private final callbackExecutor:Ljava/util/concurrent/ExecutorService;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/audible/mobile/player/LocalPlayerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/AbstractPlayer;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/audible/mobile/player/identity/NoOpPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    const-class p1, Lcom/audible/mobile/player/identity/NoOpPlayer;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/player/identity/NoOpPlayer;->logger:Lorg/slf4j/Logger;

    .line 33
    iput-object p2, p0, Lcom/audible/mobile/player/identity/NoOpPlayer;->callbackExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public clearPreferences()V
    .locals 0

    return-void
.end method

.method public decrementVolume()V
    .locals 0

    return-void
.end method

.method protected getCurrentPosition()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected getDuration()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public incrementVolume()V
    .locals 0

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/audible/mobile/player/identity/NoOpPlayer;->callbackExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/audible/mobile/player/identity/NoOpPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "pause called on NoOpPlayer"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public prepare(I)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/audible/mobile/player/identity/NoOpPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "prepare called on NoOpPlayer"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public registerListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/audible/mobile/player/identity/NoOpPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/audible/mobile/player/identity/NoOpPlayer;->callbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/audible/mobile/player/identity/NoOpPlayer$1;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/player/identity/NoOpPlayer$1;-><init>(Lcom/audible/mobile/player/identity/NoOpPlayer;Lcom/audible/mobile/player/LocalPlayerEventListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/audible/mobile/player/identity/NoOpPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "seekTo called on NoOpPlayer"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public setAudioDataSource(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 1

    .line 68
    iget-object p1, p0, Lcom/audible/mobile/player/identity/NoOpPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "setAudioDataSource called on NoOpPlayer"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/audible/mobile/player/identity/NoOpPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "setSpeed called on NoOpPlayer"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public setVolume(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public start()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/audible/mobile/player/identity/NoOpPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "start called on NoOpPlayer"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/audible/mobile/player/identity/NoOpPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "stop called on NoOpPlayer"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterListener(Lcom/audible/mobile/player/LocalPlayerEventListener;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/audible/mobile/player/identity/NoOpPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public volumeBoost(Z)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/audible/mobile/player/identity/NoOpPlayer;->logger:Lorg/slf4j/Logger;

    const-string v0, "volumeBoost called on NoOpPlayer"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method
