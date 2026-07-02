.class public final Lcom/audible/hushpuppy/controller/HushpuppyController;
.super Lcom/audible/hushpuppy/controller/AbstractController;
.source "HushpuppyController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/controller/AbstractController<",
        "Lcom/audible/hushpuppy/model/write/HushpuppyModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private audibleServiceAccessibilityProvider:Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;

.field private final isReaderActivityBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final mainLooperHandler:Landroid/os/Handler;

.field private positionMarker:Lcom/amazon/kindle/krx/ui/IPositionMarker;

.field protected priceClient:Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

.field private final readAlongModel:Lcom/audible/hushpuppy/model/write/ReadAlongModel;

.field private final readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field private seekController:Lcom/audible/hushpuppy/controller/SeekController;

.field private waitingOnPlayerLoadForHpInitialize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/HushpuppyController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/read/IReadAlongModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/audible/hushpuppy/controller/SeekController;Lcom/amazon/kindle/krx/ui/IPositionMarker;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 0

    .line 121
    check-cast p3, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-direct {p0, p3, p2}, Lcom/audible/hushpuppy/controller/AbstractController;-><init>(Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V

    const/4 p2, 0x0

    .line 85
    iput-boolean p2, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->waitingOnPlayerLoadForHpInitialize:Z

    .line 122
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 123
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 124
    check-cast p4, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    iput-object p4, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->readAlongModel:Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    .line 125
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 126
    new-instance p2, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->mainLooperHandler:Landroid/os/Handler;

    .line 127
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    .line 128
    iput-object p8, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->positionMarker:Lcom/amazon/kindle/krx/ui/IPositionMarker;

    .line 129
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->isReaderActivityBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 130
    iput-object p9, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 132
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/HushpuppyController;->getAudibleServiceAccessibilityProviderInstance()Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;

    move-result-object p2

    .line 133
    invoke-virtual {p2, p1}, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 134
    sget-object p1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "audibleServiceAccessibilityProvider is enabled on constructor"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 55
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/controller/HushpuppyController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method private doWhisperSyncUpdate()V
    .locals 6

    .line 526
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getLastOpenedEBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 530
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "The player\'s book and book parameter must not be null!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentAudioPosition()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 537
    sget-object v1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The player has not played anything! PlayerAsin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 542
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The audiobook position is greater than what is supported. Audiobook Position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 547
    :cond_2
    iget-object v3, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v3, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    long-to-int v2, v1

    invoke-virtual {v3, v2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCorrespondingEBookPosition(I)I

    move-result v1

    .line 551
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->mainLooperHandler:Landroid/os/Handler;

    new-instance v3, Lcom/audible/hushpuppy/controller/HushpuppyController$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/audible/hushpuppy/controller/HushpuppyController$1;-><init>(Lcom/audible/hushpuppy/controller/HushpuppyController;ILcom/amazon/kindle/krx/content/IBook;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getAudibleServiceAccessibilityProviderInstance()Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleServiceAccessibilityProvider:Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->read_with_audible:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    new-instance v1, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-direct {v1, v2, v0}, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;-><init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleServiceAccessibilityProvider:Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleServiceAccessibilityProvider:Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;

    return-object v0
.end method

.method private isUserNavigatingToUnsyncedSampleRangeWhenPlaying()Z
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isSampleEbookPositionAfterSyncedLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWhisperSyncUpdateNeeded()Z
    .locals 4

    .line 515
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getPlayerState()Lcom/audible/hushpuppy/common/player/PlayerState;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerState;->PAUSED:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    .line 516
    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getPlayerState()Lcom/audible/hushpuppy/common/player/PlayerState;

    move-result-object v0

    sget-object v3, Lcom/audible/hushpuppy/common/player/PlayerState;->STOPPED:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->isReaderActivityBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private navigateToNewAudioPosition(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/hushpuppy/controller/audible/service/PlayerException;
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Updating audio position in onNavigationEvent."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getCurrentPosition()I

    move-result v0

    .line 379
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCorrespondingEBookPosition(I)I

    move-result v1

    .line 382
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->readAlongModel:Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    invoke-virtual {v2, v1}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->isPositionOnPage(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 383
    sget-object p1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Player is playing the current page, ignoring event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return v3

    .line 388
    :cond_0
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v2, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isAudioPositionPlayable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Page has changed, seeking to new position"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/controller/SeekController;->seekTo(I)V

    return v3

    .line 396
    :cond_1
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/HushpuppyController;->isUserNavigatingToUnsyncedSampleRangeWhenPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 397
    sget-object p1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "User is navigating outside sample range while playing the sample, ignore the navigation..."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return v3

    .line 402
    :cond_2
    sget-object p1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Page has changed to unplayable location, pause"

    invoke-interface {p1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 403
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 404
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->pause()V

    .line 407
    :cond_3
    sget-object p1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 408
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Could not navigate to newAudioPosition: actualPosition: %d, actualEbookPosition, %d"

    .line 407
    invoke-interface {p1, v2, v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method private updateReaderWithPositionMarker()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isEbookOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->positionMarker:Lcom/amazon/kindle/krx/ui/IPositionMarker;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->notifyPositionMarkerUpdated(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V

    .line 504
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "MarkerPosition: Notifying Position Marker"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onEventAsync(Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;)V
    .locals 1

    .line 478
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController$2;->$SwitchMap$com$audible$hushpuppy$common$event$common$ReaderActivityForegroundStateChangeEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 480
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleServiceAccessibilityProvider:Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;

    if-eqz p1, :cond_1

    .line 481
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 484
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleServiceAccessibilityProvider:Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;

    if-eqz p1, :cond_2

    .line 485
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/controller/audible/service/AudibleServiceAccessibilityProvider;->enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/common/ReaderActivityLifecycleEvent$OnPause;)V
    .locals 1

    .line 469
    sget-object p1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Reader Activity is on Pause"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->isReaderActivityBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/common/ReaderActivityLifecycleEvent$OnResume;)V
    .locals 1

    .line 460
    sget-object p1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Reader Activity is on Resume"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 461
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->isReaderActivityBackground:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;)V
    .locals 2

    .line 147
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received EBookHushpuppyEnabledEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    sget-object p1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "MarkerPosition: EBookHushpuppyEnabledEvent with HP enabled, registering"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->positionMarker:Lcom/amazon/kindle/krx/ui/IPositionMarker;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerPositionMarker(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V

    .line 151
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/HushpuppyController;->onNavigationEvent()Z

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;)V
    .locals 6

    .line 171
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received LocalAudiobookFileFoundEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->getAudiobookInfo()Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;->getNarrator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setNarrator(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->getAudiobookInfo()Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setTitle(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSyncData(Lcom/audible/hushpuppy/sync/ISyncData;)V

    .line 175
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setAudioFileFound(Z)V

    .line 176
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSyncFileFound(Z)V

    .line 178
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->getAudiobookInfo()Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v2

    .line 180
    sget-object v3, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "Relationship isFullAudio: %s"

    invoke-interface {v3, v5, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    iget-object v3, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v3, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudiobookPlayable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    return-void

    .line 188
    :cond_0
    :try_start_0
    iput-boolean v1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->waitingOnPlayerLoadForHpInitialize:Z

    .line 189
    sget-object v1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Before checking isAsinLoaded currently in player"

    invoke-interface {v1, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v1, v0, v2}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAsinLoaded(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Asin is already loaded, posting PlayerNewContentLoadedEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->getAudiobookInfo()Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->getAudiobookInfo()Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;->getNarrator()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_1
    sget-object v1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asin is not currently loaded, asking service to load file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->getAudiobookInfo()Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;->getAudioFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 197
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;->getAudiobookInfo()Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;->getAudioFile()Ljava/io/File;

    move-result-object p1

    .line 196
    invoke-interface {v1, v0, p1, v2}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->loadFile(Ljava/lang/String;Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 200
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Error calling player service!"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;)V
    .locals 2

    .line 247
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received LocalAudiobookFileNotFoundEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setCurrentRelationship(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    .line 249
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->wasAudioFileFound()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setAudioFileFound(Z)V

    .line 250
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;->wasSyncFileFound()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSyncFileFound(Z)V

    .line 251
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSecondaryProgressAudioPosition(I)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/file/LocalSyncFileFoundEvent;)V
    .locals 2

    .line 260
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received LocalSyncFileFoundEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    .line 262
    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    .line 263
    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalSyncFileFoundEvent;->getEBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/file/LocalSyncFileFoundEvent;->getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSyncData(Lcom/audible/hushpuppy/sync/ISyncData;)V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 1

    .line 439
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController$2;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/HushpuppyController;->updateReaderWithPositionMarker()V

    .line 446
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/HushpuppyController;->isWhisperSyncUpdateNeeded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 447
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/HushpuppyController;->doWhisperSyncUpdate()V

    goto :goto_0

    .line 441
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "User De-Registered, resetting the model ..."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 442
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->reset()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/player/MaxTimeAvailableChangedEvent;)V
    .locals 3

    .line 428
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 429
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/player/MaxTimeAvailableChangedEvent;->getMaxTimeAvailableMilliseconds()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Received PlayerEvent.MaxTimeAvailableChangedEvent maxTimeAvailableMilliseconds: %d"

    .line 428
    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 430
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/player/MaxTimeAvailableChangedEvent;->getMaxTimeAvailableMilliseconds()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSecondaryProgressAudioPosition(I)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/PlayCompletionEvent;)V
    .locals 2

    .line 273
    sget-object p1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isPlaying()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "PlayCompletionEvent. isPlaying: %s"

    invoke-interface {p1, v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->pause()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;)V
    .locals 2

    .line 211
    iget-boolean p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->waitingOnPlayerLoadForHpInitialize:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 215
    iput-boolean p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->waitingOnPlayerLoadForHpInitialize:Z

    .line 217
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getPlayerState()Lcom/audible/hushpuppy/common/player/PlayerState;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerState;->ERROR:Lcom/audible/hushpuppy/common/player/PlayerState;

    if-ne p1, v0, :cond_1

    .line 218
    sget-object p1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received the PlayerNewContentLoadedEvent with Error Player State"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 223
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 226
    sget-object p1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "*** Setting current audio position."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setCurrentAudioPosition(I)V

    .line 228
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerState;->STARTED:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setPlayerState(Lcom/audible/hushpuppy/common/player/PlayerState;)V

    goto :goto_0

    .line 230
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    sget-object v0, Lcom/audible/hushpuppy/common/player/PlayerState;->INITIALIZED:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setPlayerState(Lcom/audible/hushpuppy/common/player/PlayerState;)V

    .line 232
    :goto_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setMaxDurationAudioPosition(I)V

    .line 233
    sget-object p1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "PlayerNewContentLoadedEvent, maxDuration from services: %s"

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getMaxAvailablePosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSecondaryProgressAudioPosition(I)V

    .line 235
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getCurrentNarrationSpeed()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setNarrationSpeed(F)V
    :try_end_0
    .catch Lcom/audible/hushpuppy/controller/audible/service/PlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 238
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Exception getting information from player service"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onNavigationEvent()Z
    .locals 8

    .line 284
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->isContinuousScrollEnabled()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getEBookPosition()I

    move-result v0

    if-eq v0, v1, :cond_0

    return v2

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 294
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "BookNavigator is null, ignoring this navigation event."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return v2

    .line 298
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 299
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 304
    :cond_2
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    if-nez v3, :cond_3

    .line 305
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "BookNavigator return null current page start position, ignoring this navigation event."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return v2

    .line 310
    :cond_3
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 312
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Invalid MRPR position, ignoring this navigation event."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v2

    .line 315
    :cond_4
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    if-ne v4, v1, :cond_5

    .line 317
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Invalid current position, igoring this navigation event."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v2

    .line 320
    :cond_5
    sget-object v1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "onNavigationEvent(), eBookMrprPosition=%s, eBookCurrentPosition=%s"

    invoke-interface {v1, v7, v5, v6}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1, v2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setScrubbing(Z)V

    .line 326
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1, v3}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setEBookPosition(I)V

    .line 327
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1, v4}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setSeekBarEBookPosition(I)V

    .line 331
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSyncData()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_6

    .line 332
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "No sync data, ignoring this navigation event"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v3

    .line 338
    :cond_6
    :try_start_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 339
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 340
    invoke-static {v1, v0}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->isPlaceholderRange(II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 341
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Invalid mrpr position range of (0,0). Ignoring this navigation event."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v2

    :cond_7
    if-le v1, v0, :cond_8

    .line 349
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Mrpr end position is less than start position. Now using range of [startPosition, startPosition] to find valid audio position"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    move v0, v1

    .line 353
    :cond_8
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/audible/hushpuppy/sync/SyncDataUtils;->getMinAudiobookPosFromEBookRange(Lcom/audible/hushpuppy/sync/ISyncData;II)I

    move-result v0

    .line 355
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/HushpuppyController;->navigateToNewAudioPosition(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 357
    sget-object v1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "MarkerPosition: NavigationEvent playback is on, notify reader for "

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/HushpuppyController;->positionMarker:Lcom/amazon/kindle/krx/ui/IPositionMarker;

    .line 359
    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->notifyPositionMarkerUpdated(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
    :try_end_0
    .catch Lcom/audible/hushpuppy/controller/audible/service/PlayerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return v0

    :catch_0
    move-exception v0

    .line 363
    sget-object v1, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Error getting player position"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3

    .line 300
    :cond_a
    :goto_0
    sget-object v0, Lcom/audible/hushpuppy/controller/HushpuppyController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "BookNavigator return null MRPR start or end position, ignoring this navigation event."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return v2
.end method
