.class public Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;
.super Ljava/lang/Object;
.source "DownloadedAssetManager.java"

# interfaces
.implements Lcom/amazon/kedu/ftue/assets/IAssetManager;


# static fields
.field private static final MANIFEST_NAME:Ljava/lang/String; = "manifest.json"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.ftue.assets.DownloadedAssetManager"


# instance fields
.field private assetContext:Lcom/amazon/kedu/ftue/assets/IAssetContext;

.field private assetDownloadCompleteHandler:Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

.field private final assetFileHelper:Lcom/amazon/kedu/ftue/assets/AssetFileHelper;

.field private assetManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

.field private final fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

.field private volatile initialized:Z

.field private latestManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

.field private final manifestFileHelper:Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;

.field private volatile manifestRevisionLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;

    invoke-direct {v0}, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;-><init>()V

    new-instance v1, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;

    new-instance v2, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;

    invoke-direct {v2}, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;-><init>()V

    invoke-direct {v1, v2}, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;-><init>(Lcom/amazon/kedu/ftue/assets/IFileProvider;)V

    new-instance v2, Lcom/amazon/kedu/ftue/assets/AssetFileHelper;

    new-instance v3, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;

    invoke-direct {v3}, Lcom/amazon/kedu/ftue/assets/FileSystemFileProvider;-><init>()V

    invoke-direct {v2, v3}, Lcom/amazon/kedu/ftue/assets/AssetFileHelper;-><init>(Lcom/amazon/kedu/ftue/assets/IFileProvider;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;-><init>(Lcom/amazon/kedu/ftue/assets/IFileProvider;Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;Lcom/amazon/kedu/ftue/assets/AssetFileHelper;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/kedu/ftue/assets/IFileProvider;Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;Lcom/amazon/kedu/ftue/assets/AssetFileHelper;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->initialized:Z

    .line 22
    iput-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestRevisionLocked:Z

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    .line 47
    iput-object p1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    .line 48
    iput-object p2, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestFileHelper:Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;

    .line 49
    iput-object p3, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetFileHelper:Lcom/amazon/kedu/ftue/assets/AssetFileHelper;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;)Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestFileHelper:Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;)Lcom/amazon/kedu/ftue/assets/IFileProvider;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    return-object p0
.end method

.method private syncManifest(Lcom/amazon/kedu/ftue/assets/AssetManifest;)V
    .locals 10

    .line 261
    sget-object v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->TAG:Ljava/lang/String;

    const-string v1, "synchronizing manifest assets"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v1}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getAssetDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 264
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetDownloadCompleteHandler:Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetDownloadCompleteHandler:Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetDownloadCompleteHandler:Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->hasFailures()Z

    move-result v2

    if-nez v2, :cond_1

    .line 270
    :cond_0
    sget-object p1, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->TAG:Ljava/lang/String;

    const-string v0, "sync already processing or has completed successfully. ignoring sync request."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    monitor-exit p0

    return-void

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetDownloadCompleteHandler:Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->initialize()V

    .line 276
    const-class v2, Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    invoke-virtual {p1, v2}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getFilteredAssets(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 277
    sget-object v3, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "synchronizing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from manifest (version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    .line 280
    iget-object v3, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-virtual {v8}, Lcom/amazon/kedu/ftue/assets/Asset;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 281
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v8}, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->getSha256()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetFileHelper:Lcom/amazon/kedu/ftue/assets/AssetFileHelper;

    invoke-virtual {v5, v3}, Lcom/amazon/kedu/ftue/assets/AssetFileHelper;->getSha256(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    .line 285
    sget-object v3, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "creating download request for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v3, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;

    iget-object v5, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    iget-object v6, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetFileHelper:Lcom/amazon/kedu/ftue/assets/AssetFileHelper;

    iget-object v9, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetDownloadCompleteHandler:Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

    move-object v4, v3

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;-><init>(Lcom/amazon/kedu/ftue/assets/IFileProvider;Lcom/amazon/kedu/ftue/assets/AssetFileHelper;Lcom/amazon/kedu/ftue/assets/AssetManifest;Lcom/amazon/kedu/ftue/assets/RemoteAsset;Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;)V

    .line 288
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_3
    sget-object v3, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asset found on device, skipping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_DOWNLOADED_ALREADY:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v3, v4}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricEvent(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    .line 295
    iget-object v3, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetDownloadCompleteHandler:Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

    const/16 v4, 0xc8

    sget-object v5, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-virtual {v3, v4, v5, v8}, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;->onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;Lcom/amazon/kedu/ftue/assets/RemoteAsset;)V

    goto/16 :goto_0

    .line 298
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/ftue/assets/AssetDownloadRequest;

    .line 302
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 298
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public attemptToLockManifestRevision(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Z
    .locals 4

    .line 70
    iget-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestRevisionLocked:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attemptToLockManifestRevision manifest revision already locked.  returning "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-virtual {v3}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " vs "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 77
    :cond_1
    monitor-enter p0

    .line 79
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attemptToLockManifestRevision manifest revision not locked.  comparing "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-virtual {v3}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " vs "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    iget-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestRevisionLocked:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v0

    iget-object v3, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-virtual {v3}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locking manifest revision to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    iput-boolean v2, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestRevisionLocked:Z

    .line 85
    iput-object p1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    .line 86
    monitor-exit p0

    return v2

    .line 88
    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method buildDownloadHandler(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;
    .locals 3

    .line 192
    sget-object v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->TAG:Ljava/lang/String;

    const-string v1, "initializing the download handler"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager$1;

    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    iget-object v2, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetFileHelper:Lcom/amazon/kedu/ftue/assets/AssetFileHelper;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager$1;-><init>(Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;Lcom/amazon/kedu/ftue/assets/IFileProvider;Lcom/amazon/kedu/ftue/assets/AssetFileHelper;Lcom/amazon/kedu/ftue/assets/AssetManifest;)V

    return-object v0
.end method

.method public getAssetManifest()Lcom/amazon/kedu/ftue/assets/AssetManifest;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    return-object v0
.end method

.method public getContext()Lcom/amazon/kedu/ftue/assets/IAssetContext;
    .locals 3

    .line 242
    sget-object v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContext() initialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->initialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->initialized:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetContext:Lcom/amazon/kedu/ftue/assets/IAssetContext;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatestManifest()Lcom/amazon/kedu/ftue/assets/AssetManifest;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->latestManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    return-object v0
.end method

.method getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 312
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 4

    .line 107
    sget-object v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->TAG:Ljava/lang/String;

    const-string v1, "Initializing DownloadAssetManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v0}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getAssetDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "manifest.json"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 110
    monitor-enter p0

    .line 112
    :try_start_0
    iget-boolean v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->initialized:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestFileHelper:Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;

    invoke-virtual {v1, v0}, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->createDefaultManifestAndDirectory(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestFileHelper:Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;

    invoke-virtual {v1, v0}, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->readManifest(Ljava/io/File;)Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    .line 115
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestFileHelper:Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;

    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->readLatestManifest()Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->latestManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    .line 117
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    if-eqz v1, :cond_1

    .line 119
    new-instance v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;

    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    new-instance v2, Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;

    iget-object v3, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-direct {v2, v3}, Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;-><init>(Lcom/amazon/kedu/ftue/assets/IFileProvider;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetContext;-><init>(Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;Lcom/amazon/kedu/ftue/assets/IFileProvider;Lcom/amazon/kedu/ftue/assets/AssetResourceMapHelper;)V

    iput-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetContext:Lcom/amazon/kedu/ftue/assets/IAssetContext;

    .line 120
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestFileHelper:Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;

    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    iget-object v2, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->latestManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->cleanupAssetDirectory(Lcom/amazon/kedu/ftue/assets/AssetManifest;Lcom/amazon/kedu/ftue/assets/AssetManifest;)V

    .line 121
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->latestManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->buildDownloadHandler(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetDownloadCompleteHandler:Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->initialized:Z

    .line 123
    sget-object v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->TAG:Ljava/lang/String;

    const-string v1, "Initialization complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 128
    sget-object v1, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed reading in manifest! Attempting to delete file was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string v0, "succcesful"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "unsuccessful"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_MANIFEST_INVALID_FORMAT:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricEvent(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    .line 132
    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->synchronizeLatestManifest()V

    return-void

    :catchall_0
    move-exception v0

    .line 132
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isManifestRevisionLocked()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestRevisionLocked:Z

    return v0
.end method

.method public redownloadAssets()V
    .locals 3

    .line 161
    monitor-enter p0

    const/4 v0, 0x0

    .line 163
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestRevisionLocked:Z

    .line 164
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestFileHelper:Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;

    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->deleteAllAssets(Lcom/amazon/kedu/ftue/assets/AssetManifest;)V

    .line 165
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->fileProvider:Lcom/amazon/kedu/ftue/assets/IFileProvider;

    invoke-interface {v1}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getAssetDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "manifest.json"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 167
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestFileHelper:Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;

    invoke-virtual {v1, v0}, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->createDefaultManifestAndDirectory(Ljava/io/File;)Z

    .line 168
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestFileHelper:Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;

    invoke-virtual {v1, v0}, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->readManifest(Ljava/io/File;)Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    .line 170
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestFileHelper:Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;

    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->readLatestManifest()Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->latestManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    .line 171
    invoke-virtual {p0, v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->buildDownloadHandler(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetDownloadCompleteHandler:Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;

    .line 172
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->latestManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-direct {p0, v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->syncManifest(Lcom/amazon/kedu/ftue/assets/AssetManifest;)V

    .line 173
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synchronizeLatestManifest()V
    .locals 4

    .line 141
    iget-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->initialized:Z

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-virtual {v0}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->latestManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 146
    sget-object v1, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current manifest version ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->assetManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-virtual {v3}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is behind the lastest ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->latestManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    .line 147
    invoke-virtual {v3}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "). syncing..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->latestManifest:Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-direct {p0, v1}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->syncManifest(Lcom/amazon/kedu/ftue/assets/AssetManifest;)V

    .line 151
    :cond_1
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_MANIFEST_UP_TO_DATE:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    :cond_2
    return-void
.end method

.method public unlockManifestRevision()V
    .locals 1

    .line 57
    monitor-enter p0

    const/4 v0, 0x0

    .line 59
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->manifestRevisionLocked:Z

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
