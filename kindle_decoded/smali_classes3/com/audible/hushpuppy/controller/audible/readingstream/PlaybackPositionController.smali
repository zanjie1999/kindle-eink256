.class public Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;
.super Ljava/lang/Object;
.source "PlaybackPositionController.java"


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

    const-class v1, Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    return-void
.end method


# virtual methods
.method public final onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/PlaybackPositionChangedEvent;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 42
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlaybackPositionChangedEvent;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Playback Position Changed : %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/PlaybackPositionController;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlaybackPositionChangedEvent;->getPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;->updateAudioPosition(I)V

    :cond_0
    return-void
.end method
