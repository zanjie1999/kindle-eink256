.class public final Lcom/audible/mobile/player/state/StoppedState;
.super Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;
.source "StoppedState.java"


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

    .line 32
    iget-object p1, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/StoppedState;->getState()Lcom/audible/mobile/player/State;

    move-result-object p2

    sget-object p3, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    const-string v0, "Player is in {} state, returning {}"

    invoke-interface {p1, v0, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    return-object p1
.end method

.method public getState()Lcom/audible/mobile/player/State;
    .locals 1

    .line 23
    sget-object v0, Lcom/audible/mobile/player/State;->STOPPED:Lcom/audible/mobile/player/State;

    return-object v0
.end method

.method public pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
    .locals 1

    .line 46
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->NO_ACTION:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    return-object v0
.end method

.method public setDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;
    .locals 3

    .line 39
    iget-object p1, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/StoppedState;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    const-string v2, "Player is in {} state, returning {}"

    invoke-interface {p1, v2, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-object p1
.end method

.method public stop()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;
    .locals 1

    .line 52
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;->NO_ACTION:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;

    return-object v0
.end method
