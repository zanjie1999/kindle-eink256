.class public abstract Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;
.super Ljava/lang/Object;
.source "AssetDownloadCompleteHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.ftue.assets.AssetDownloadCompleteHandler"


# instance fields
.field private final assetFileHelper:Lcom/amazon/kedu/ftue/assets/AssetFileHelper;

.field private final assets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/ftue/assets/Asset;",
            ">;>;"
        }
    .end annotation
.end field

.field private downloadAttempts:I

.field private final fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

.field private volatile hasStarted:Z

.field private manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

.field private volatile processedCount:I

.field private syncStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kedu/ftue/assets/IFileProvider;Lcom/amazon/kedu/ftue/assets/AssetFileHelper;Lcom/amazon/kedu/ftue/assets/AssetManifest;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->processedCount:I

    .line 24
    iput v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->downloadAttempts:I

    .line 36
    iput-object p3, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    .line 37
    iput-object p1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    .line 38
    iput-object p2, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->assetFileHelper:Lcom/amazon/kedu/ftue/assets/AssetFileHelper;

    .line 39
    iput-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->hasStarted:Z

    .line 40
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->assets:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->values()[Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object p1

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object p3, p1, v0

    .line 43
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->assets:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onAllDownloadComplete()V
    .locals 7

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->syncStartTime:J

    sub-long/2addr v0, v2

    .line 131
    iget-object v2, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->assets:Ljava/util/Map;

    sget-object v3, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 132
    sget-object v3, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    .line 133
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v4

    .line 135
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->processedCount:I

    if-ne v5, v6, :cond_1

    .line 137
    sget-object v5, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->TAG:Ljava/lang/String;

    const-string v6, "Unpacking assets..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v5, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-direct {p0, v5, v2}, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->unpackAssets(Lcom/amazon/kedu/ftue/assets/AssetManifest;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 141
    sget-object v3, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->TAG:Ljava/lang/String;

    const-string v6, "Updating Manifest with new assets..."

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v3, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-virtual {v3}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getAssets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    sget-object v3, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    .line 145
    :cond_0
    sget-object v5, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOAD_SYNC_ATTEMPTS_REQUIRED:Lcom/amazon/kedu/ftue/metrics/Metric;

    iget v6, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->downloadAttempts:I

    invoke-virtual {v4, v5, v6}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    goto :goto_0

    .line 149
    :cond_1
    sget-object v5, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not all assets downloaded successfully, not unpacking"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    sget-object v5, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_SUCCESS:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v5, v2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    .line 153
    sget-object v2, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_FAILURE:Lcom/amazon/kedu/ftue/metrics/Metric;

    iget-object v5, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->assets:Ljava/util/Map;

    sget-object v6, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    .line 154
    sget-object v2, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_SYNC_DURATION:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v4, v2, v0, v1}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportTimerMetric(Lcom/amazon/kedu/ftue/metrics/Metric;J)V

    .line 156
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-virtual {p0, v3, v0}, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->onDone(Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;Lcom/amazon/kedu/ftue/assets/AssetManifest;)V

    return-void
.end method

.method private unpackAssets(Lcom/amazon/kedu/ftue/assets/AssetManifest;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kedu/ftue/assets/AssetManifest;",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/ftue/assets/Asset;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/ftue/assets/Asset;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getVersionDirectory(I)Ljava/io/File;

    move-result-object p1

    .line 171
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v1

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    sget-object p1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK_FAILURE:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v1, p1}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricEvent(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    return-object v3

    .line 178
    :cond_0
    sget-object v2, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v1, v2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->startMetricTimer(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    const/4 v2, 0x0

    .line 182
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kedu/ftue/assets/Asset;

    .line 184
    sget-object v5, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unpacking "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/amazon/kedu/ftue/assets/Asset;->getLocalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v5, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    iget-object v6, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v6}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getAssetDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/amazon/kedu/ftue/assets/Asset;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :try_start_1
    iget-object v5, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->assetFileHelper:Lcom/amazon/kedu/ftue/assets/AssetFileHelper;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/amazon/kedu/ftue/assets/AssetFileHelper;->unpackZip(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 194
    :try_start_2
    sget-object v5, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK_INVALID:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v1, v5}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricEvent(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    .line 195
    sget-object v5, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure unpacking assets: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_4

    .line 198
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_3

    .line 204
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 207
    iget-object v6, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v6}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    .line 209
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 211
    :cond_2
    new-instance v6, Lcom/amazon/kedu/ftue/assets/ExtractedAsset;

    invoke-direct {v6, v5}, Lcom/amazon/kedu/ftue/assets/ExtractedAsset;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 200
    :cond_4
    :goto_3
    sget-object p1, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "unpacking failed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    sget-object p1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK_SUCCESS:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v1, p1, v2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    .line 219
    sget-object p1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v1, p1}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->stopMetricTimer(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    return-object v3

    .line 218
    :cond_5
    sget-object p1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK_SUCCESS:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v1, p1, v2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    .line 219
    sget-object p1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v1, p1}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->stopMetricTimer(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 218
    sget-object p2, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK_SUCCESS:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v1, p2, v2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    .line 219
    sget-object p2, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_UNPACK:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v1, p2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->stopMetricTimer(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    .line 220
    throw p1
.end method


# virtual methods
.method public hasFailures()Z
    .locals 2

    .line 93
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->assets:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 97
    iget v1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->processedCount:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasStarted()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->hasStarted:Z

    return v0
.end method

.method public initialize()V
    .locals 3

    .line 52
    monitor-enter p0

    .line 54
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->syncStartTime:J

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->hasStarted:Z

    .line 56
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->assets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 60
    iput v1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->processedCount:I

    .line 61
    iget v1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->downloadAttempts:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->downloadAttempts:I

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDone()Z
    .locals 2

    .line 80
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    const-class v1, Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getFilteredAssets(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 83
    iget v1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->processedCount:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract onDone(Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;Lcom/amazon/kedu/ftue/assets/AssetManifest;)V
.end method

.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;Lcom/amazon/kedu/ftue/assets/RemoteAsset;)V
    .locals 5

    .line 110
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->assets:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->processedCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->processedCount:I

    .line 114
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->manifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    const-class v2, Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    invoke-virtual {v0, v2}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getFilteredAssets(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 115
    sget-object v2, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " completed with status: "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " and code "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\t"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->processedCount:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " completed"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget p1, p0, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->processedCount:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 118
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 122
    sget-object p1, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->TAG:Ljava/lang/String;

    const-string p2, "Processing all completed..."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->onAllDownloadComplete()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 118
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
