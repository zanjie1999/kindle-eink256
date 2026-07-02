.class public Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;
.super Lcom/amazon/kindle/krx/sdcard/librarytransfer/BaseContentTransferParticipant;
.source "AirContentTransferParticipant.java"

# interfaces
.implements Lcom/amazon/kindle/krx/sdcard/librarytransfer/IContentTransferParticipant;


# instance fields
.field private asinToAudioFileCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/audible/mobile/domain/Asin;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private asinToSyncFileCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/audible/mobile/domain/Asin;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private bookToRelationshipCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/audible/hushpuppy/common/relationship/IRelationship;",
            ">;"
        }
    .end annotation
.end field

.field private final debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private final hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

.field private final legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

.field private final service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/amazon/kindle/krx/sdcard/librarytransfer/BaseContentTransferParticipant;-><init>()V

    .line 36
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->legacyHushpuppyStorage()Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 37
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->hushpuppyStorage()Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    .line 38
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->audibleDebugHelper()Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 39
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->audibleService()Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->bookToRelationshipCache:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->asinToAudioFileCache:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->asinToSyncFileCache:Ljava/util/Map;

    return-void
.end method

.method private getSizeToTransfer(Lcom/audible/hushpuppy/common/relationship/IRelationship;Ljava/io/File;)J
    .locals 5

    .line 141
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 142
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result p1

    invoke-direct {p0, v0, p2, p1}, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->getTransferableAudioFile(Lcom/audible/mobile/domain/Asin;Ljava/io/File;Z)Ljava/io/File;

    move-result-object p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_1

    .line 146
    iget-object v3, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->asinToAudioFileCache:Ljava/util/Map;

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 149
    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->getTransferableSyncFile(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    iget-object p2, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->asinToSyncFileCache:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide p1

    add-long/2addr v3, p1

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->asinToSyncFileCache:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-wide v1, v3

    goto :goto_1

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->asinToAudioFileCache:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object p1, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->asinToSyncFileCache:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-wide v1
.end method

.method private getTransferableAudioFile(Lcom/audible/mobile/domain/Asin;Ljava/io/File;Z)Ljava/io/File;
    .locals 1

    if-eqz p3, :cond_0

    .line 115
    iget-object v0, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAudioFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0, p1, p3}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getLocalAudiobookInfo(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 118
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;->getAudioFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 120
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTransferableSyncFile(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isSyncFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getLocalSyncFilePath(Lcom/audible/mobile/domain/Asin;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private transferAudioFile(Lcom/audible/mobile/domain/Asin;Ljava/io/File;Z)I
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->asinToAudioFileCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 82
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 85
    iget-object p2, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p2, p1, p3, v1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->updateLocalAudioFileLocation(Lcom/audible/mobile/domain/Asin;ZLjava/io/File;)I

    move-result p2

    .line 86
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 89
    :catch_0
    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 92
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->asinToAudioFileCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method private transferSyncFile(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)I
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->asinToSyncFileCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 102
    iget-object p2, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p2, p1, v1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->updateLocalSyncFileLocation(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)I

    move-result p2

    .line 103
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 106
    :catch_0
    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 109
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->asinToSyncFileCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public estimateTransfer(Lcom/amazon/kindle/krx/content/IBook;Ljava/io/File;)Lcom/amazon/kindle/krx/sdcard/librarytransfer/ContentTransferData;
    .locals 5

    .line 47
    invoke-static {p1}, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->extractEBookInfoWithVersion(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/ebook/EBookInfo;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    .line 50
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;->getEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->legacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 51
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;->getEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 54
    invoke-direct {p0, v0, p2}, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->getSizeToTransfer(Lcom/audible/hushpuppy/common/relationship/IRelationship;Ljava/io/File;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_1

    .line 56
    iget-object p2, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->bookToRelationshipCache:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance p1, Lcom/amazon/kindle/krx/sdcard/librarytransfer/ContentTransferData;

    invoke-direct {p1, v1, v2}, Lcom/amazon/kindle/krx/sdcard/librarytransfer/ContentTransferData;-><init>(J)V

    return-object p1

    .line 60
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->bookToRelationshipCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public executeTransfer(Lcom/amazon/kindle/krx/content/IBook;Ljava/io/File;)Z
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->bookToRelationshipCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/relationship/IRelationship;

    .line 67
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    .line 68
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v3}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getDownloadedContentFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 69
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->service:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p2, v1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->stopAndHidePlayerForAsin(Lcom/audible/mobile/domain/Asin;)V

    .line 72
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result p2

    invoke-direct {p0, v1, v3, p2}, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->transferAudioFile(Lcom/audible/mobile/domain/Asin;Ljava/io/File;Z)I

    move-result p2

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 73
    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->transferSyncFile(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 75
    :goto_1
    iget-object v3, p0, Lcom/amazon/kindle/contenttransfer/AirContentTransferParticipant;->bookToRelationshipCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method
