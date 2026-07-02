.class public abstract Lcom/amazon/kcp/library/models/internal/CLocalBookItem;
.super Ljava/lang/Object;
.source "CLocalBookItem.java"

# interfaces
.implements Lcom/amazon/kindle/model/content/ILocalBookItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/internal/CLocalBookItem$DefaultIntPositionFactoryHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected bookFurthestPosition:I

.field protected bookID:Lcom/amazon/kindle/model/content/IBookID;

.field protected bookLastPosition:I

.field protected bookStartingPosition:I

.field protected fileLastModified:J

.field protected fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

.field protected furthestPositionRead:I

.field protected isRead:Z

.field protected lastPositionRead:I

.field private localBookState:Lcom/amazon/kindle/model/content/LocalBookState;

.field private final localStorage:Lcom/amazon/kcp/application/ILocalStorage;

.field protected messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field protected metadata:Lcom/amazon/kindle/content/ContentMetadata;

.field protected openedBook:Lcom/amazon/kindle/model/content/ILocalBookItemDocument;

.field protected readingProgress:Ljava/lang/Integer;

.field protected readingProgressDirty:Z

.field private supportedFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/model/content/LocalContentFeatureType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->lastPositionRead:I

    .line 53
    iput v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->furthestPositionRead:I

    .line 54
    iput v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookFurthestPosition:I

    .line 56
    iput v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookLastPosition:I

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgressDirty:Z

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kindle/model/content/ILocalBookItemDocument;

    .line 67
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->isRead:Z

    .line 71
    iput-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->supportedFeatures:Ljava/util/Set;

    .line 73
    iput-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localBookState:Lcom/amazon/kindle/model/content/LocalBookState;

    .line 82
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    .line 83
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    .line 85
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class p2, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public static createBookID(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;J)Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    if-eqz p0, :cond_2

    if-eqz p2, :cond_0

    .line 122
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "_update"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p4, Ljava/io/File;->separatorChar:C

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 123
    new-instance p2, Lcom/amazon/kcp/library/models/internal/UpdateBookID;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/library/models/internal/UpdateBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const-wide/16 p0, 0x0

    cmp-long v0, p3, p0

    if-lez v0, :cond_3

    .line 125
    new-instance p0, Lcom/amazon/kindle/model/content/SideloadBookID;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/kindle/model/content/SideloadBookID;-><init>(Ljava/lang/String;J)V

    move-object p2, p0

    :goto_1
    return-object p2

    .line 127
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must provide ASIN/BookType or absolutePath/lastModifiedTime"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initSupportedFeatureSetIfNeeded()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->supportedFeatures:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 365
    const-class v0, Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->supportedFeatures:Ljava/util/Set;

    .line 366
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->populateSupportedFeatureSet()V

    :cond_0
    return-void
.end method

.method private sendEventOfType(Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;Lcom/amazon/kindle/krx/sync/LPRSyncType;)V
    .locals 1

    .line 290
    new-instance v0, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;-><init>(Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;Lcom/amazon/kindle/krx/sync/LPRSyncType;)V

    .line 291
    iget-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method protected computeBookID(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;J)V
    .locals 0

    .line 115
    invoke-static {p1, p2, p3, p4, p5}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->createBookID(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;J)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    return-void
.end method

.method protected abstract getAmznUserLocationFromPosition(I)I
.end method

.method public getAuthorPronunciation()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBookFurthestPosition()I
    .locals 1

    .line 422
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getReadingModeLastPosition()I

    move-result v0

    return v0
.end method

.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public getBookLastPosition()I
    .locals 1

    .line 432
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookLastPosition:I

    return v0
.end method

.method public getBookReadingProgress()Ljava/lang/Integer;
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgressDirty:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->recalculateReadingProgress()V

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgressDirty:Z

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgress:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBookStartingPosition()I
    .locals 1

    .line 457
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookStartingPosition:I

    return v0
.end method

.method public getClippingLimit()F
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    return v0
.end method

.method public getExpirationDate()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getExpirationOffset()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getExtendedMetadata(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getExtendedMetadata()Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getFileLastModified()J
    .locals 2

    .line 329
    iget-wide v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->fileLastModified:J

    return-wide v0
.end method

.method public getFurthestPositionRead()I
    .locals 1

    .line 397
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->furthestPositionRead:I

    return v0
.end method

.method public getGenericMetadata()Lcom/amazon/kindle/model/content/ILocalBookMetadataModel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getIntendedAudience()Lcom/amazon/kindle/model/content/IntendedAudience;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLandmarkPosition(Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getLastPositionRead()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->lastPositionRead:I

    return v0
.end method

.method public getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localBookState:Lcom/amazon/kindle/model/content/LocalBookState;

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->loadLocalBookState()V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localBookState:Lcom/amazon/kindle/model/content/LocalBookState;

    return-object v0
.end method

.method public getLocationFromPosition(I)I
    .locals 0

    .line 552
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getAmznUserLocationFromPosition(I)I

    move-result p1

    return p1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;
    .locals 1

    .line 472
    sget-object v0, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Unknown:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    return-object v0
.end method

.method public getParentAsin()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;
    .locals 1

    .line 622
    sget-object v0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem$DefaultIntPositionFactoryHolder;->INSTANCE:Lcom/amazon/kindle/krx/reader/IPositionFactory;

    return-object v0
.end method

.method public getPositionFromLocation(J)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;
    .locals 1

    .line 462
    sget-object v0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->HORIZONTAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    return-object v0
.end method

.method public getPublicationDateInMillis()J
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getReadingModeLastPosition()I
    .locals 1

    .line 427
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookFurthestPosition:I

    return v0
.end method

.method public getTitlePronunciation()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVolumeLabel()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z
    .locals 1

    .line 345
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->initSupportedFeatureSetIfNeeded()V

    if-eqz p1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->supportedFeatures:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasPublisherFonts()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public informBookCloseToUser()V
    .locals 2

    .line 265
    sget-object v0, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->BOOK_CLOSE:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->sendEventOfType(Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;Lcom/amazon/kindle/krx/sync/LPRSyncType;)V

    return-void
.end method

.method public isArchivable()Z
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBookRead()Z
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    .line 500
    :goto_0
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isBookTypePeriodical(Lcom/amazon/kcp/library/models/BookType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localBookState:Lcom/amazon/kindle/model/content/LocalBookState;

    if-nez v0, :cond_1

    .line 506
    sget-object v0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->TAG:Ljava/lang/String;

    const-string v1, "localBookState is null in CLocalBookItem#isBookRead"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->loadLocalBookState()V

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localBookState:Lcom/amazon/kindle/model/content/LocalBookState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/LocalBookState;->isBookRead()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 513
    :cond_3
    iget-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->isRead:Z

    return v0
.end method

.method public isFalkorEpisode()Z
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFreeDictionary()Z
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v0, :cond_0

    .line 640
    sget-object v1, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLocal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPageOrientationLocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTextbook()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected loadLocalBookState()V
    .locals 5

    const/4 v0, 0x0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    if-nez v1, :cond_0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    .line 170
    :goto_0
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isBookTypePeriodical(Lcom/amazon/kcp/library/models/BookType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kcp/application/ILocalStorage;->loadLocalBookState(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 174
    sget-object v2, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read book state for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 178
    new-instance v0, Lcom/amazon/kindle/model/content/LocalBookState;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/model/content/LocalBookState;-><init>(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/application/ILocalStorage;)V

    .line 180
    :cond_2
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->localBookState:Lcom/amazon/kindle/model/content/LocalBookState;

    return-void
.end method

.method public onBookClose()V
    .locals 1

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kindle/model/content/ILocalBookItemDocument;

    return-void
.end method

.method public onReadingModeChange(Lcom/amazon/kindle/dualreadingmode/ReadingMode;)V
    .locals 0

    return-void
.end method

.method public persistLastPositionReadToSidecar(I)V
    .locals 0

    return-void
.end method

.method protected abstract populateSupportedFeatureSet()V
.end method

.method public proposeFprToUser(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;->FALKOR_MRPR_SUPPRESSED:Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$ActionType;->ACCEPT:Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$ActionType;

    invoke-static {p1, v0}, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$ActionType;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kindle/model/content/ILocalBookItemDocument;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    if-ltz v0, :cond_2

    .line 197
    invoke-static {p0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kindle/model/content/ILocalBookItemDocument;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/model/content/ILocalBookItemDocument;->isPromptworthyFpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 199
    sget-object p1, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->PROPOSE_LOCATION:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    sget-object v0, Lcom/amazon/kindle/krx/sync/LPRSyncType;->FPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->sendEventOfType(Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;Lcom/amazon/kindle/krx/sync/LPRSyncType;)V

    goto :goto_0

    .line 201
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->AT_LOCATION:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    sget-object v0, Lcom/amazon/kindle/krx/sync/LPRSyncType;->FPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->sendEventOfType(Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;Lcom/amazon/kindle/krx/sync/LPRSyncType;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public proposeMrprToUser(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)V
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;->FALKOR_MRPR_SUPPRESSED:Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$ActionType;->ACCEPT:Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$ActionType;

    invoke-static {p1, v0}, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$ActionType;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kindle/model/content/ILocalBookItemDocument;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p1, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    if-ltz v0, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->isFreeDictionary()Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kindle/model/content/ILocalBookItemDocument;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/model/content/ILocalBookItemDocument;->isPromptworthyMrpr(Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 232
    sget-object p1, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->PROPOSE_LOCATION:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    sget-object v0, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->sendEventOfType(Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;Lcom/amazon/kindle/krx/sync/LPRSyncType;)V

    goto :goto_0

    .line 234
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->AT_LOCATION:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    sget-object v0, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->sendEventOfType(Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;Lcom/amazon/kindle/krx/sync/LPRSyncType;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected recalculateReadingProgress()V
    .locals 7

    .line 311
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getLastPositionRead()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getLocationFromPosition(I)I

    move-result v0

    .line 312
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getBookStartingPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getLocationFromPosition(I)I

    move-result v1

    .line 313
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getBookFurthestPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->getLocationFromPosition(I)I

    move-result v2

    if-lez v0, :cond_1

    if-lez v2, :cond_1

    if-ltz v1, :cond_1

    if-le v0, v1, :cond_1

    if-gt v2, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v3, v0

    int-to-double v5, v1

    sub-double/2addr v3, v5

    sub-int/2addr v2, v1

    int-to-double v0, v2

    div-double/2addr v3, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v0

    .line 320
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgress:Ljava/lang/Integer;

    .line 321
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 322
    sget-object v0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading progress calculated as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgress:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "%. That should not be happening. Setting reading progress to 100%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgress:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgress:Ljava/lang/Integer;

    :cond_2
    :goto_1
    return-void
.end method

.method public resolveWithExistingBookId(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    return-void
.end method

.method public restoreBookMetadataFromContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->metadata:Lcom/amazon/kindle/content/ContentMetadata;

    return-void
.end method

.method public setBookFurthestPosition(I)V
    .locals 1

    .line 414
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookFurthestPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgressDirty:Z

    .line 417
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookFurthestPosition:I

    return-void
.end method

.method public setBookLastPosition(I)V
    .locals 1

    .line 449
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookLastPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 450
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgressDirty:Z

    .line 452
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookLastPosition:I

    return-void
.end method

.method public setBookRead(Z)V
    .locals 0

    .line 492
    iput-boolean p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->isRead:Z

    return-void
.end method

.method public setBookStartingPosition(I)V
    .locals 1

    .line 439
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookStartingPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 440
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgressDirty:Z

    .line 442
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->bookStartingPosition:I

    return-void
.end method

.method public setFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;Z)V
    .locals 1

    .line 352
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->initSupportedFeatureSetIfNeeded()V

    if-eqz p1, :cond_1

    .line 354
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->supportedFeatures:Ljava/util/Set;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 356
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setFurthestPositionRead(I)V
    .locals 1

    .line 404
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->furthestPositionRead:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 405
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgressDirty:Z

    .line 407
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->furthestPositionRead:I

    return-void
.end method

.method public setLastPositionRead(I)V
    .locals 1

    .line 384
    iget v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->lastPositionRead:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 385
    iput-boolean v0, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->readingProgressDirty:Z

    .line 387
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->lastPositionRead:I

    return-void
.end method

.method public setOpenedBook(Lcom/amazon/kindle/model/content/ILocalBookItemDocument;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->openedBook:Lcom/amazon/kindle/model/content/ILocalBookItemDocument;

    return-void
.end method

.method public showMessage(Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;)V
    .locals 1

    .line 215
    sget-object v0, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->SHOW_NEW_FONT:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->SHOW_NEW_FEATURE:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->sendEventOfType(Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;Lcom/amazon/kindle/krx/sync/LPRSyncType;)V

    :cond_1
    return-void
.end method

.method public supportBEVPFVForComics()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsLocationToPositionConversion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
