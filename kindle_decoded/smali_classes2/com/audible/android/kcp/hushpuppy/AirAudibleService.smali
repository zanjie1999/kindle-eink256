.class public Lcom/audible/android/kcp/hushpuppy/AirAudibleService;
.super Ljava/lang/Object;
.source "AirAudibleService.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private debugHelper:Lcom/audible/hushpuppy/common/debug/IAudibleDebugHelper;

.field private isFullAudio:Ljava/lang/Boolean;

.field private mAiRPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

.field private final mContentListener:Lcom/audible/android/kcp/library/AudiobookNewContentListener;

.field private final mDownloadManagerAdapter:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

.field private final mEventBus:Lde/greenrobot/event/EventBus;

.field private final mLibraryService:Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

.field private final mModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

.field private mSampleSyncFileDownloadClient:Lcom/audible/hushpuppy/service/network/common/ISampleSyncFileDownloadClient;

.field private mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/android/kcp/download/DownloadManagerAdapter;Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;Lcom/audible/android/kcp/companion/CompanionManager;Lcom/audible/android/kcp/library/NewAudiobookRegistrar;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;Lcom/audible/hushpuppy/service/network/common/ISampleSyncFileDownloadClient;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/IAudibleDebugHelper;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mDownloadManagerAdapter:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    .line 134
    iput-object p2, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mLibraryService:Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

    .line 135
    iput-object p3, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    .line 136
    iput-object p7, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 138
    new-instance p1, Lcom/audible/android/kcp/library/AudiobookNewContentListener;

    invoke-direct {p1, p4, p5}, Lcom/audible/android/kcp/library/AudiobookNewContentListener;-><init>(Lcom/audible/android/kcp/companion/CompanionManager;Lcom/audible/android/kcp/library/NewAudiobookRegistrar;)V

    iput-object p1, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mContentListener:Lcom/audible/android/kcp/library/AudiobookNewContentListener;

    .line 139
    invoke-virtual {p1, p6}, Lcom/audible/android/kcp/library/AudiobookNewContentListener;->register(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 140
    iput-object p8, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mAiRPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    .line 141
    iput-object p9, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mSampleSyncFileDownloadClient:Lcom/audible/hushpuppy/service/network/common/ISampleSyncFileDownloadClient;

    .line 142
    iput-object p10, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    .line 143
    iput-object p11, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->debugHelper:Lcom/audible/hushpuppy/common/debug/IAudibleDebugHelper;

    .line 144
    iput-object p12, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    return-void
.end method

.method private areFilesPartialFullEquivalent(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".partial"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 454
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private isNewFile(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/hushpuppy/controller/audible/service/PlayerException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isPartialFilePlaying(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/hushpuppy/controller/audible/service/PlayerException;
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->areFilesPartialFullEquivalent(Ljava/io/File;Ljava/io/File;)Z

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
.method public attachDownloadListener()V
    .locals 0

    return-void
.end method

.method public attachPlayerListener()V
    .locals 0

    return-void
.end method

.method public changeNarrationSpeed(F)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0, p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->setTempo(F)V

    return-void
.end method

.method public deletePair(Lcom/audible/mobile/domain/Asin;)Z
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mDownloadManagerAdapter:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    invoke-virtual {v0, p1}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->deleteAudiobook(Lcom/audible/mobile/domain/Asin;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mDownloadManagerAdapter:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    invoke-virtual {v0, p1}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->deleteSyncFile(Lcom/audible/mobile/domain/Asin;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteSamplePair(Lcom/audible/mobile/domain/Asin;)Z
    .locals 1

    .line 273
    sget-object p1, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "suppressed delete of sample pair because the service doesn\'t support it anymore"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public detachPlayerListener()V
    .locals 0

    return-void
.end method

.method public downloadAudiobook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/domain/Asin;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mDownloadManagerAdapter:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->downloadAudiobook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/domain/Asin;)V

    return-void
.end method

.method public downloadPair(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/domain/Asin;)V
    .locals 2

    .line 259
    sget-object v0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "downloadPair: downloading audiobook and sync file"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0, p1, p3, p4}, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->downloadAudiobook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/domain/Asin;)V

    .line 263
    invoke-virtual {p0, p1, p2}, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->downloadSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V

    return-void
.end method

.method public downloadSampleAudiobook(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Format;)V
    .locals 0

    .line 234
    sget-object p1, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "suppressed download of sample audio book because the service doesn\'t support it anymore"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public downloadSamplePair(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 268
    sget-object p1, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "suppressed download of sample pair because the service doesn\'t support it anymore"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public downloadSampleSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V
    .locals 0

    .line 248
    sget-object p1, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "suppressed download of sample sync file because the service doesn\'t support it anymore"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public downloadSampleSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/GUID;)V
    .locals 0

    .line 253
    sget-object p1, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "suppressed download of sample sync file because the service doesn\'t support it anymore"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public downloadSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V
    .locals 2

    .line 239
    sget-object v0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "downloadSyncFile: downloading sync file"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mDownloadManagerAdapter:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->downloadSyncFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;)V

    return-void
.end method

.method public getAudioBookFileSize(Lcom/audible/mobile/domain/Asin;)J
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mDownloadManagerAdapter:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    invoke-virtual {v0, p1}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->getAudioBookFileSize(Lcom/audible/mobile/domain/Asin;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentNarrationSpeed()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/hushpuppy/controller/audible/service/PlayerException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->getTempo()F

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/hushpuppy/controller/audible/service/PlayerException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDownloadedContentFilePath()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mLibraryService:Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

    invoke-virtual {v0}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->getDownloadedContentFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/hushpuppy/controller/audible/service/PlayerException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->getDuration()I

    move-result v0

    return v0
.end method

.method public getLocalAudiobookInfo(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mLibraryService:Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

    invoke-virtual {v0, p1, p2}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->getLocalAudiobookInfo(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mLibraryService:Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

    invoke-virtual {v0, p1, p2}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->getDownloadAudiobookInfo(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLocalSyncFilePath(Lcom/audible/mobile/domain/Asin;)Ljava/io/File;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mLibraryService:Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

    invoke-virtual {v0, p1}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->getLocalSyncFilePath(Lcom/audible/mobile/domain/Asin;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getMaxAvailablePosition()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/hushpuppy/controller/audible/service/PlayerException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->getMaxTimeAvailableMillis()I

    move-result v0

    return v0
.end method

.method public getPlayingAsin()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initAllServices(Lcom/audible/hushpuppy/common/misc/IVoidCallback;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mDownloadManagerAdapter:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    invoke-virtual {v0}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->forceClearAllDownloads()V

    .line 150
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/misc/IVoidCallback;->execute()V

    return-void
.end method

.method public isAsinLoaded(Ljava/lang/String;Z)Z
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->isFullAudio:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 400
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAudioBookNew(Lcom/audible/mobile/domain/Asin;)Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mDownloadManagerAdapter:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    invoke-virtual {v0, p1}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->isAudiobookNew(Lcom/audible/mobile/domain/Asin;)Z

    move-result p1

    return p1
.end method

.method public isAudioFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mDownloadManagerAdapter:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-virtual {v0, p1, v1}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->isDownloaded(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    move-result p1

    return p1
.end method

.method public isAudioFileDownloading(Lcom/audible/mobile/domain/Asin;)Z
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mDownloadManagerAdapter:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-virtual {v0, p1, v1}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->isDownloading(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    move-result p1

    return p1
.end method

.method public isAudioFileQueued(Lcom/audible/mobile/domain/Asin;)Z
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mDownloadManagerAdapter:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-virtual {v0, p1, v1}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->isDownloadQueued(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    move-result p1

    return p1
.end method

.method public isAudiobookPlayable(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isPlaying()Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isSyncFileDownloaded(Lcom/audible/mobile/domain/Asin;)Z
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mDownloadManagerAdapter:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-virtual {v0, p1, v1}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->isDownloaded(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    move-result p1

    return p1
.end method

.method public loadFile(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 6

    const-string v0, ".partial"

    const-string v1, "Loading file - failed to open "

    .line 308
    :try_start_0
    sget-object v2, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Player File: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v4}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0, p2}, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->isNewFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p2}, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->isPartialFilePlaying(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v2, p2, p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->openFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 318
    sget-object v3, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 320
    sget-object v2, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "file is not partial file, changing it to partial file and retry opening it."

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 321
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->openFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    sget-object v3, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :cond_1
    move v2, v0

    :cond_2
    if-eqz v2, :cond_5

    .line 331
    sget-object v0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading file - successfully opened "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 332
    invoke-static {p1}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 334
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "sample"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->getLocalAudiobookInfo(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object p2

    .line 336
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->isFullAudio:Ljava/lang/Boolean;

    .line 337
    sget-object p3, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Updating %s asin in the audio playermanager"

    invoke-interface {p3, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    iget-object p1, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mAiRPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->setAudiobookAsin(Lcom/audible/mobile/domain/Asin;)V

    .line 339
    iget-object p1, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance p3, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;

    invoke-interface {p2}, Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;->getNarrator()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_2

    .line 311
    :cond_4
    :goto_1
    sget-object p1, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "is not new file, or partial file is playing, not going to load the file!"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 342
    sget-object p2, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p3, "Error opening file"

    invoke-interface {p2, p3, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->start()V

    return-void
.end method

.method public seekTo(IZ)V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->seekTo(IZ)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {v0}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->stop()V

    return-void
.end method

.method public stopAndHidePlayerForAsin(Lcom/audible/mobile/domain/Asin;)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mAiRPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {v0}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 477
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 478
    iget-object p1, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->setShowPlayer(Z)V

    .line 479
    iget-object p1, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mAiRPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {p1}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->stop()V

    .line 480
    iget-object p1, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mAiRPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {p1}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->reset()V

    :cond_0
    return-void
.end method

.method public tryToCancel(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mDownloadManagerAdapter:Lcom/audible/android/kcp/download/DownloadManagerAdapter;

    invoke-virtual {p0}, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->getDownloadedContentFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/audible/android/kcp/download/DownloadManagerAdapter;->tryToCancel(Lcom/audible/hushpuppy/common/relationship/IRelationship;Ljava/lang/String;)V

    return-void
.end method

.method public updateLocalAudioFileLocation(Lcom/audible/mobile/domain/Asin;ZLjava/io/File;)I
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mLibraryService:Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->updateLocalAudioFileLocation(Lcom/audible/mobile/domain/Asin;ZLjava/io/File;)I

    move-result p1

    return p1
.end method

.method public updateLocalSyncFileLocation(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/audible/android/kcp/hushpuppy/AirAudibleService;->mLibraryService:Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;

    invoke-virtual {v0, p1, p2}, Lcom/audible/android/kcp/hushpuppy/library/CatalogFilesystemHushpuppyLibraryService;->updateLocalSyncFileLocation(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)I

    move-result p1

    return p1
.end method
