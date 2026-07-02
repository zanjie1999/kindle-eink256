.class public Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;
.super Ljava/lang/Object;
.source "SyncFileDownloadCallback.java"

# interfaces
.implements Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final acr:Lcom/audible/mobile/domain/ACR;

.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private final audioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

.field private final eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/ACR;Lcom/audible/android/kcp/download/AudioFileManager;Lde/greenrobot/event/EventBus;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "asin can\'t be null!"

    .line 39
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "acr can\'t be null!"

    .line 40
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "audioFileManager can\'t be null!"

    .line 41
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "eventBus can\'t be null!"

    .line 42
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->asin:Lcom/audible/mobile/domain/Asin;

    .line 45
    iput-object p2, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->acr:Lcom/audible/mobile/domain/ACR;

    .line 46
    iput-object p3, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->audioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    .line 47
    iput-object p4, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method public onDownloadCancelled()V
    .locals 4

    .line 96
    sget-object v0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sync file download \'cancelled\' ASIN: %s, ACR: %s"

    invoke-interface {v0, v3, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->audioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->asin:Lcom/audible/mobile/domain/Asin;

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    return-void
.end method

.method public onDownloadComplete(Ljava/io/File;)V
    .locals 4

    if-nez p1, :cond_0

    .line 72
    sget-object p1, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Sync file download is completed but file is null!"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->audioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->asin:Lcom/audible/mobile/domain/Asin;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {p1, v0, v1, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    return-void

    .line 77
    :cond_0
    sget-object v0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Sync file download \'complete\' ASIN: %s, ACR: %s, File: %s"

    invoke-interface {v0, p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookSyncFile:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->SUCCESS:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 80
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->audioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->asin:Lcom/audible/mobile/domain/Asin;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {p1, v0, v1, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    .line 81
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-direct {v0, v1, v2}, Lcom/audible/hushpuppy/common/event/servicescallback/SyncDownloadSuccessfulEvent;-><init>(Ljava/lang/String;Lcom/audible/mobile/domain/Asin;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadError(Lcom/audible/mobile/downloader/NetworkError;)V
    .locals 4

    .line 87
    sget-object v0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sync file download \'error\' ASIN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ACR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", NetworkError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/mobile/downloader/NetworkError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadAudiobookSyncFile:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->ERROR:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 90
    iget-object p1, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->audioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->asin:Lcom/audible/mobile/domain/Asin;

    sget-object v1, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {p1, v0, v1, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    return-void
.end method

.method public onDownloadProgress(JJ)V
    .locals 0

    .line 65
    sget-object p1, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object p2, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {p2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-interface {p3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Sync file download \'progress\' ASIN: %s, ACR: %s"

    invoke-interface {p1, p4, p2, p3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadQueued()V
    .locals 4

    .line 53
    sget-object v0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sync file download \'queued\' ASIN: %s, ACR: %s"

    invoke-interface {v0, v3, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloadRemoved()V
    .locals 4

    .line 103
    sget-object v0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sync file download \'removed\' ASIN: %s, ACR: %s"

    invoke-interface {v0, v3, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->audioFileManager:Lcom/audible/android/kcp/download/AudioFileManager;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->asin:Lcom/audible/mobile/domain/Asin;

    sget-object v2, Lcom/audible/android/kcp/download/receiver/AirDownloadType;->SYNC_FILE:Lcom/audible/android/kcp/download/receiver/AirDownloadType;

    invoke-interface {v0, v1, v2, p0}, Lcom/audible/android/kcp/download/AudioFileManager;->unregisterDownloadStatusCallback(Lcom/audible/mobile/domain/Asin;Lcom/audible/android/kcp/download/receiver/AirDownloadType;Lcom/audible/android/kcp/download/callback/DownloadStatusCallback;)V

    return-void
.end method

.method public onDownloadStarted()V
    .locals 4

    .line 59
    sget-object v0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/android/kcp/download/callback/SyncFileDownloadCallback;->acr:Lcom/audible/mobile/domain/ACR;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sync file download \'started\' ASIN: %s, ACR: %s"

    invoke-interface {v0, v3, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
