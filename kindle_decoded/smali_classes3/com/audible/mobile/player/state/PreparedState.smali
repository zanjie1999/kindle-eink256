.class public Lcom/audible/mobile/player/state/PreparedState;
.super Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;
.source "PreparedState.java"


# direct methods
.method public constructor <init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;-><init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V

    return-void
.end method


# virtual methods
.method public getState()Lcom/audible/mobile/player/State;
    .locals 1

    .line 18
    sget-object v0, Lcom/audible/mobile/player/State;->PREPARED:Lcom/audible/mobile/player/State;

    return-object v0
.end method

.method public pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/PreparedState;->getState()Lcom/audible/mobile/player/State;

    move-result-object v1

    sget-object v2, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    const-string v3, "Player is in {} state, returning {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    return-object v0
.end method

.method public prepare(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;
    .locals 3

    .line 38
    iget-object p1, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/PreparedState;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    const-string v2, "Player is in {} state, returning {}"

    invoke-interface {p1, v2, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    return-object p1
.end method

.method public setDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;
    .locals 3

    .line 24
    iget-object p1, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lcom/audible/mobile/player/state/PreparedState;->getState()Lcom/audible/mobile/player/State;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    const-string v2, "Player is in {} state, returning {}"

    invoke-interface {p1, v2, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-object p1
.end method
