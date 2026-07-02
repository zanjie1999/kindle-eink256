.class public Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;
.super Ljava/lang/Object;
.source "AudiobookAdapterDownloadStatusCallback.java"

# interfaces
.implements Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;


# static fields
.field private static final DOWNLOAD_PROGRESS_PERCENTAGE:J = 0x5L

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field protected final mAsin:Lcom/audible/mobile/domain/Asin;

.field private final mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

.field private final mEventBus:Lde/greenrobot/event/EventBus;

.field private volatile mIsReadyForPlaybackEventPublished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/AudioFileManager;Lde/greenrobot/event/EventBus;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    .line 56
    iput-object p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    .line 57
    iput-object p2, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    .line 58
    iput-object p3, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mEventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method public onDownloadCancelled()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    .line 134
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadCancelledEvent;

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadCancelledEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    return-void
.end method

.method public onDownloadComplete(Ljava/io/File;)V
    .locals 4

    .line 109
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Download Completed for Asin: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->SUCCESS:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 112
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    .line 113
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadStateEvent;

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/audible/mobile/download/service/DownloadingInfo$State;->Stopped:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    invoke-direct {v1, v2, v3}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadStateEvent;-><init>(Ljava/lang/String;Lcom/audible/mobile/download/service/DownloadingInfo$State;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Posting  AudioDownloadSuccessfulEvent, file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/AudioDownloadSuccessfulEvent;

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/audible/hushpuppy/common/event/servicescallback/AudioDownloadSuccessfulEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    return-void
.end method

.method public onDownloadError(Lcom/audible/mobile/downloader/NetworkError;)V
    .locals 4

    .line 122
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download Errored for Asin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/downloader/NetworkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobook:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->ERROR:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 125
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    .line 126
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadErrorEvent;

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/audible/mobile/downloader/NetworkError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadErrorEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 127
    iput-boolean v3, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    return-void
.end method

.method public onDownloadProgress(JJ)V
    .locals 9

    .line 87
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Download in progress for Asin: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v8, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/audible/mobile/download/service/DownloadingInfo$State;->Active:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    move-object v1, v8

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;-><init>(Ljava/lang/String;JJLcom/audible/mobile/download/service/DownloadingInfo$State;)V

    invoke-virtual {v0, v8}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    const-wide/16 v0, 0x64

    mul-long p1, p1, v0

    .line 91
    div-long/2addr p1, p3

    const-wide/16 p3, 0x5

    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    .line 93
    iget-boolean p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    if-nez p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object p2, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    sget-object p3, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {p1, p2, p3}, Lcom/audible/android/kcp/download/AudioFileManager;->getPartialFileLocation(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    goto :goto_0

    .line 99
    :cond_0
    iget-object p2, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance p3, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadPlayableEvent;

    iget-object p4, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {p4}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadPlayableEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 100
    sget-object p1, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "onReadyForPlayback invoked"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onDownloadQueued()V
    .locals 3

    .line 64
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Download Queued for Asin: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadAddedEvent;

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadAddedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadRemoved()V
    .locals 3

    .line 71
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Download Removed for Asin: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    .line 73
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadCancelledEvent;

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadCancelledEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    return-void
.end method

.method public onDownloadStarted()V
    .locals 9

    .line 80
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Started for Asin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v8, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/audible/mobile/download/service/DownloadingInfo$State;->Active:Lcom/audible/mobile/download/service/DownloadingInfo$State;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadProgressEvent;-><init>(Ljava/lang/String;JJLcom/audible/mobile/download/service/DownloadingInfo$State;)V

    invoke-virtual {v0, v8}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
