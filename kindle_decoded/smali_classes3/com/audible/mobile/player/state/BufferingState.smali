.class public Lcom/audible/mobile/player/state/BufferingState;
.super Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;
.source "BufferingState.java"


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

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/BufferingState;->getState()Lcom/audible/mobile/player/State;

    move-result-object p2

    sget-object p3, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    const-string v0, "Player is in {} state, returning {}"

    invoke-interface {p1, v0, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    return-object p1
.end method

.method public getState()Lcom/audible/mobile/player/State;
    .locals 1

    .line 23
    sget-object v0, Lcom/audible/mobile/player/State;->BUFFERING:Lcom/audible/mobile/player/State;

    return-object v0
.end method

.method public prepare(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;
    .locals 3

    .line 29
    iget-object p1, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/BufferingState;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    const-string v2, "Player is in {} state, returning {}"

    invoke-interface {p1, v2, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    return-object p1
.end method

.method public setDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;
    .locals 3

    .line 36
    iget-object p1, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/BufferingState;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    const-string v2, "Player is in {} state, returning {}"

    invoke-interface {p1, v2, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-object p1
.end method

.method public start()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
    .locals 1

    .line 53
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->NO_ACTION:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    return-object v0
.end method
