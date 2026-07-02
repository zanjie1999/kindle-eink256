.class public final Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;
.super Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;
.source "PlayerStateContext.java"

# interfaces
.implements Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext<",
        "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;",
        ">;",
        "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;"
    }
.end annotation


# static fields
.field private static final DELAY_TIME:Lcom/audible/mobile/domain/Time;


# instance fields
.field private currentAudioPosition:I

.field private final errorState:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

.field private final handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

.field private final pauseState:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

.field private final playState:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4b

    invoke-direct {v0, v2, v3, v1}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->DELAY_TIME:Lcom/audible/mobile/domain/Time;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/common/system/IWorkerHandler;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    .line 48
    new-instance p1, Lcom/audible/hushpuppy/model/write/playerstate/PlayState;

    invoke-direct {p1, p0}, Lcom/audible/hushpuppy/model/write/playerstate/PlayState;-><init>(Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->playState:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    .line 49
    new-instance p1, Lcom/audible/hushpuppy/model/write/playerstate/PauseState;

    invoke-direct {p1, p0}, Lcom/audible/hushpuppy/model/write/playerstate/PauseState;-><init>(Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->pauseState:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    .line 50
    new-instance p1, Lcom/audible/hushpuppy/model/write/playerstate/ErrorState;

    invoke-direct {p1, p0}, Lcom/audible/hushpuppy/model/write/playerstate/ErrorState;-><init>(Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->errorState:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    .line 53
    iget-object p1, p0, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->pauseState:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public getAudioPosition()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->currentAudioPosition:I

    return v0
.end method

.method public getErrorState()Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->errorState:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    return-object v0
.end method

.method public getPauseState()Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->pauseState:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    return-object v0
.end method

.method public getPlayState()Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->playState:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    return-object v0
.end method

.method public updateAudioPosition(I)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Current audio position updated %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    iput p1, p0, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->currentAudioPosition:I

    return-void
.end method

.method public updateErrorState()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;->error()V

    return-void
.end method

.method public updatePauseState()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;->pause()V

    return-void
.end method

.method public updatePlayState()V
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    new-instance v1, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext$1;-><init>(Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;)V

    sget-object v2, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->DELAY_TIME:Lcom/audible/mobile/domain/Time;

    .line 69
    invoke-interface {v2}, Lcom/audible/mobile/domain/Time;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    sget-object v3, Lcom/audible/hushpuppy/model/write/playerstate/PlayerStateContext;->DELAY_TIME:Lcom/audible/mobile/domain/Time;

    invoke-interface {v3}, Lcom/audible/mobile/domain/Time;->getAmount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 64
    invoke-interface {v0, v1, v2, v3}, Lcom/audible/hushpuppy/common/system/IWorkerHandler;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
