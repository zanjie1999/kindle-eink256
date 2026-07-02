.class public final Lcom/audible/android/kcp/AirAudioDeletionHandler;
.super Ljava/lang/Object;
.source "AirAudioDeletionHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;
    }
.end annotation


# instance fields
.field private final debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private final mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

.field private final mContext:Landroid/content/Context;

.field private final mCoverArtManager:Lcom/audible/android/kcp/coverart/CoverArtManager;

.field private final mErrorStorage:Lcom/audible/android/kcp/download/DownloadErrorStorage;

.field private final mEventBus:Lde/greenrobot/event/EventBus;

.field private final mHushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

.field private mLibraryAudiobookDownloadStatusCallback:Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;

.field private final mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private final mNewAudiobookRegistrar:Lcom/audible/android/kcp/library/NewAudiobookRegistrar;

.field private final mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

.field private final mSyncUpdater:Lcom/audible/android/kcp/sync/SynchronizationUpdater;

.field private final mhushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

.field private final mlegacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

.field private final mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/write/HushpuppyModel;Lcom/audible/android/kcp/download/AudioFileManager;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;Lcom/audible/android/kcp/sync/SynchronizationUpdater;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/android/kcp/library/NewAudiobookRegistrar;Lcom/audible/android/kcp/coverart/CoverArtManager;Lcom/audible/android/kcp/download/DownloadErrorStorage;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mContext:Landroid/content/Context;

    .line 79
    iput-object p3, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    .line 80
    iput-object p5, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mSyncUpdater:Lcom/audible/android/kcp/sync/SynchronizationUpdater;

    .line 81
    iput-object p4, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    .line 82
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    .line 83
    iput-object p6, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mlegacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 84
    iput-object p7, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mhushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    .line 85
    iput-object p8, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mNewAudiobookRegistrar:Lcom/audible/android/kcp/library/NewAudiobookRegistrar;

    .line 86
    iput-object p9, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mCoverArtManager:Lcom/audible/android/kcp/coverart/CoverArtManager;

    .line 87
    iput-object p10, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mErrorStorage:Lcom/audible/android/kcp/download/DownloadErrorStorage;

    .line 88
    iput-object p2, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mHushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    .line 89
    iput-object p11, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 90
    iput-object p12, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    .line 91
    iput-object p13, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/android/kcp/AirAudioDeletionHandler;)Lcom/amazon/kindle/krx/library/ILibraryManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mLibraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/android/kcp/AirAudioDeletionHandler;Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AirAudioDeletionHandler;->cancelAudiobookDownload(Lcom/audible/mobile/domain/Asin;)V

    return-void
.end method

.method static synthetic access$200(Lcom/audible/android/kcp/AirAudioDeletionHandler;Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AirAudioDeletionHandler;->unregisterDownloadStatusUpdates(Lcom/audible/mobile/domain/Asin;)V

    return-void
.end method

.method private cancelAudiobookDownload(Lcom/audible/mobile/domain/Asin;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, p1, v1}, Lcom/audible/android/kcp/download/AudioFileManager;->cancelDownload(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    .line 218
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, p1, v1}, Lcom/audible/android/kcp/download/AudioFileManager;->cancelDownload(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    return-void
.end method

.method private deleteDownloadedAudiobook(Lcom/audible/mobile/domain/Asin;)V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mHushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasAudiobookAsin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AirAudioDeletionHandler;->resetPlayerBeforeDeletion(Lcom/audible/mobile/domain/Asin;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->clearPlayerNotification(Landroid/content/Context;)V

    .line 184
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, p1, v1}, Lcom/audible/android/kcp/download/AudioFileManager;->deleteFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    .line 185
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, p1, v1}, Lcom/audible/android/kcp/download/AudioFileManager;->deleteFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    .line 186
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mNewAudiobookRegistrar:Lcom/audible/android/kcp/library/NewAudiobookRegistrar;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/android/kcp/library/NewAudiobookRegistrar;->removeAudiobook(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->AUDIO_FILE_DELETED:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-direct {v1, v2, p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;-><init>(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AirAudioDeletionHandler;->unregisterDownloadStatusUpdates(Lcom/audible/mobile/domain/Asin;)V

    return-void
.end method

.method private getRelationshipForCurrentEBook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;
    .locals 3

    .line 138
    invoke-static {p1}, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->extractEBookInfoWithoutVersion(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/ebook/EBookInfo;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;->checkAndUpdateDBScalingToggle()V

    .line 140
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isDBScalingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mhushpuppyStorage:Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;

    .line 141
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getEBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;->getEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mlegacyHushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 142
    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getEBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;->getEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private handleAudiobookDeleteOnEbookDelete(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;)V
    .locals 2

    .line 131
    new-instance v0, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;

    invoke-direct {v0, p0, p2, p1}, Lcom/audible/android/kcp/AirAudioDeletionHandler$DeletionDownloadStatusCallback;-><init>(Lcom/audible/android/kcp/AirAudioDeletionHandler;Ljava/lang/String;Lcom/audible/mobile/domain/Asin;)V

    iput-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mLibraryAudiobookDownloadStatusCallback:Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;

    .line 132
    iget-object p2, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {p2, p1, v1, v0}, Lcom/audible/android/kcp/download/AudioFileManager;->registerDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AirAudioDeletionHandler;->handleCompanionAudiobookDelete(Lcom/audible/mobile/domain/Asin;)V

    return-void
.end method

.method private handleCompanionAudiobookDelete(Lcom/audible/mobile/domain/Asin;)V
    .locals 2

    .line 146
    sget-object v0, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    if-eq p1, v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mCoverArtManager:Lcom/audible/android/kcp/coverart/CoverArtManager;

    invoke-interface {v0, p1}, Lcom/audible/android/kcp/coverart/CoverArtManager;->deleteCoverArt(Lcom/audible/mobile/domain/Asin;)Z

    .line 149
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mErrorStorage:Lcom/audible/android/kcp/download/DownloadErrorStorage;

    invoke-virtual {v0, p1}, Lcom/audible/android/kcp/download/DownloadErrorStorage;->removeFailedAudiobook(Lcom/audible/mobile/domain/Asin;)V

    .line 151
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, p1, v1}, Lcom/audible/android/kcp/download/AudioFileManager;->getDownloadStatus(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Lcom/audible/mobile/downloader/DownloadStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 154
    sget-object v1, Lcom/audible/android/kcp/AirAudioDeletionHandler$1;->$SwitchMap$com$audible$mobile$downloader$DownloadStatus:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AirAudioDeletionHandler;->cancelAudiobookDownload(Lcom/audible/mobile/domain/Asin;)V

    .line 161
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AirAudioDeletionHandler;->deleteDownloadedAudiobook(Lcom/audible/mobile/domain/Asin;)V

    .line 164
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->clearAudioDownloadNotification(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;)V

    :cond_2
    return-void
.end method

.method private resetPlayerBeforeDeletion(Lcom/audible/mobile/domain/Asin;)V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mHushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {v1}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->getPlayerState()Lcom/audible/mobile/player/State;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 203
    sget-object v2, Lcom/audible/mobile/player/State;->STARTED:Lcom/audible/mobile/player/State;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/audible/mobile/player/State;->PAUSED:Lcom/audible/mobile/player/State;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {p1}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->stop()V

    .line 206
    iget-object p1, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {p1}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->reset()V

    :cond_1
    return-void
.end method

.method private unregisterDownloadStatusUpdates(Lcom/audible/mobile/domain/Asin;)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    iget-object v2, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mLibraryAudiobookDownloadStatusCallback:Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;

    invoke-interface {v0, p1, v1, v2}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    return-void
.end method


# virtual methods
.method public getDownloadProgress(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler$DownloadProgress;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onAudioBookDelete(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    .line 106
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/AirAudioDeletionHandler;->getRelationshipForCurrentEBook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 115
    :cond_1
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    .line 117
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasSampleAudiobook()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SAMPLE_AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2}, Lcom/audible/android/kcp/download/AudioFileManager;->deleteFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    .line 119
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SAMPLE_SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2}, Lcom/audible/android/kcp/download/AudioFileManager;->deleteFile(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Z

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mHushpuppyModel:Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isAudiobookEnabled(Lcom/audible/mobile/domain/Asin;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {v0}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->stop()V

    .line 125
    iget-object v0, p0, Lcom/audible/android/kcp/AirAudioDeletionHandler;->mSyncUpdater:Lcom/audible/android/kcp/sync/SynchronizationUpdater;

    sget-object v2, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->WHISPERSYNC_DELETE_OPENED_AUDIOBOOK:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, p1, v2}, Lcom/audible/android/kcp/sync/SynchronizationUpdater;->syncCurrentAudiobookIfPlaying(Lcom/amazon/kindle/krx/content/IBook;Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    .line 127
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/audible/android/kcp/AirAudioDeletionHandler;->handleAudiobookDeleteOnEbookDelete(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;)V

    return-void
.end method
