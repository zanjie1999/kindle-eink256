.class public abstract Lcom/audible/mobile/player/LocalPlayerEventListener;
.super Lcom/audible/mobile/player/PlayerEventListener$Stub;
.source "LocalPlayerEventListener.java"


# instance fields
.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/audible/mobile/player/PlayerEventListener$Stub;-><init>()V

    .line 16
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public onBuffering()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v1, "onBuffering NOOP"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onBufferingUpdate(II)V
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string p2, "onBufferingUpdate NOOP"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onCompletion(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v0, "onCompletion NOOP"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onContentUpdated(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v0, "onContentUpdate NOOP"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v1, "onDestroy NOOP"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/audible/mobile/player/exception/PlayerException;)V
    .locals 1

    .line 33
    iget-object p1, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v0, "onError with exception NOOP"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string p2, "onError NOOP"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onLicenseAcquired()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v1, "onLicenseAcquired NOOP"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string p2, "onLicenseFailure NOOP"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onListenerRegistered(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 1

    .line 21
    iget-object p1, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v0, "onListenerRegistered NOOP"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onMaxAvailableTimeUpdate(I)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v0, "onMaxAvailableTime NOOP"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v0, "onNewFile NOOP"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v1, "onPause NOOP"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v1, "onPlay NOOP"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackPositionChange(I)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v0, "onPlaybackPositionChange NOOP"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onReady(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v0, "onReady NOOP"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onReset(Lcom/audible/mobile/player/AudioDataSource;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v0, "onFileClosed NOOP"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onSeekComplete()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v1, "onSeekCOmplete NOOP"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string v1, "onStop NOOP"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string p2, "onSetTempo NOOP"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public onVolumeChanged(FF)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/audible/mobile/player/LocalPlayerEventListener;->logger:Lorg/slf4j/Logger;

    const-string p2, "onVolumeChanged NOOP"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method
