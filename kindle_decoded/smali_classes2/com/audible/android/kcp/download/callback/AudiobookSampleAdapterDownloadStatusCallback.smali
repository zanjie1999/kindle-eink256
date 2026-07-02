.class public Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;
.super Ljava/lang/Object;
.source "AudiobookSampleAdapterDownloadStatusCallback.java"

# interfaces
.implements Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;


# static fields
.field private static final DOWNLOAD_PROGRESS_PERCENTAGE:J = 0x5L

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field protected final mAsin:Lcom/audible/mobile/domain/Asin;

.field private final mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

.field private final mEventBus:Lde/greenrobot/event/EventBus;

.field private mIsReadyForPlaybackEventPublished:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/AudioFileManager;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    .line 44
    iput-object p2, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    .line 45
    iput-object p3, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mEventBus:Lde/greenrobot/event/EventBus;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    return-void
.end method


# virtual methods
.method public onDownloadCancelled()V
    .locals 3

    .line 120
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onDownloadCancelled: unregister callback"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SAMPLE_AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    return-void
.end method

.method public onDownloadComplete(Ljava/io/File;)V
    .locals 3

    .line 101
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadComplete: unregister callback and post "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadPlayableEvent;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadSample:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->SUCCESS:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 104
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SAMPLE_AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    .line 105
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadPlayableEvent;

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/audible/hushpuppy/common/event/servicescallback/DownloadPlayableEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadError(Lcom/audible/mobile/downloader/NetworkError;)V
    .locals 4

    .line 111
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download Errored for Asin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/downloader/NetworkError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadSample:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->ERROR:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 114
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SAMPLE_AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {p1, v0, v1, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    return-void
.end method

.method public onDownloadProgress(JJ)V
    .locals 3

    .line 77
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadProgress: download in progress bytesDownloaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", totalBytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    mul-long p1, p1, v0

    .line 79
    div-long/2addr p1, p3

    const-wide/16 p3, 0x5

    cmp-long v0, p1, p3

    if-ltz v0, :cond_2

    .line 81
    iget-boolean p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mIsReadyForPlaybackEventPublished:Z

    .line 86
    const-class p2, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    .line 88
    iget-object p3, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object p4, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    sget-object v0, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SAMPLE_AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {p3, p4, v0}, Lcom/audible/android/kcp/download/AudioFileManager;->getPartialFileLocation(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;)Ljava/io/File;

    move-result-object p3

    const/4 p4, 0x0

    if-nez p3, :cond_1

    .line 90
    sget-object p3, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array p1, p1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadProgress: did not publish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (getPartialFileLocation is null)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p4

    invoke-interface {p3, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    invoke-direct {v1, v2, p3}, Lcom/audible/hushpuppy/common/event/player/AudioBookReadyForPlaybackEvent;-><init>(Lcom/audible/mobile/domain/Asin;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 95
    sget-object p3, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array p1, p1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadProgress: published "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p4

    invoke-interface {p3, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDownloadQueued()V
    .locals 2

    .line 53
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onDownloadQueued: nothing to do"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadRemoved()V
    .locals 3

    .line 61
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onDownloadRemoved: unregister callback"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mAudioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->mAsin:Lcom/audible/mobile/domain/Asin;

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SAMPLE_AUDIOBOOK:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    return-void
.end method

.method public onDownloadStarted()V
    .locals 2

    .line 69
    sget-object v0, Lcom/audible/android/kcp/download/callback/AudiobookSampleAdapterDownloadStatusCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onDownloadStarted: nothing to do"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-void
.end method
