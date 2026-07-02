.class public final Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/misc/ICallback;
.implements Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/common/misc/ICallback<",
        "Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;",
        ">;",
        "Lcom/audible/hushpuppy/controller/audible/download/manager/IDownloadManager;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audioDownloadedFileManager:Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

.field private downloadRetryManager:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

.field private final service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final syncFileNeededRelationshipsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            ">;"
        }
    .end annotation
.end field

.field private final syncFileRequestedAsins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/mobile/domain/Asin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 84
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    .line 85
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->eventBus:Lde/greenrobot/event/EventBus;

    .line 86
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->audioDownloadedFileManager:Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

    .line 87
    invoke-virtual {p3, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 89
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->syncFileNeededRelationshipsMap:Ljava/util/Map;

    .line 90
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->syncFileRequestedAsins:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->handleDownloadRequest(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    return-void
.end method

.method private downloadAudioFile(Lcom/audible/hushpuppy/common/relationship/IRelationship;Z)V
    .locals 4

    .line 193
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Downloading audio file with sync file \'%s\' for relationship %s"

    invoke-interface {v0, v2, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    .line 196
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 199
    sget-object p2, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    const-string v3, "Saving %s -> %s for download sync file later."

    invoke-interface {p2, v3, v2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->syncFileNeededRelationshipsMap:Ljava/util/Map;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_0
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 204
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Requesting download for full audio"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p2

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/hushpuppy/common/audiobook/DownloadFormatUtil;->getPreferredAudiobookDownloadFormat(Ljava/lang/String;)Lcom/audible/mobile/domain/Format;

    move-result-object v0

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->downloadAudiobook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/domain/Asin;)V

    goto :goto_0

    .line 207
    :cond_1
    sget-object p2, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Requesting download for sample audio"

    invoke-interface {p2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 208
    iget-object p2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    sget-object v1, Lcom/audible/mobile/domain/Format;->AAX_22_32:Lcom/audible/mobile/domain/Format;

    invoke-interface {p2, v0, p1, v1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->downloadSampleAudiobook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)V

    :goto_0
    return-void
.end method

.method private downloadContentAfterServiceConnection(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V
    .locals 3

    .line 143
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->validRelationship(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Invalid relationship. Returning"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    .line 152
    :cond_0
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;->titleIsInLibrary(Lcom/audible/mobile/domain/Asin;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASIN %s not present in the library, queueing request for retry"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->getDownloadRetryManager()Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    move-result-object v0

    new-instance v1, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;-><init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;->enqueueRelationshipDownloadRequest(Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;)Z

    return-void

    .line 160
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->postDownloadOnAsyncTask(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    return-void
.end method

.method private downloadSyncFile(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 4

    .line 214
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Downloading sync file for relationship %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->syncFileRequestedAsins:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Sync file download request for %s has already been sent. Do nothing."

    invoke-interface {p1, v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->syncFileRequestedAsins:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->audioDownloadedFileManager:Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

    invoke-interface {v1, p1}, Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;->getSyncFileAcr(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Lcom/audible/mobile/domain/ACR;

    move-result-object v1

    if-nez v1, :cond_1

    .line 226
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Sync file acr is null. Can\'t download sync file. Returning false"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadErrorEvent;

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to get sync file ACR."

    invoke-direct {v1, v0, v2}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadErrorEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 231
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync file acr is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->downloadSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V

    goto :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->audioDownloadedFileManager:Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/IAudioDownloadedFileManager;->getEbookGuid(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Lcom/audible/mobile/domain/GUID;

    move-result-object v0

    if-nez v0, :cond_3

    .line 236
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "ebook guid is null. Can\'t download sample sync file. Returning false"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    .line 240
    :cond_3
    sget-object v1, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ebook guid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->downloadSampleSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized getDownloadRetryManager()Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;
    .locals 3

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->downloadRetryManager:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {v0, p0, v1, v2}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;-><init>(Lcom/audible/hushpuppy/common/misc/ICallback;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->downloadRetryManager:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->downloadRetryManager:Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadRetryManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleDownloadRequest(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 182
    invoke-direct {p0, p1, p3}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->downloadAudioFile(Lcom/audible/hushpuppy/common/relationship/IRelationship;Z)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 187
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->downloadSyncFile(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    :cond_1
    return-void
.end method

.method private postDownloadOnAsyncTask(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V
    .locals 1

    .line 170
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager$1;-><init>(Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private validRelationship(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 165
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public downloadAudioContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1, v0, v1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->downloadContentAfterServiceConnection(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    return-void
.end method

.method public downloadRelatedContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 1

    const/4 v0, 0x1

    .line 96
    invoke-direct {p0, p1, v0, v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->downloadContentAfterServiceConnection(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    return-void
.end method

.method public downloadSyncContent(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 108
    invoke-direct {p0, p1, v0, v1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->downloadContentAfterServiceConnection(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    return-void
.end method

.method public execute(Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->validRelationship(Lcom/audible/hushpuppy/common/relationship/IRelationship;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "DownloadRetryManager has finished processing, attempting to trigger download now."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->getRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->isDownloadAudioFile()Z

    move-result v1

    .line 131
    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;->isDownloadSyncFile()Z

    move-result p1

    .line 130
    invoke-direct {p0, v0, v1, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->postDownloadOnAsyncTask(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    return-void

    .line 125
    :cond_1
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Either relationshipDownloadInfo is null or relationship is invalid. Returning"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->execute(Lcom/audible/hushpuppy/controller/audible/download/manager/service/RelationshipDownloadInfo;)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;)V
    .locals 2

    .line 266
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received AudioBookReadyForPlaybackEvent"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 267
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;->getAudioFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->syncFileNeededRelationshipsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/relationship/IRelationship;

    if-nez v0, :cond_1

    .line 274
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ASIN %s doesn\'t request sync file download before. Do nothing!"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 278
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Downloading sync file."

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 279
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->downloadSyncFile(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    return-void

    .line 268
    :cond_2
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Either event is null or asin or audiobook file is null"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;)V
    .locals 3

    .line 289
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received SyncDownloadSuccessfulEvent."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 290
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing %s from sync file tracking."

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->syncFileRequestedAsins:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 291
    :cond_1
    :goto_0
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/download/manager/DownloadManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Either event is null or asin is null"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public pauseEvents()V
    .locals 0

    return-void
.end method

.method public resumeEvents()V
    .locals 0

    return-void
.end method
