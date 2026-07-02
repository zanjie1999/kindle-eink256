.class public final Lcom/audible/hushpuppy/controller/LibraryController;
.super Lcom/audible/hushpuppy/controller/AbstractController;
.source "LibraryController.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/ILibraryController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/controller/AbstractController<",
        "Lcom/audible/hushpuppy/model/write/HushpuppyModel;",
        ">;",
        "Lcom/audible/hushpuppy/controller/ILibraryController;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final RELATIONSHIP_TIME_TO_LIVE_IN_MILLISECONDS:J


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final audioBookMetaDataProvider:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;

.field private final audioDownloadedFileManager:Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

.field private final debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private final hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

.field private final hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

.field private final mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

.field private final ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

.field private platformSetting:Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

.field private restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

.field private final syncDataProvider:Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 78
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/library/manager/util/sync/HushpuppySyncIntegration;

    invoke-direct {v0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/sync/HushpuppySyncIntegration;-><init>()V

    invoke-static {v0}, Lcom/audible/hushpuppy/sync/SyncIntegration;->setDelegate(Lcom/audible/hushpuppy/sync/SyncIntegration$IDelegate;)V

    .line 82
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/LibraryController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 87
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/audible/hushpuppy/controller/LibraryController;->RELATIONSHIP_TIME_TO_LIVE_IN_MILLISECONDS:J

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 0

    .line 167
    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-direct {p0, p1, p8}, Lcom/audible/hushpuppy/controller/AbstractController;-><init>(Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V

    .line 168
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 169
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/LibraryController;->legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 170
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/LibraryController;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    .line 171
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/LibraryController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 172
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/LibraryController;->ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    .line 173
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audioBookMetaDataProvider:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;

    .line 174
    new-instance p1, Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider;

    invoke-direct {p1}, Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/LibraryController;->syncDataProvider:Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider;

    .line 175
    iput-object p9, p0, Lcom/audible/hushpuppy/controller/LibraryController;->hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

    .line 176
    iput-object p10, p0, Lcom/audible/hushpuppy/controller/LibraryController;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    .line 177
    iput-object p11, p0, Lcom/audible/hushpuppy/controller/LibraryController;->platformSetting:Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

    .line 178
    iput-object p12, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audioDownloadedFileManager:Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

    .line 179
    iput-object p13, p0, Lcom/audible/hushpuppy/controller/LibraryController;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    .line 180
    iput-object p14, p0, Lcom/audible/hushpuppy/controller/LibraryController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 181
    invoke-virtual {p8, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private checkCurrentBookRelationshipChange(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z
    .locals 2

    .line 274
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/LibraryController;->isRelationshipForCurrentEbook(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LibraryController;->getRelationshipForCurrentEBook()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    .line 276
    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->equalsIgnoreTimeLastFetched(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Received updated relationship for current ebook."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setCurrentRelationship(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getRelationshipForCurrentEBook()Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getLastOpenedEBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 653
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "No ebook opened - Setting book to last opened EBook."

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getLastOpenedEBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 660
    :goto_0
    invoke-static {v0}, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->extractEBookInfoWithVersion(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/ebook/EBookInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getEBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/audible/hushpuppy/controller/LibraryController;->getRelationshipForEBook(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1

    .line 656
    :cond_2
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "No ebook loaded - cant get it\'s relationship."

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-object v1
.end method

.method private getRelationshipForEBook(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    .line 680
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;->getEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 681
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;->getEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private isRelationshipForCurrentEbook(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 623
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 627
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getLastOpenedEBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 632
    :cond_1
    invoke-static {v1}, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->extractEBookInfoWithVersion(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/ebook/EBookInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 633
    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getFormat()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 637
    :cond_2
    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getEBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 638
    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method private postRelationshipModifiedInStorageEvent(Lcom/audible/relationship/domain/Relationship;)V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    invoke-virtual {p1}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1, v1}, Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;->getEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    if-nez p1, :cond_0

    .line 407
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Relationship in RelationshipMappingModification not found in Database"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;

    invoke-direct {v1, p1}, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;-><init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private verifyLocalAudiobook(Lcom/audible/hushpuppy/common/relationship/IRelationship;Ljava/io/File;)V
    .locals 7

    .line 569
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getLocalAudiobookInfo(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 571
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "library service could not find audiobook info, constructing it using relationship. narrator will not be shown in chrome."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 572
    new-instance v0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;

    invoke-direct {v0, p1, p2}, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;-><init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;Ljava/io/File;)V

    .line 574
    :cond_0
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/LibraryController;->getSyncFile(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 576
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-nez v4, :cond_2

    goto :goto_1

    .line 586
    :cond_2
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/LibraryController;->syncDataProvider:Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v4

    invoke-interface {v4}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    invoke-interface {v4}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/audible/hushpuppy/sync/ThreadSafeReadAlongSyncDataProvider;->create(Ljava/io/File;Ljava/lang/String;)Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object v1

    invoke-direct {v2, p1, v0, v1}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileFoundEvent;-><init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;Lcom/audible/hushpuppy/sync/ISyncData;)V

    invoke-virtual {p2, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_4

    .line 579
    :cond_3
    :goto_1
    sget-object v5, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v3

    aput-object v0, v6, v2

    const/4 p2, 0x2

    aput-object v1, v6, p2

    const/4 p2, 0x3

    if-eqz v4, :cond_4

    const-string v1, "exists"

    goto :goto_2

    :cond_4
    const-string v1, "does not exist"

    :goto_2
    aput-object v1, v6, p2

    const-string p2, "audiobookFile %s info %s syncFile %s %s, local audiobook file not found"

    invoke-interface {v5, p2, v6}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-direct {v1, p1, v2, v4}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;-><init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    invoke-virtual {p2, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 582
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 583
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->pause()V

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public checkAudiobookAvailability(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 417
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;->isAudiobookPlaybackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Hushpuppy disabled via restriction apis"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 419
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-static {}, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->newHushpuppyDisabledEvent()Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 421
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/LibraryController;->getRelationshipForEBook(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p2

    .line 422
    iget-object p3, p0, Lcom/audible/hushpuppy/controller/LibraryController;->hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

    sget-object v0, Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;->LAST_FETCH_DEVICE_TIME_MS:Lcom/audible/hushpuppy/service/settings/HushpuppySettings$SettingName;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;->getLong(Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Name;Ljava/lang/Long;)Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;

    move-result-object p3

    invoke-interface {p3}, Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 427
    iget-object p3, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p3, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p3, p2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setCurrentRelationship(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    if-nez p2, :cond_1

    .line 429
    sget-object p2, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "No relationship found - Hushpuppy might be disabled for current eBook. Disabling HP and fetching companion mappings."

    invoke-interface {p2, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 430
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-static {}, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->newHushpuppyDisabledEvent()Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;

    move-result-object p3

    invoke-virtual {p2, p3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 431
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance p3, Lcom/audible/hushpuppy/common/event/relationship/RelationshipNotFoundEvent;

    invoke-direct {p3, p1}, Lcom/audible/hushpuppy/common/event/relationship/RelationshipNotFoundEvent;-><init>(Lcom/audible/mobile/domain/Asin;)V

    invoke-virtual {p2, p3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 434
    :cond_1
    invoke-interface {p2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 435
    iget-object p3, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->deleteSamplePair(Lcom/audible/mobile/domain/Asin;)Z

    .line 439
    :cond_2
    invoke-interface {p2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasSampleAudiobook()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 440
    iget-object p3, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p2}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->deletePair(Lcom/audible/mobile/domain/Asin;)Z

    .line 443
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/audible/hushpuppy/controller/LibraryController;->RELATIONSHIP_TIME_TO_LIVE_IN_MILLISECONDS:J

    sub-long/2addr v2, v4

    const/4 p3, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 444
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Expired relationship found for current eBook. Enabling HP and fetching companion mappings."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-static {p2}, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->newHushpuppyEnabledEvent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/relationship/RelationshipExpiredEvent;

    invoke-direct {v1, p1}, Lcom/audible/hushpuppy/common/event/relationship/RelationshipExpiredEvent;-><init>(Lcom/audible/mobile/domain/Asin;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 447
    invoke-direct {p0, p2, p3}, Lcom/audible/hushpuppy/controller/LibraryController;->verifyLocalAudiobook(Lcom/audible/hushpuppy/common/relationship/IRelationship;Ljava/io/File;)V

    goto :goto_0

    .line 449
    :cond_4
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Up-to-date relationship found for current ebook. Enabling HP."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 450
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-static {p2}, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->newHushpuppyEnabledEvent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 451
    invoke-direct {p0, p2, p3}, Lcom/audible/hushpuppy/controller/LibraryController;->verifyLocalAudiobook(Lcom/audible/hushpuppy/common/relationship/IRelationship;Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method public enable()V
    .locals 2

    .line 739
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->platformSetting:Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;->isBadgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audioBookMetaDataProvider:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;->loadCache()V

    .line 741
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object v0

    .line 742
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audioBookMetaDataProvider:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerAudioBookMetadataProvider(Lcom/amazon/kindle/krx/audio/IAudioBookMetadataProvider;)V

    :cond_0
    return-void
.end method

.method public getSyncFile(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Ljava/io/File;
    .locals 4

    .line 687
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating sync file for relationship "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;->checkAndUpdateDBScalingToggle()V

    .line 690
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    const-string v1, "SyncFile:"

    if-eqz v0, :cond_3

    .line 693
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audioDownloadedFileManager:Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;->getSyncFileAcr(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Lcom/audible/mobile/domain/ACR;

    move-result-object v0

    if-nez v0, :cond_0

    .line 696
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Sync file acr is null. Required for sync file. Returning null"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v2

    .line 700
    :cond_0
    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v2}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getDownloadedContentFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/audible/hushpuppy/common/audiobook/DownloadUtils;->getSyncFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audioDownloadedFileManager:Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;->getEbookGuid(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Lcom/audible/mobile/domain/GUID;

    move-result-object v0

    if-nez v0, :cond_2

    .line 704
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Ebook guid is null. Required for sample sync file. Returning null"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v2

    .line 708
    :cond_2
    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 709
    invoke-interface {v3}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getDownloadedContentFilePath()Ljava/lang/String;

    move-result-object v3

    .line 708
    invoke-static {v0, v2, v3}, Lcom/audible/hushpuppy/common/audiobook/DownloadUtils;->getSampleSyncFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 712
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 713
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 715
    :cond_3
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileName()Ljava/lang/String;

    move-result-object v0

    .line 717
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v3}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getDownloadedContentFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 721
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 724
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getLocalSyncFilePath(Lcom/audible/mobile/domain/Asin;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 725
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 726
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncFile From DB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    move-object v2, p1

    :cond_4
    return-object v2
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/ebook/EBookChangedEvent;)V
    .locals 2

    .line 294
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "received EBookChangedEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LibraryController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->extractEBookInfoWithVersion(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/ebook/EBookInfo;

    move-result-object p1

    .line 301
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Setting current EBook as last opened EBook in Model"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LibraryController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setLastOpenedEBook(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 303
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getEBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/audible/hushpuppy/controller/LibraryController;->checkAudiobookAvailability(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;)V
    .locals 2

    .line 464
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received EBookHushpuppyEnabledEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 467
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received EBookHushpuppyEnabledEvent, attachPlayerListener"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 468
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->attachPlayerListener()V

    goto :goto_0

    .line 470
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 471
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->pause()V

    .line 473
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received EBookHushpuppyDisabledEvent, detachPlayerListener"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 474
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->detachPlayerListener()V

    :goto_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 2

    .line 318
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController$1;->$SwitchMap$com$audible$hushpuppy$common$event$model$ModelChangedEvent$Property:[I

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 337
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->reset()V

    :cond_1
    return-void

    .line 323
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isAudiobookDownloading()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isAudioFileFound()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSyncData()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 328
    :cond_3
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasAudiobookAsin()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 329
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/audible/hushpuppy/controller/LibraryController;->verifyAudioFileAvailability(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;)V
    .locals 7

    .line 353
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Doing nothing. DB Scaling implementation is disabled."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 358
    :cond_0
    invoke-virtual {p1}, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;->getRelationshipMappingModification()Lcom/audible/relationship/domain/RelationshipMappingModification;

    move-result-object v0

    if-nez v0, :cond_1

    .line 360
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Relationship Modification is null"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    .line 365
    invoke-virtual {v0}, Lcom/audible/relationship/domain/RelationshipMappingModification;->getAddRelationship()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 367
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 368
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/relationship/domain/Relationship;

    .line 369
    sget-object v4, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;->ASIN_PAIR:Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    invoke-virtual {p1}, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;->getRelationshipModificationType()Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 370
    invoke-direct {p0, v3}, Lcom/audible/hushpuppy/controller/LibraryController;->postRelationshipModifiedInStorageEvent(Lcom/audible/relationship/domain/Relationship;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 372
    invoke-virtual {v3}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 373
    sget-object v4, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v5, "Relationship for current ebook has changed."

    invoke-interface {v4, v5}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 374
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/audible/hushpuppy/controller/LibraryController;->checkAudiobookAvailability(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_3
    iget-object v4, p0, Lcom/audible/hushpuppy/controller/LibraryController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/amazon/kindle/krx/library/ILibraryManager;->updateBookMetadata(Ljava/lang/String;Z)V

    goto :goto_0

    .line 380
    :cond_4
    invoke-virtual {v0}, Lcom/audible/relationship/domain/RelationshipMappingModification;->getDeleteRelationship()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 382
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 383
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/relationship/domain/Relationship;

    .line 384
    sget-object v3, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;->ASIN_PAIR:Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    invoke-virtual {p1}, Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent;->getRelationshipModificationType()Lcom/audible/relationship/event/RelationshipMappingUpdatedEvent$RelationshipMappingModificationType;

    move-result-object v4

    if-ne v3, v4, :cond_5

    .line 385
    invoke-direct {p0, v2}, Lcom/audible/hushpuppy/controller/LibraryController;->postRelationshipModifiedInStorageEvent(Lcom/audible/relationship/domain/Relationship;)V

    goto :goto_1

    .line 390
    :cond_6
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v1, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;->INSTANCE:Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;

    invoke-virtual {p1, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 392
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audioBookMetaDataProvider:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;->updateCache(Lcom/audible/relationship/domain/RelationshipMappingModification;)V

    return-void
.end method

.method public persistMappings(Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;)V
    .locals 5

    .line 187
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Doing nothing. DB Scaling implementation is enabled."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_6

    .line 193
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HP-AppStart: Received companion mapping adds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToAdd()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HP-AppStart: Received companion mapping deletes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToDelete()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToAdd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 201
    invoke-direct {p0, v1}, Lcom/audible/hushpuppy/controller/LibraryController;->checkCurrentBookRelationshipChange(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    move-result v2

    .line 205
    iget-object v3, p0, Lcom/audible/hushpuppy/controller/LibraryController;->legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    invoke-interface {v3, v1}, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;->updateRelationship(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    .line 206
    iget-object v3, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v4, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;

    invoke-direct {v4, v1}, Lcom/audible/hushpuppy/common/event/relationship/RelationshipModifiedInStorageEvent;-><init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    .line 208
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 210
    sget-object v2, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Relationship changed for current book %s"

    invoke-interface {v2, v4, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/audible/hushpuppy/controller/LibraryController;->checkAudiobookAvailability(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToDelete()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 217
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LibraryController;->legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    invoke-interface {v2, v1}, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;->deleteRelationship(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    goto :goto_1

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v1, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;->INSTANCE:Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audioBookMetaDataProvider:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToAdd()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;->updateCache(Ljava/util/List;)V

    .line 224
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToAdd()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 225
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 226
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LibraryController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v1

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/library/ILibraryManager;->updateBookMetadata(Ljava/lang/String;Z)V

    .line 227
    sget-object v1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hushpuppy updateBookMetadata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    return-void

    .line 196
    :cond_6
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "HP-AppStart: Received null companion mapping modifications"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public resetCache()V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audioBookMetaDataProvider:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;->loadCache()V

    return-void
.end method

.method public syncMappings(Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;)V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LibraryController;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Doing nothing. DB Scaling implementation is enabled."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 243
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HP-AppStart: Received companion mapping adds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToAdd()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 244
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HP-AppStart: Received companion mapping deletes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToDelete()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToAdd()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 253
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/LibraryController;->checkCurrentBookRelationshipChange(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    move-result v0

    goto :goto_0

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LibraryController;->legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/relationship/CompanionMappingModifications;->getRelationshipsToAdd()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;->syncRelationships(Ljava/util/Collection;)V

    if-eqz v0, :cond_2

    .line 259
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 261
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Relationship changed for current book %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/audible/hushpuppy/controller/LibraryController;->checkAudiobookAvailability(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LibraryController;->audioBookMetaDataProvider:Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/metadata/IHushpuppyAudiobookMetadataProvider;->loadCache()V

    .line 269
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    sget-object v0, Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;->INSTANCE:Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 246
    :cond_3
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "HP-AppStart: Received null companion mapping modifications"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public verifyAudioFileAvailability(Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Asin;)V
    .locals 3

    .line 503
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verifying audio file availability for sync ACR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 504
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LibraryController;->getRelationshipForCurrentEBook()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-nez v0, :cond_0

    .line 507
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Relationship is not matched for the current book, Hushpuppy is disabled"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 508
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-static {}, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->newHushpuppyDisabledEvent()Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 510
    :cond_0
    sget-object v1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Hushpuppy is enabled for current eBook"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 511
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    const-string v2, "Audiobook ASIN is matched, verifying local audiobook"

    if-eqz p2, :cond_1

    .line 512
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 513
    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/controller/LibraryController;->verifyLocalAudiobook(Lcom/audible/hushpuppy/common/relationship/IRelationship;Ljava/io/File;)V

    return-void

    .line 517
    :cond_1
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p2

    invoke-interface {p2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 519
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 520
    invoke-direct {p0, v0, v1}, Lcom/audible/hushpuppy/controller/LibraryController;->verifyLocalAudiobook(Lcom/audible/hushpuppy/common/relationship/IRelationship;Ljava/io/File;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public verifyAudioFileAvailability(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)V
    .locals 3

    .line 482
    sget-object v0, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verifying audio file availability for audiobook Asin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 483
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LibraryController;->getRelationshipForCurrentEBook()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-nez v0, :cond_0

    .line 486
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Relationship is not matched for the current book, Hushpuppy is disabled"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 487
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-static {}, Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;->newHushpuppyDisabledEvent()Lcom/audible/hushpuppy/common/event/enable/EBookHushpuppyEnabledEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 489
    :cond_0
    sget-object v1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Hushpuppy is enabled for current eBook"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 490
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 491
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Audiobook ASIN is matched, verifying local audiobook"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 492
    invoke-direct {p0, v0, p2}, Lcom/audible/hushpuppy/controller/LibraryController;->verifyLocalAudiobook(Lcom/audible/hushpuppy/common/relationship/IRelationship;Ljava/io/File;)V

    goto :goto_0

    .line 494
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/LibraryController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Hushpuppy is enabled for current eBook but the loaded audiobook does not match!"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
