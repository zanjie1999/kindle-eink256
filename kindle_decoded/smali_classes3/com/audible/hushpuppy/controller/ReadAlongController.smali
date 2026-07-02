.class public final Lcom/audible/hushpuppy/controller/ReadAlongController;
.super Lcom/audible/hushpuppy/controller/AbstractController;
.source "ReadAlongController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/controller/AbstractController<",
        "Lcom/audible/hushpuppy/model/write/ReadAlongModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final MS_BETWEEN_PROGRESS_METRICS:I = 0x927c0

.field private static final MS_BETWEEN_SAMPLE_PROGRESS_METRICS:I = 0xea60


# instance fields
.field protected audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field protected audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field protected dialogManager:Lcom/audible/hushpuppy/common/dialog/DialogManager;

.field protected hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

.field protected hushpuppyPerformanceUtils:Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;

.field protected kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private lastCommandedEBookPosition:I

.field protected navigationListener:Lcom/audible/hushpuppy/controller/NavigationListener;

.field private previousMetricPosition:I

.field protected readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field protected readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

.field protected seekController:Lcom/audible/hushpuppy/controller/SeekController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/ReadAlongController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/read/IReadAlongModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/common/dialog/DialogManager;Lcom/audible/hushpuppy/controller/ISleepTimerController;Lcom/audible/hushpuppy/controller/NavigationListener;)V
    .locals 0

    .line 138
    check-cast p1, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/AbstractController;-><init>(Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V

    const/4 p1, -0x1

    .line 108
    iput p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->previousMetricPosition:I

    .line 111
    iput p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->lastCommandedEBookPosition:I

    .line 139
    check-cast p3, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    iput-object p3, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    .line 140
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 141
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 142
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 143
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->dialogManager:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    .line 144
    iput-object p9, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->navigationListener:Lcom/audible/hushpuppy/controller/NavigationListener;

    return-void
.end method

.method private doesHushpuppyModelBookMatchCurrentBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/audible/hushpuppy/common/relationship/ICompanion;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 473
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 475
    :goto_0
    sget-object p2, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Do the two books match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return p1
.end method

.method private getCurrentPage()Lcom/audible/hushpuppy/common/readalong/CurrentPage;
    .locals 3

    .line 359
    new-instance v0, Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/common/readalong/CurrentPage;-><init>(Lcom/amazon/kindle/krx/content/IBookContent;Lcom/amazon/kindle/krx/reader/IBookNavigator;)V

    return-object v0
.end method

.method private isCurrentPageAtMrprInPageFlipView(Lcom/amazon/kindle/krx/reader/IBookNavigator;)Z
    .locals 2

    .line 465
    sget-object v0, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentReaderNavigationMode()Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 466
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 467
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNewPositionOnNextPage(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IBookNavigator;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 495
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 498
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    .line 499
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    sub-int/2addr v1, p2

    .line 500
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    .line 501
    sget-object p2, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "NewPositionValue: %d CurrentPageEndPositionValue %d PageRangeEstimate %d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    if-le p1, v2, :cond_1

    add-int/2addr v2, v1

    if-ge p1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private navigateReaderTo(I)V
    .locals 9

    .line 379
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 380
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 381
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 382
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 383
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eq p1, v3, :cond_6

    .line 384
    invoke-static {v1, v2}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->isPlaceholderRange(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 388
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 389
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    if-le p1, v1, :cond_8

    .line 390
    :cond_1
    iget v1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->lastCommandedEBookPosition:I

    if-eq p1, v1, :cond_8

    .line 391
    iput p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->lastCommandedEBookPosition:I

    .line 392
    sget-object v1, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Commanding reader to move to eBook position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 393
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    .line 394
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    .line 408
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/ReadAlongController;->isCurrentPageAtMrprInPageFlipView(Lcom/amazon/kindle/krx/reader/IBookNavigator;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 409
    invoke-interface {v0, p1, v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    .line 411
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->updateMostRecentPageReadPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    goto/16 :goto_1

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->isContinuousScrollEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 413
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    .line 414
    iget-object v3, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v3}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v3

    if-eqz p1, :cond_8

    .line 415
    invoke-direct {p0, v1, v3}, Lcom/audible/hushpuppy/controller/ReadAlongController;->doesHushpuppyModelBookMatchCurrentBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/audible/hushpuppy/common/relationship/ICompanion;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 416
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    iget-object v3, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyPerformanceUtils:Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;->emitPerfMarkerForReadAlongAutoScroll(Ljava/lang/String;Z)V

    .line 418
    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/controller/ReadAlongController;->isNewPositionOnNextPage(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IBookNavigator;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 419
    sget-object p1, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Scroll to next page"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 420
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->areOverlaysVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 424
    sget-object p1, Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;->PreserveOverlays:Lcom/amazon/kindle/krx/reader/IBookNavigator$PageTurnOption;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToNextPage(Ljava/util/EnumSet;)V

    goto :goto_1

    .line 426
    :cond_3
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToNextPage()V

    goto :goto_1

    .line 428
    :cond_4
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 429
    sget-object v1, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "NavigateToPercent() to correct position in book"

    invoke-interface {v1, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 430
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getPercentage(Lcom/amazon/kindle/krx/reader/IPosition;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    div-double/2addr v5, v7

    .line 431
    invoke-interface {v0, v5, v6, v2, v4}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->navigateToPercent(DZZ)V

    goto :goto_1

    .line 435
    :cond_5
    invoke-interface {v0, p1, v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->navigateDocument(Lcom/amazon/kindle/krx/reader/IPosition;Z)V

    goto :goto_1

    .line 385
    :cond_6
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Cannot navigate to ebook position as it is invalid or the mrpr positions are placeholder values."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    .line 440
    :cond_7
    sget-object p1, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Cannot navigate to correct EBook position, Book Navigator is NULL or IPosition is NULL"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private onAudioPositionChanged()V
    .locals 2

    .line 317
    sget-object v0, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onAudioPositionChanged()"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentAudioPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/audible/hushpuppy/controller/ReadAlongController;->onAudioPositionChanged(ZI)V

    return-void
.end method

.method private onAudioPositionChanged(ZI)V
    .locals 4

    if-gez p2, :cond_0

    .line 232
    sget-object p1, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Unsynced page found in onAudioPositionChanged; not updating."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0, p2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCorrespondingEBookPosition(I)I

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->isPositionOnPage(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->navigationListener:Lcom/audible/hushpuppy/controller/NavigationListener;

    .line 243
    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/NavigationListener;->isIgnoreAudioPositionChange()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 244
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->isContinuousScrollEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSampleAudiobook()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez p1, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    .line 286
    :cond_3
    sget-object p1, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    .line 287
    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->isPositionOnPage(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->navigationListener:Lcom/audible/hushpuppy/controller/NavigationListener;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/controller/NavigationListener;->isIgnoreAudioPositionChange()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Not seeking, Current position is not on page is: %s and/or Ignore postion is: %s"

    .line 286
    invoke-interface {p1, v2, v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 246
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/audible/hushpuppy/sync/SyncDataUtils;->getRangeMembership(Lcom/audible/hushpuppy/sync/ISyncData;I)Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    move-result-object p1

    .line 248
    sget-object v1, Lcom/audible/hushpuppy/controller/ReadAlongController$2;->$SwitchMap$com$audible$hushpuppy$sync$SyncDataUtils$RangeMembership:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 282
    sget-object v0, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid range membership value found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 267
    :cond_5
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isEbookOpen()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 268
    sget-object p1, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Navigating Reader to EBook position: %s"

    invoke-interface {p1, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/ReadAlongController;->navigateReaderTo(I)V

    .line 270
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->isContinuousScrollEnabled()Z

    move-result p1

    if-nez p1, :cond_8

    .line 274
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ReadAlongController;->getCurrentPage()Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->setCurrentPage(Lcom/audible/hushpuppy/common/readalong/CurrentPage;)V

    goto :goto_2

    .line 277
    :cond_6
    sget-object p1, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "EBook is not open for navigation"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 260
    :cond_7
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object p1

    add-int/lit16 v0, p2, -0x7d0

    invoke-static {p1, v0}, Lcom/audible/hushpuppy/sync/SyncDataUtils;->getRangeMembership(Lcom/audible/hushpuppy/sync/ISyncData;I)Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->AFTER:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    if-ne p1, v0, :cond_8

    .line 262
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ReadAlongController;->onContentEnd()V

    .line 291
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 292
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->updateSelection(I)V

    .line 293
    invoke-direct {p0, p2}, Lcom/audible/hushpuppy/controller/ReadAlongController;->reportPlayMetric(I)V

    :cond_9
    return-void

    .line 251
    :cond_a
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMinimumSyncedAudioPosition()I

    move-result p1

    .line 252
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    invoke-virtual {p2, p1}, Lcom/audible/hushpuppy/controller/SeekController;->seekTo(I)V

    .line 253
    sget-object p2, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Seeking audio to new position: %s"

    invoke-interface {p2, v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->setStartAnnotation(I)V

    .line 255
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->setEndAnnotation(I)V

    return-void
.end method

.method private onContentEnd()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->pause()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setCurrentAudioPosition(I)V

    .line 304
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasFullAudiobook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->dialogManager:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->onEndOfSynchronizedContent()V

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->dialogManager:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->onEndOfSample(Lcom/audible/mobile/domain/Asin;)V

    :goto_0
    return-void
.end method

.method private reportPlayMetric(I)V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 340
    iget v1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->previousMetricPosition:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 341
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x927c0

    if-lt v1, v2, :cond_0

    .line 342
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->PlayingFull:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->INFO:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 344
    iput p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->previousMetricPosition:I

    goto :goto_0

    .line 345
    :cond_0
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasSampleAudiobook()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0xea60

    if-lt v1, v0, :cond_1

    .line 347
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->PlayingSample:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->INFO:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 349
    iput p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->previousMetricPosition:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public forceOnAudioPositionUpdate(I)V
    .locals 2

    .line 328
    sget-object v0, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "forceOnAudioPositionUpdate()"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 329
    invoke-direct {p0, v0, p1}, Lcom/audible/hushpuppy/controller/ReadAlongController;->onAudioPositionChanged(ZI)V

    return-void
.end method

.method public launchJumpDialog()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->dialogManager:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    new-instance v1, Lcom/audible/hushpuppy/controller/ReadAlongController$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/controller/ReadAlongController$1;-><init>(Lcom/audible/hushpuppy/controller/ReadAlongController;)V

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->onUnsynchronizedContent(Lcom/audible/hushpuppy/common/misc/IVoidCallback;)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/common/ReaderActivityLifecycleEvent$OnResume;)V
    .locals 0

    .line 201
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/ReadAlongController;->reset()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ReadAlongController;->onAudioPositionChanged()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 2

    .line 154
    sget-object v0, Lcom/audible/hushpuppy/controller/ReadAlongController$2;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->updateSelection(I)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->reset()V

    .line 165
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    .line 166
    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentAudioPosition()I

    move-result v0

    .line 165
    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCorrespondingEBookPosition(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/ReadAlongController;->navigateReaderTo(I)V

    .line 167
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ReadAlongController;->getCurrentPage()Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->setCurrentPage(Lcom/audible/hushpuppy/common/readalong/CurrentPage;)V

    .line 168
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->dialogManager:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->clearCachedDialogs()V

    goto :goto_0

    .line 156
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->navigationListener:Lcom/audible/hushpuppy/controller/NavigationListener;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/NavigationListener;->isIgnoreAudioPositionChange()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    .line 157
    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isSampleEbookPositionAfterSyncedLocation()Z

    move-result p1

    if-nez p1, :cond_3

    .line 158
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ReadAlongController;->onAudioPositionChanged()V

    goto :goto_0

    .line 160
    :cond_3
    sget-object p1, Lcom/audible/hushpuppy/controller/ReadAlongController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Ignoring current audio position change"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/reader/OverlayVisibilityChangedEvent;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    .line 191
    invoke-static {v0}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReadAlongController;->hushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    .line 192
    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/reader/OverlayVisibilityChangedEvent;->areOverlaysAppearing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/ReadAlongController;->reset()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->reset()V

    return-void
.end method

.method public updateCurrentPage()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/ReadAlongController;->getCurrentPage()Lcom/audible/hushpuppy/common/readalong/CurrentPage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->setCurrentPage(Lcom/audible/hushpuppy/common/readalong/CurrentPage;)V

    return-void
.end method
