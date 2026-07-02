.class public abstract Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;
.super Lcom/audible/mobile/player/state/StateAwareAudioPlayer;
.source "StateAwareAudioFocusEnforcedPlayer.java"


# instance fields
.field private final audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

.field protected final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/player/service/AudioFocus;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;-><init>()V

    .line 16
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    .line 28
    iput-object p1, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

    return-void
.end method


# virtual methods
.method protected final doPause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Informing audio focus about pause event to avoid restart"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->doPauseInternal()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-virtual {v1}, Lcom/audible/mobile/player/service/AudioFocus;->doNotRestartPlaybackOnAudioFocusGain()V

    :cond_0
    return-object v0
.end method

.method protected abstract doPauseInternal()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
.end method

.method protected final doStart()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/AudioFocus;->requestAudioFocus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->logger:Lorg/slf4j/Logger;

    const-string v1, "Unable to successfully request audio focus"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/audible/mobile/player/Error;->UNABLE_TO_ACQUIRE_AUDIOFOCUS:Lcom/audible/mobile/player/Error;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    .line 64
    invoke-virtual {p0}, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->onAudioFocusFailedToAcquire()V

    .line 65
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->doStartInternal()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    move-result-object v0

    return-object v0
.end method

.method protected abstract doStartInternal()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
.end method

.method protected final doStop()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/AudioFocus;->abandonAudioFocus()I

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->doStopInternal()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;

    move-result-object v0

    return-object v0
.end method

.method protected abstract doStopInternal()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;
.end method

.method protected abstract onAudioFocusFailedToAcquire()V
.end method

.method public final onDestroy()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/AudioFocus;->abandonAudioFocus()I

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->onDestroyInternal()V

    return-void
.end method

.method protected abstract onDestroyInternal()V
.end method

.method public final reset()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->audioFocus:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-virtual {v0}, Lcom/audible/mobile/player/service/AudioFocus;->abandonAudioFocus()I

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/audible/mobile/player/state/StateAwareAudioFocusEnforcedPlayer;->resetInternal()V

    return-void
.end method

.method protected abstract resetInternal()V
.end method
