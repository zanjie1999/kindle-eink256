.class public Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;
.super Ljava/lang/Object;
.source "PlayerStateController.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    return-void
.end method


# virtual methods
.method public final onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 43
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;->getPlayerState()Lcom/audible/hushpuppy/common/player/PlayerState;

    move-result-object v1

    const-string v2, "Reader Player State Changed : %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController$1;->$SwitchMap$com$audible$hushpuppy$common$player$PlayerState:[I

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerStateChangedEvent;->getPlayerState()Lcom/audible/hushpuppy/common/player/PlayerState;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 57
    :pswitch_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;->updateErrorState()V

    return-void

    .line 54
    :pswitch_1
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;->updatePauseState()V

    return-void

    .line 47
    :pswitch_2
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlayerStateController;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;->updatePlayState()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
