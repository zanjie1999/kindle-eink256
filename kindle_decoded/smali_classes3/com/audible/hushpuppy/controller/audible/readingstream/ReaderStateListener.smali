.class public final Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;
.super Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;
.source "ReaderStateListener.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/misc/ICallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;",
        "Lcom/audible/hushpuppy/common/misc/ICallback<",
        "Lcom/audible/hushpuppy/model/write/IStateContext<",
        "Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private currentReaderState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;Lcom/audible/hushpuppy/controller/audible/readingstream/IRelationshipSyncData;)V

    .line 48
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 49
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 50
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 51
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    return-void
.end method

.method private hideChromeAndCommitReaderPosition()V
    .locals 4

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Lcom/audible/hushpuppy/controller/audible/service/PlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Unable to set current location based on current player position, fall back to the last location set on the model."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentAudioPosition()I

    move-result v0

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCorrespondingEBookPosition(I)I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v1, :cond_1

    .line 107
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->isContinuousScrollEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 112
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->commitToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Lcom/audible/hushpuppy/model/write/IStateContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/model/write/IStateContext<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;",
            ">;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Execute Reader state listener"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->currentReaderState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    .line 59
    invoke-interface {p1}, Lcom/audible/hushpuppy/model/write/IStateContext;->getState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->currentReaderState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    .line 61
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;->PLAY:Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/write/IStateContext;->getState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    invoke-static {v1}, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction;->getPlayerAction(Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;)Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    move-result-object v1

    if-eq p1, v1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Player not playing, not logging metric"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 67
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 68
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->getEbookAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Book changed, not logging metric"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logMetric()V

    .line 74
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;->getFullPlayerState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    move-result-object p1

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->currentReaderState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    .line 75
    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;->getInsideBookState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 76
    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 77
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/AbstractKindleStreamStateListener;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Reader mode changed from Full Player to InsideBook while playing a book. setting and committing the current ebook page to match the audiobook page"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->hideChromeAndCommitReaderPosition()V

    :cond_2
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/audible/hushpuppy/model/write/IStateContext;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->execute(Lcom/audible/hushpuppy/model/write/IStateContext;)V

    return-void
.end method

.method protected getAction()Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderStateListener;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/IStateContext;->getState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction;->getReaderAction(Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;)Lcom/audible/hushpuppy/controller/audible/readingstream/StateAction$Action;

    move-result-object v0

    return-object v0
.end method
