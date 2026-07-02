.class public final Lcom/audible/mobile/player/state/ErrorState;
.super Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;
.source "ErrorState.java"


# direct methods
.method public constructor <init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;-><init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V

    return-void
.end method

.method private notifyError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 132
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    iget-object p1, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->player:Lcom/audible/mobile/player/state/StateAwareAudioPlayer;

    sget-object v0, Lcom/audible/mobile/player/Error;->UNKNOWN:Lcom/audible/mobile/player/Error;

    invoke-virtual {p1, v0, p2}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public authenticateFile(Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    .locals 2

    .line 61
    iget-object p3, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    const-string v1, "Player is in Error state, returning {}"

    invoke-interface {p3, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to authenticate DRM in error state for - DeviceSerialNumber "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Customer id "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-interface {p2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "DeviceType id "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Player is in Error state: unable to authenticate the DRM file"

    .line 62
    invoke-direct {p0, p2, p1}, Lcom/audible/mobile/player/state/ErrorState;->notifyError(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    return-object p1
.end method

.method public getCurrentPosition()I
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    const-string v2, "Player is in Error state, returning {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getDuration()I
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Player is in Error state, returning {}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method public getState()Lcom/audible/mobile/player/State;
    .locals 1

    .line 31
    sget-object v0, Lcom/audible/mobile/player/State;->ERROR:Lcom/audible/mobile/player/State;

    return-object v0
.end method

.method public getVolume()F
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "Player is in Error state, returning {}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method public pause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    const-string v2, "Player is in Error state, returning {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Player is in Error state: unable to Pause"

    const-string v1, "Trying to pause the player in error state"

    .line 87
    invoke-direct {p0, v0, v1}, Lcom/audible/mobile/player/state/ErrorState;->notifyError(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;

    return-object v0
.end method

.method public prepare(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    const-string v2, "Player is in Error state, returning {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to prepare the player in error state to value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Player is in Error state: unable to Prepare"

    invoke-direct {p0, v0, p1}, Lcom/audible/mobile/player/state/ErrorState;->notifyError(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    return-object p1
.end method

.method public seekTo(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    const-string v2, "Player is in Error state, returning {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to the Seek the player in error state to position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Player is in Error state: unable to seek"

    invoke-direct {p0, v0, p1}, Lcom/audible/mobile/player/state/ErrorState;->notifyError(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;

    return-object p1
.end method

.method public setDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    const-string v2, "Player is in Error state, returning {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set the data source in error state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, "<Empty>"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getUri()Landroid/net/Uri;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Player is in Error state: unable to set the DataSource"

    invoke-direct {p0, v0, p1}, Lcom/audible/mobile/player/state/ErrorState;->notifyError(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;

    return-object p1
.end method

.method public setSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    const-string v1, "Player is in Error state, NOOP"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set the Narration Speed in error state to value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "-1"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/audible/mobile/player/NarrationSpeed;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "Player is in Error state: unable to set the Narration Speed"

    invoke-direct {p0, v0, p1}, Lcom/audible/mobile/player/state/ErrorState;->notifyError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVolume(F)Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    const-string v1, "Player is in Error state, returning false"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to the setVolume in error state to level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Player is in Error state: unable to setVolume"

    invoke-direct {p0, v0, p1}, Lcom/audible/mobile/player/state/ErrorState;->notifyError(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public start()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    const-string v2, "Player is in Error state, returning {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Player is in Error state: unable to Start"

    const-string v1, "Trying to start the player in error state"

    .line 79
    invoke-direct {p0, v0, v1}, Lcom/audible/mobile/player/state/ErrorState;->notifyError(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;

    return-object v0
.end method

.method public stop()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegateBase;->logger:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;

    const-string v2, "Player is in Error state, returning {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Player is in Error state: unable to Stop"

    const-string v1, "Trying to stop the player in error state"

    .line 95
    invoke-direct {p0, v0, v1}, Lcom/audible/mobile/player/state/ErrorState;->notifyError(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;

    return-object v0
.end method
