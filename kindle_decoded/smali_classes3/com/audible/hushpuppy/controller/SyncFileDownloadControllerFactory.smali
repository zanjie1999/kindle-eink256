.class public final Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;
.super Ljava/lang/Object;
.source "SyncFileDownloadControllerFactory.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/ISyncFileDownloadControllerFactory;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final SYNC_FILE_DOWNLOAD_CONTROLLER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/audible/hushpuppy/controller/ISyncFileDownloadController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;->SYNC_FILE_DOWNLOAD_CONTROLLER_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/ILibraryController;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Audible Service cannot be NULL"

    .line 61
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Event Buss cannot be NULL"

    .line 62
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Library Controller cannot be NULL"

    .line 63
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 66
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;->eventBus:Lde/greenrobot/event/EventBus;

    .line 67
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    return-void
.end method


# virtual methods
.method public get(Lcom/audible/hushpuppy/common/relationship/IRelationship;I)Lcom/audible/hushpuppy/controller/ISyncFileDownloadController;
    .locals 9

    const-string v0, "Cannot create Sync file downloader class with NULL relationship"

    .line 74
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;->SYNC_FILE_DOWNLOAD_CONTROLLER_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    sget-object v1, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Creating a new SyncFileDonwloader class for ASIN: %s"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    sget-object v1, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;->SYNC_FILE_DOWNLOAD_CONTROLLER_MAP:Ljava/util/Map;

    new-instance v8, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    iget-object v5, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;->eventBus:Lde/greenrobot/event/EventBus;

    iget-object v6, p0, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;->libraryController:Lcom/audible/hushpuppy/controller/ILibraryController;

    move-object v2, v8

    move-object v4, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/audible/hushpuppy/controller/SyncFileDownloadController;-><init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/common/relationship/IRelationship;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/ILibraryController;I)V

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;->SYNC_FILE_DOWNLOAD_CONTROLLER_MAP:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController;

    return-object p1
.end method

.method public remove(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z
    .locals 1

    const-string v0, "Cannot remove Sync file downloader class with NULL relationship"

    .line 89
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getSyncFileACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    .line 92
    :goto_0
    sget-object v0, Lcom/audible/hushpuppy/controller/SyncFileDownloadControllerFactory;->SYNC_FILE_DOWNLOAD_CONTROLLER_MAP:Ljava/util/Map;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
