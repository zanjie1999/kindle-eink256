.class public final Lcom/audible/mobile/player/state/IdleState;
.super Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;
.source "IdleState.java"


# direct methods
.method public constructor <init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;-><init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V

    return-void
.end method


# virtual methods
.method public authenticateFile(Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/IdleState;->getState()Lcom/audible/mobile/player/State;

    move-result-object p2

    sget-object p3, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    const-string v0, "Player is in {} state, returning {}"

    invoke-interface {p1, v0, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    return-object p1
.end method

.method public getCurrentPosition()I
    .locals 5

    .line 29
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/IdleState;->getState()Lcom/audible/mobile/player/State;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Player is in {} state, returning {}"

    invoke-interface {v0, v4, v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2
.end method

.method public getDuration()I
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/IdleState;->getState()Lcom/audible/mobile/player/State;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Player is in {} state, returning {}"

    invoke-interface {v0, v4, v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2
.end method

.method public getState()Lcom/audible/mobile/player/State;
    .locals 1

    .line 23
    sget-object v0, Lcom/audible/mobile/player/State;->IDLE:Lcom/audible/mobile/player/State;

    return-object v0
.end method

.method public pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/IdleState;->getState()Lcom/audible/mobile/player/State;

    move-result-object v1

    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    const-string v3, "Player is in {} state, returning {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    return-object v0
.end method

.method public prepare(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;
    .locals 3

    .line 81
    iget-object p1, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/IdleState;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    const-string v2, "Player is in {} state, returning {}"

    invoke-interface {p1, v2, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    return-object p1
.end method

.method public seekTo(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;
    .locals 3

    .line 74
    iget-object p1, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/IdleState;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    const-string v2, "Player is in {} state, returning {}"

    invoke-interface {p1, v2, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    return-object p1
.end method

.method public setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 2

    .line 95
    iget-object p1, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/IdleState;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    const-string v1, "Player is in {} state, NOOP"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVolume(F)Z
    .locals 2

    .line 88
    iget-object p1, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/IdleState;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    const-string v1, "Player is in {} state, returning false"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public start()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/IdleState;->getState()Lcom/audible/mobile/player/State;

    move-result-object v1

    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    const-string v3, "Player is in {} state, returning {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    return-object v0
.end method

.method public stop()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/IdleState;->getState()Lcom/audible/mobile/player/State;

    move-result-object v1

    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;

    const-string v3, "Player is in {} state, returning {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;

    return-object v0
.end method
