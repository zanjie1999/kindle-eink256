.class public Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;
.super Lcom/audible/mobile/player/LocalPlayerEventListener;
.source "MultiplexingLocalPlayerEventListener.java"


# instance fields
.field private final callbackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/mobile/player/LocalPlayerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/audible/mobile/player/LocalPlayerEventListener;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/audible/mobile/player/LocalPlayerEventListener;-><init>()V

    const-string v0, "Callback set must not be null"

    .line 33
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->callbackSet:Ljava/util/Set;

    const-string p1, "Executor must not be null"

    .line 34
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;)Ljava/util/Set;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->callbackSet:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public onBuffering()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$19;

    invoke-direct {v1, p0}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$19;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBufferingUpdate(II)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$14;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCompletion(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$9;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$9;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;Lcom/audible/mobile/player/AudioDataSource;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onContentUpdated(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$5;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$5;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$13;

    invoke-direct {v1, p0}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$13;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lcom/audible/mobile/player/exception/PlayerException;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$2;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$2;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;Lcom/audible/mobile/player/exception/PlayerException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$3;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLicenseAcquired()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$7;

    invoke-direct {v1, p0}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$7;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$6;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMaxAvailableTimeUpdate(I)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$15;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$15;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$1;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$1;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$11;

    invoke-direct {v1, p0}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$11;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$10;

    invoke-direct {v1, p0}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$10;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlaybackPositionChange(I)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$4;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$4;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReady(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$20;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$20;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onReset(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$16;

    invoke-direct {v1, p0, p1}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$16;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;Lcom/audible/mobile/player/AudioDataSource;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSeekComplete()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$8;

    invoke-direct {v1, p0}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$8;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$12;

    invoke-direct {v1, p0}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$12;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$17;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVolumeChanged(FF)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener$18;-><init>(Lcom/audible/mobile/player/MultiplexingLocalPlayerEventListener;FF)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
