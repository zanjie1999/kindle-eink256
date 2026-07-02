.class public final Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;
.super Ljava/lang/Object;
.source "PlayerStateChangeListener.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/misc/ICallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/common/misc/ICallback<",
        "Lcom/audible/hushpuppy/model/write/IStateContext<",
        "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

.field private final playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

.field private final statsMediaItemFactory:Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "listeningStatsManager can\'t be null."

    .line 43
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "playerStateContext can\'t be null."

    .line 44
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "statsMediaItemFactory can\'t be null."

    .line 45
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    .line 47
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    .line 48
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;->statsMediaItemFactory:Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;

    return-void
.end method

.method private getAction()Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/IStateContext;->getState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction;->getPlayerAction(Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;)Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    move-result-object v0

    return-object v0
.end method

.method private getStatsMediaItem()Lcom/audible/application/stats/integration/StatsMediaItem;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;->statsMediaItemFactory:Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->get()Lcom/audible/application/stats/integration/StatsMediaItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/audible/hushpuppy/model/write/IStateContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/model/write/IStateContext<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;->getAction()Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    move-result-object p1

    .line 55
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player State Action is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->PLAY:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    if-ne v0, p1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;->getStatsMediaItem()Lcom/audible/application/stats/integration/StatsMediaItem;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsRecorder;->recordStartListening(Lcom/audible/application/stats/integration/StatsMediaItem;)V

    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->PAUSE:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->ERROR:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    if-ne v0, p1, :cond_2

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsRecorder;->recordStopListening()V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/audible/hushpuppy/model/write/IStateContext;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/audible/stats/PlayerStateChangeListener;->execute(Lcom/audible/hushpuppy/model/write/IStateContext;)V

    return-void
.end method
