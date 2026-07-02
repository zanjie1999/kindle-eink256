.class public final Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;
.super Ljava/lang/Object;
.source "ReaderStateChangeListener.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/misc/ICallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/common/misc/ICallback<",
        "Lcom/audible/hushpuppy/model/write/IStateContext<",
        "Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;",
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

    const-class v1, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>(Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "listeningStatsManager cannot be null"

    .line 36
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "statsMediaItemFactory cannot be null"

    .line 37
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "playerStateContext cannot be null"

    .line 38
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    .line 40
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;->statsMediaItemFactory:Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;

    .line 41
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    return-void
.end method

.method private getStatsMediaItem()Lcom/audible/application/stats/integration/StatsMediaItem;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;->statsMediaItemFactory:Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/audible/stats/StatsMediaItemFactory;->get()Lcom/audible/application/stats/integration/StatsMediaItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Lcom/audible/hushpuppy/model/write/IStateContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/model/write/IStateContext<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;",
            ">;)V"
        }
    .end annotation

    .line 48
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->PLAY:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/IStateContext;->getState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction;->getPlayerAction(Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;)Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 51
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Calling record stop listening of listening stats manager"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsRecorder;->recordStopListening()V

    .line 55
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Calling record start listening of listening stats manager"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;->listeningStatsManager:Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;->getStatsMediaItem()Lcom/audible/application/stats/integration/StatsMediaItem;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsRecorder;->recordStartListening(Lcom/audible/application/stats/integration/StatsMediaItem;)V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/audible/hushpuppy/model/write/IStateContext;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/audible/stats/ReaderStateChangeListener;->execute(Lcom/audible/hushpuppy/model/write/IStateContext;)V

    return-void
.end method
