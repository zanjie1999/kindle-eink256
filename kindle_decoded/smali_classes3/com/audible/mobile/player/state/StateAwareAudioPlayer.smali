.class public abstract Lcom/audible/mobile/player/state/StateAwareAudioPlayer;
.super Ljava/lang/Object;
.source "StateAwareAudioPlayer.java"


# instance fields
.field protected final playerStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/audible/mobile/player/State;",
            "Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field protected stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->playerStates:Ljava/util/Map;

    .line 46
    invoke-virtual {p0}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->initializeStates()V

    .line 47
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->playerStates:Ljava/util/Map;

    sget-object v1, Lcom/audible/mobile/player/State;->IDLE:Lcom/audible/mobile/player/State;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    iput-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    return-void
.end method


# virtual methods
.method protected abstract doAuthenticateFile(Lcom/audible/mobile/identity/DeviceSerialNumber;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/identity/DeviceType;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
.end method

.method protected abstract doGetCurrentPosition()I
.end method

.method protected abstract doGetDuration()I
.end method

.method protected abstract doGetVolume()F
.end method

.method protected abstract doNotifyError(Lcom/audible/mobile/player/Error;Ljava/lang/Exception;)V
.end method

.method protected abstract doPause()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PauseResult;
.end method

.method protected abstract doPrepareAsync(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$PrepareResult;
.end method

.method protected abstract doSeekTo(I)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SeekResult;
.end method

.method protected abstract doSetDataSource(Lcom/audible/mobile/player/AudioDataSource;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$SetDataSourceResult;
.end method

.method protected abstract doSetSpeed(Lcom/audible/mobile/player/NarrationSpeed;)V
.end method

.method protected abstract doSetVolume(F)Z
.end method

.method protected abstract doStart()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StartResult;
.end method

.method protected abstract doStop()Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$StopResult;
.end method

.method protected getStateDelegateFromState(Lcom/audible/mobile/player/State;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;
    .locals 3

    .line 189
    sget-object v0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer$1;->$SwitchMap$com$audible$mobile$player$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to map unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :pswitch_0
    new-instance p1, Lcom/audible/mobile/player/state/ErrorState;

    invoke-direct {p1, p0}, Lcom/audible/mobile/player/state/ErrorState;-><init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V

    return-object p1

    .line 206
    :pswitch_1
    new-instance p1, Lcom/audible/mobile/player/state/PlaybackCompletedState;

    invoke-direct {p1, p0}, Lcom/audible/mobile/player/state/PlaybackCompletedState;-><init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V

    return-object p1

    .line 204
    :pswitch_2
    new-instance p1, Lcom/audible/mobile/player/state/StoppedState;

    invoke-direct {p1, p0}, Lcom/audible/mobile/player/state/StoppedState;-><init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V

    return-object p1

    .line 202
    :pswitch_3
    new-instance p1, Lcom/audible/mobile/player/state/PausedState;

    invoke-direct {p1, p0}, Lcom/audible/mobile/player/state/PausedState;-><init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V

    return-object p1

    .line 200
    :pswitch_4
    new-instance p1, Lcom/audible/mobile/player/state/StartedState;

    invoke-direct {p1, p0}, Lcom/audible/mobile/player/state/StartedState;-><init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V

    return-object p1

    .line 198
    :pswitch_5
    new-instance p1, Lcom/audible/mobile/player/state/BufferingState;

    invoke-direct {p1, p0}, Lcom/audible/mobile/player/state/BufferingState;-><init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V

    return-object p1

    .line 196
    :pswitch_6
    new-instance p1, Lcom/audible/mobile/player/state/PreparingState;

    invoke-direct {p1, p0}, Lcom/audible/mobile/player/state/PreparingState;-><init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V

    return-object p1

    .line 194
    :pswitch_7
    new-instance p1, Lcom/audible/mobile/player/state/PreparedState;

    invoke-direct {p1, p0}, Lcom/audible/mobile/player/state/PreparedState;-><init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V

    return-object p1

    .line 192
    :pswitch_8
    new-instance p1, Lcom/audible/mobile/player/state/IdleState;

    invoke-direct {p1, p0}, Lcom/audible/mobile/player/state/IdleState;-><init>(Lcom/audible/mobile/player/state/StateAwareAudioPlayer;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected declared-synchronized initializeStates()V
    .locals 6

    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->playerStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    invoke-static {}, Lcom/audible/mobile/player/State;->values()[Lcom/audible/mobile/player/State;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 227
    iget-object v4, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->playerStates:Ljava/util/Map;

    invoke-virtual {p0, v3}, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->getStateDelegateFromState(Lcom/audible/mobile/player/State;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_0
    monitor-exit p0

    return-void

    .line 223
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Player states were already initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized makeStateTransition(Lcom/audible/mobile/player/State;)V
    .locals 1

    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->playerStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    iput-object p1, p0, Lcom/audible/mobile/player/state/StateAwareAudioPlayer;->stateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
