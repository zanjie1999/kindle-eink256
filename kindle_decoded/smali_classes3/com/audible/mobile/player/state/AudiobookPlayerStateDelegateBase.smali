.class abstract Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;
.super Ljava/lang/Object;
.source "AudiobookPlayerStateDelegateBase.java"

# interfaces
.implements Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;


# instance fields
.field protected final logger:Lorg/slf4j/Logger;

.field protected final player:Lcom/audible/mobile/player/state/StateAwareAudioPlayer;


# direct methods
.method protected constructor <init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    .line 28
    iput-object p1, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->player:Lcom/audible/mobile/player/state/StateAwareAudioPlayer;

    return-void
.end method

.method private log()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-interface {p0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getState()Lcom/audible/mobile/player/State;

    move-result-object v1

    const-string v2, "Doing default behavior for {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public authenticateFile(Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->log()V

    .line 66
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->player:Lcom/audible/mobile/player/state/StateAwareAudioPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->doAuthenticateFile(Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->log()V

    .line 49
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->player:Lcom/audible/mobile/player/state/StateAwareAudioPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->doGetCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->log()V

    .line 42
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->player:Lcom/audible/mobile/player/state/StateAwareAudioPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->doGetDuration()I

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->log()V

    .line 56
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->player:Lcom/audible/mobile/player/state/StateAwareAudioPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->doGetVolume()F

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->log()V

    .line 35
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->log()V

    .line 87
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->player:Lcom/audible/mobile/player/state/StateAwareAudioPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->doPause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    move-result-object v0

    return-object v0
.end method

.method public prepare(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->log()V

    .line 122
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->player:Lcom/audible/mobile/player/state/StateAwareAudioPlayer;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->doPrepareAsync(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    move-result-object p1

    return-object p1
.end method

.method public seekTo(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->log()V

    .line 101
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->player:Lcom/audible/mobile/player/state/StateAwareAudioPlayer;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->doSeekTo(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    move-result-object p1

    return-object p1
.end method

.method public setDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->log()V

    .line 73
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->player:Lcom/audible/mobile/player/state/StateAwareAudioPlayer;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->doSetDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    move-result-object p1

    return-object p1
.end method

.method public setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->log()V

    .line 115
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->player:Lcom/audible/mobile/player/state/StateAwareAudioPlayer;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->doSetSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V

    return-void
.end method

.method public setVolume(F)Z
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->log()V

    .line 108
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->player:Lcom/audible/mobile/player/state/StateAwareAudioPlayer;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->doSetVolume(F)Z

    move-result p1

    return p1
.end method

.method public start()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->log()V

    .line 80
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->player:Lcom/audible/mobile/player/state/StateAwareAudioPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->doStart()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    move-result-object v0

    return-object v0
.end method

.method public stop()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->log()V

    .line 94
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->player:Lcom/audible/mobile/player/state/StateAwareAudioPlayer;

    invoke-virtual {v0}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->doStop()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;

    move-result-object v0

    return-object v0
.end method
