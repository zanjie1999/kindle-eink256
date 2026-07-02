.class public Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;
.super Ljava/lang/Object;
.source "AudiobookDownloadStatusCallback.java"

# interfaces
.implements Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;


# static fields
.field private static final DOWNLOAD_PROGRESS_PERCENTAGE:J = 0x5L

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private audiblePreferences:Lcom/audible/mobile/preferences/PreferenceStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/mobile/preferences/AudiblePreferenceKey;",
            ">;"
        }
    .end annotation
.end field

.field protected final mAsin:Lcom/audible/mobile/domain/Asin;

.field private final mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadProgressUI:Lcom/audible/android/kcp/player/DownloadProgressUI;

.field private final mEventBus:Lde/greenrobot/event/EventBus;

.field private volatile mIsReadyForPlaybackEventPublished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/player/DownloadProgressUI;Lcom/audible/android/kcp/download/AudioFileManager;)V
    .locals 1

    .line 53
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->eventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/player/DownloadProgressUI;Lcom/audible/android/kcp/download/AudioFileManager;Lde/greenrobot/event/EventBus;)V

    return-void
.end method

.method constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/player/DownloadProgressUI;Lcom/audible/android/kcp/download/AudioFileManager;Lde/greenrobot/event/EventBus;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    .line 60
    iput-object p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    .line 61
    iput-object p2, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mDownloadProgressUI:Lcom/audible/android/kcp/player/DownloadProgressUI;

    .line 63
    invoke-interface {p2}, Lcom/audible/android/kcp/player/DownloadProgressUI;->getUiContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mContext:Landroid/content/Context;

    .line 65
    iput-object p3, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    .line 67
    new-instance p2, Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;

    invoke-direct {p2, p1}, Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->audiblePreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    .line 69
    iput-object p4, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mEventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method private isDownloadAllowed()Z
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->audiblePreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v1, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->DOWNLOAD_NETWORK_PREFERENCE:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    sget-object v2, Lcom/audible/mobile/preferences/DownloadPreference;->WIFI_ONLY:Lcom/audible/mobile/preferences/DownloadPreference;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/audible/mobile/preferences/PreferenceStore;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/audible/mobile/preferences/DownloadPreference;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/preferences/DownloadPreference;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 167
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 169
    sget-object v2, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback$1;->$SwitchMap$com$audible$mobile$preferences$DownloadPreference:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 173
    :cond_0
    invoke-direct {p0, v1}, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->isWifiOrWAN(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0

    .line 171
    :cond_1
    invoke-direct {p0, v1}, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->isWifi(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method private isWAN(Landroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isWifi(Landroid/net/NetworkInfo;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWifiOrWAN(Landroid/net/NetworkInfo;)Z
    .locals 1

    .line 191
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->isWifi(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->isWAN(Landroid/net/NetworkInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

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


# virtual methods
.method public onDownloadCancelled()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mDownloadProgressUI:Lcom/audible/android/kcp/player/DownloadProgressUI;

    invoke-interface {v0}, Lcom/audible/android/kcp/player/DownloadProgressUI;->notifyDownloadCancelled()V

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    return-void
.end method

.method public onDownloadComplete(Ljava/io/File;)V
    .locals 3

    .line 118
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " File path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Download Completed for Asin: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mDownloadProgressUI:Lcom/audible/android/kcp/player/DownloadProgressUI;

    invoke-interface {v0, p1}, Lcom/audible/android/kcp/player/DownloadProgressUI;->notifyDownloadComplete(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    return-void
.end method

.method public onDownloadError(Lcom/audible/mobile/downloader/NetworkError;)V
    .locals 3

    .line 128
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Download Errored for Asin: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    sget v0, Lcom/amazon/kindle/hushpuppy/redding/R$string;->download_error_default:I

    .line 131
    invoke-direct {p0}, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->isDownloadAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mDownloadProgressUI:Lcom/audible/android/kcp/player/DownloadProgressUI;

    sget v0, Lcom/amazon/kindle/hushpuppy/redding/R$string;->download_error_no_internet_connection:I

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/player/DownloadProgressUI;->notifyDownloadError(I)V

    return-void

    .line 136
    :cond_0
    sget-object v1, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback$1;->$SwitchMap$com$audible$mobile$downloader$NetworkError:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    sget v0, Lcom/amazon/kindle/hushpuppy/redding/R$string;->download_error_server_connection:I

    goto :goto_0

    .line 138
    :cond_2
    sget v0, Lcom/amazon/kindle/hushpuppy/redding/R$string;->download_error_time_out:I

    .line 146
    :goto_0
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mDownloadProgressUI:Lcom/audible/android/kcp/player/DownloadProgressUI;

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/player/DownloadProgressUI;->notifyDownloadError(I)V

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    return-void
.end method

.method public onDownloadProgress(JJ)V
    .locals 3

    .line 97
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Download in progress for Asin: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mDownloadProgressUI:Lcom/audible/android/kcp/player/DownloadProgressUI;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/audible/android/kcp/player/DownloadProgressUI;->notifyDownloadProgress(JJ)V

    const-wide/16 v0, 0x64

    mul-long p1, p1, v0

    .line 100
    div-long/2addr p1, p3

    const-wide/16 p3, 0x5

    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    .line 102
    iget-boolean p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    if-nez p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object p2, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    sget-object p3, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {p1, p2, p3}, Lcom/audible/android/kcp/download/AudioFileManager;->getPartialFileLocation(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    goto :goto_0

    .line 108
    :cond_0
    iget-object p2, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance p3, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;

    iget-object p4, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-direct {p3, p4, p1}, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;-><init>(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)V

    invoke-virtual {p2, p3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 109
    sget-object p1, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "AudiobookReadyForPlayback event published"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onDownloadQueued()V
    .locals 3

    .line 75
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Download Queued for Asin: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mDownloadProgressUI:Lcom/audible/android/kcp/player/DownloadProgressUI;

    invoke-interface {v0}, Lcom/audible/android/kcp/player/DownloadProgressUI;->notifyDownloadQueued()V

    return-void
.end method

.method public onDownloadRemoved()V
    .locals 3

    .line 82
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Download Removed for Asin: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mDownloadProgressUI:Lcom/audible/android/kcp/player/DownloadProgressUI;

    invoke-interface {v0}, Lcom/audible/android/kcp/player/DownloadProgressUI;->notifyDownloadRemoved()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    return-void
.end method

.method public onDownloadStarted()V
    .locals 3

    .line 90
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Started for Asin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookDownloadStatusCallback;->mDownloadProgressUI:Lcom/audible/android/kcp/player/DownloadProgressUI;

    invoke-interface {v0}, Lcom/audible/android/kcp/player/DownloadProgressUI;->notifyDownloadStarted()V

    return-void
.end method
