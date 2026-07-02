.class public final Lcom/audible/hushpuppy/controller/ReaderNavigationController;
.super Lcom/audible/hushpuppy/controller/AbstractController;
.source "ReaderNavigationController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;
.implements Lcom/amazon/kindle/krx/reader/IStartPageProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/controller/AbstractController<",
        "Lcom/audible/hushpuppy/model/write/HushpuppyModel;",
        ">;",
        "Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;",
        "Lcom/amazon/kindle/krx/reader/IStartPageProvider;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final hushpuppyController:Lcom/audible/hushpuppy/controller/HushpuppyController;

.field private isSampleEbookPositionMovedToAfterSyncedRegion:Ljava/lang/Boolean;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private mostRecentBookOpened:Lcom/amazon/kindle/krx/content/IBook;

.field private positionMarker:Lcom/amazon/kindle/krx/ui/IPositionMarker;

.field private final readAlongController:Lcom/audible/hushpuppy/controller/ReadAlongController;

.field private final readAlongModel:Lcom/audible/hushpuppy/model/write/ReadAlongModel;

.field private final upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/ReadAlongController;Lcom/audible/hushpuppy/controller/HushpuppyController;Lcom/audible/hushpuppy/model/read/IUpsellModel;Lcom/amazon/kindle/krx/ui/IPositionMarker;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/model/write/ReadAlongModel;)V
    .locals 0

    .line 92
    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/controller/AbstractController;-><init>(Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V

    .line 93
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 94
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->readAlongController:Lcom/audible/hushpuppy/controller/ReadAlongController;

    .line 95
    iput-object p9, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->readAlongModel:Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    .line 96
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->hushpuppyController:Lcom/audible/hushpuppy/controller/HushpuppyController;

    .line 97
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

    .line 98
    iput-object p8, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 99
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 100
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->positionMarker:Lcom/amazon/kindle/krx/ui/IPositionMarker;

    return-void
.end method

.method private checkAndSetUpsellViewVisibility(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 337
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->isSameBookAsAudibleModel(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 338
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Book is changed, Player view visibility will not be changed on post navigation"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 342
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_4

    .line 343
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isSampleEbookPositionAfterSyncedLocation()Z

    move-result p1

    .line 345
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->isSampleEbookPositionMovedToAfterSyncedRegion:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 346
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 348
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->isSampleEbookPositionMovedToAfterSyncedRegion:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 351
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setShowPlayer(Z)V

    .line 352
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Toggling upsell banner view to OFF, as user is out of sample region"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setShowPlayer(Z)V

    .line 355
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Toggling upsell banner view to ON, as user is within sample region"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    .line 360
    :cond_4
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Sample is playing not changing any upsell visibility"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method private isSameBookAsAudibleModel(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasEBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getStartPage(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 4

    .line 106
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 107
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getStartPage invoked but for NOT ContentType.BOOK"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v1

    .line 111
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 112
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getStartPage invoked but for GUID is null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return v1

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->isContinuousScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getStartPage invoked but CS is on and we\'re in sample mode"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return v1

    .line 124
    :cond_2
    sget-object v0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Reader requesting for EBook position for Book: %s"

    invoke-interface {v0, v3, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->isSameBookAsAudibleModel(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    sget-object v0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    .line 132
    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentAudioPosition()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCorrespondingEBookPosition(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Audio is playing for %s, returning EBook pos: %s"

    .line 131
    invoke-interface {v0, v2, p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentAudioPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCorrespondingEBookPosition(I)I

    move-result p1

    return p1

    .line 135
    :cond_3
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Either currently opened book is changed from playing book or player is paused so returning -1 to have Reader Handle LPR"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v1
.end method

.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    .line 179
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAfterContentClose(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 185
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "EBookClosed, de-registering the position marker"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->positionMarker:Lcom/amazon/kindle/krx/ui/IPositionMarker;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->removePositionMarker(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V

    const/4 p1, 0x0

    .line 188
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->isSampleEbookPositionMovedToAfterSyncedRegion:Ljava/lang/Boolean;

    .line 190
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v0, Lcom/audible/hushpuppy/common/event/ebook/EbookCloseEvent;->INSTANCE:Lcom/audible/hushpuppy/common/event/ebook/EbookCloseEvent;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    .line 143
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAfterContentOpen(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/ebook/EBookOpenEvent;

    invoke-direct {v1, p1}, Lcom/audible/hushpuppy/common/event/ebook/EBookOpenEvent;-><init>(Lcom/amazon/kindle/krx/content/IBook;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->reset()V

    .line 156
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->reset()V

    .line 157
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v1, Lcom/audible/hushpuppy/common/event/ebook/EBookChangedEvent;->INSTANCE:Lcom/audible/hushpuppy/common/event/ebook/EBookChangedEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->mostRecentBookOpened:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 162
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "MarkerPosition: onAfterContentOpen, positionmarker registered for existing HP title"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->positionMarker:Lcom/amazon/kindle/krx/ui/IPositionMarker;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerPositionMarker(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V

    .line 166
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "onAfterContentOpen: ebook already open in hushpuppy, ignoring it"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-void

    .line 172
    :cond_2
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->mostRecentBookOpened:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 3

    .line 199
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAfterNavigation() type: %s for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "onAfterNavigation() with navigation type: %s for: ebook not enabled, ignoring it"

    invoke-interface {p1, v0, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->checkAndSetUpsellViewVisibility(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 214
    :cond_2
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Updating current page"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 215
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->readAlongController:Lcom/audible/hushpuppy/controller/ReadAlongController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/ReadAlongController;->updateCurrentPage()V

    .line 220
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPlaying()Z

    move-result p1

    .line 221
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->hushpuppyController:Lcom/audible/hushpuppy/controller/HushpuppyController;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/HushpuppyController;->onNavigationEvent()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 222
    sget-object v2, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_PREVIOUS:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    if-eq p2, v2, :cond_4

    sget-object v2, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;->PAGE_NEXT:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;

    if-ne p2, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 223
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->beyondSyncedContent()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSampleAudiobook()Z

    move-result p1

    if-nez p1, :cond_5

    .line 224
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->readAlongController:Lcom/audible/hushpuppy/controller/ReadAlongController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/ReadAlongController;->launchJumpDialog()V

    .line 227
    :cond_5
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Posting ReaderPageNavigationEvent.PostNavigation event"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object p2, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PostNavigation;->INSTANCE:Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PostNavigation;

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 3

    .line 255
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBeforeNavigation() with navigation type: %s for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->isSameBookAsAudibleModel(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p2}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 265
    sget-object p2, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "onBeforeNavigation(): Pausing previous title since its a different ebook"

    invoke-interface {p2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 266
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p2}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->pause()V

    .line 269
    :cond_1
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p2, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 270
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "onBeforeNavigation(): ebook not enabled, ignoring it"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-void

    .line 273
    :cond_2
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Posting ReaderPageNavigationEvent.PreNavigation event"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object p2, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;->INSTANCE:Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PreNavigation;

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 3

    .line 316
    sget-object v0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle ModelChangedEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->AUDIO_FILE_DELETED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    if-ne v0, v1, :cond_0

    .line 319
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/Asin;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 321
    :goto_0
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object p1

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->USER_REGISTERED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    if-eq p1, v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 322
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->mostRecentBookOpened:Lcom/amazon/kindle/krx/content/IBook;

    :cond_2
    return-void
.end method

.method public onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 1

    .line 281
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Navigation failed callback for : %s"

    invoke-interface {p1, v0, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Posting ReaderPageNavigationEvent.NavigationFailed event"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object p2, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$NavigationFailed;->INSTANCE:Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$NavigationFailed;

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPageChange(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 3

    .line 233
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPageChange() type: %s for : %s"

    invoke-interface {v0, v2, p2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p2, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 240
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "onPageChange() for ebook not enabled, ignoring it"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 244
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Updating current page"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->readAlongController:Lcom/audible/hushpuppy/controller/ReadAlongController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/ReadAlongController;->updateCurrentPage()V

    .line 247
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Posting ReaderPageNavigationEvent.PageChange event"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object p2, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;->INSTANCE:Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageChange;

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    .line 290
    sget-object v0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPageFlowChanged() for : %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->readAlongController:Lcom/audible/hushpuppy/controller/ReadAlongController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/ReadAlongController;->updateCurrentPage()V

    .line 294
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->readAlongModel:Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->reset()V

    .line 297
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/controller/ReaderNavigationController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Posting ReaderPageNavigationEvent.PageFlowChanged event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v0, Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageFlowChanged;->INSTANCE:Lcom/audible/hushpuppy/common/event/ebook/ReaderPageNavigationEvent$PageFlowChanged;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onPageTurnAborted(Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;)V
    .locals 0

    return-void
.end method
