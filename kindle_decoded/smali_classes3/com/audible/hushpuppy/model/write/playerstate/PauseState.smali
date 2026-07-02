.class public final Lcom/audible/hushpuppy/model/write/playerstate/PauseState;
.super Ljava/lang/Object;
.source "PauseState.java"

# interfaces
.implements Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/model/write/playerstate/PauseState;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/model/write/playerstate/PauseState;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "playerStateContext can\'t be null"

    .line 30
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/playerstate/PauseState;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    return-void
.end method


# virtual methods
.method public error()V
    .locals 2

    .line 50
    sget-object v0, Lcom/audible/hushpuppy/model/write/playerstate/PauseState;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Setting to error state"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/playerstate/PauseState;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;->getErrorState()Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/write/IStateContext;->setState(Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 44
    sget-object v0, Lcom/audible/hushpuppy/model/write/playerstate/PauseState;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Already in pause state. Returning"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public play()V
    .locals 2

    .line 37
    sget-object v0, Lcom/audible/hushpuppy/model/write/playerstate/PauseState;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Setting to play state"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/playerstate/PauseState;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;->getPlayState()Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/model/write/IStateContext;->setState(Ljava/lang/Object;)V

    return-void
.end method
