.class Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager$1;
.super Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;
.source "DownloadedAssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->buildDownloadHandler(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;Lcom/amazon/kedu/ftue/assets/IFileProvider;Lcom/amazon/kedu/ftue/assets/AssetFileHelper;Lcom/amazon/kedu/ftue/assets/AssetManifest;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager$1;->this$0:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/kedu/ftue/assets/AssetDownloadCompleteHandler;-><init>(Lcom/amazon/kedu/ftue/assets/IFileProvider;Lcom/amazon/kedu/ftue/assets/AssetFileHelper;Lcom/amazon/kedu/ftue/assets/AssetManifest;)V

    return-void
.end method


# virtual methods
.method protected onDone(Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;Lcom/amazon/kedu/ftue/assets/AssetManifest;)V
    .locals 3

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager$1;->this$0:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    :try_start_1
    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne p1, v1, :cond_1

    .line 204
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v1, "All downloads complete, updating manifest"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object p1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager$1;->this$0:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    invoke-static {p1}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->access$100(Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;)Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->deleteOriginalAssets(Lcom/amazon/kedu/ftue/assets/AssetManifest;)V

    .line 207
    const-class p1, Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    invoke-virtual {p2, p1}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getFilteredAssets(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 208
    invoke-virtual {p2}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getAssets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 210
    iget-object p1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager$1;->this$0:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    invoke-static {p1}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->access$200(Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;)Lcom/amazon/kedu/ftue/assets/IFileProvider;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager$1;->this$0:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    invoke-static {v1}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->access$200(Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;)Lcom/amazon/kedu/ftue/assets/IFileProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getAssetDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "manifest.json"

    invoke-interface {p1, v1, v2}, Lcom/amazon/kedu/ftue/assets/IFileProvider;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 211
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager$1;->this$0:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    invoke-static {v1}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->access$100(Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;)Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;

    move-result-object v1

    invoke-static {p2}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->toJson(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->writeJsonManifestToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 213
    iget-object p1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager$1;->this$0:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    invoke-static {p2}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->unmodifiableManifest(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->attemptToLockManifestRevision(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Z

    move-result p1

    .line 214
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object p2

    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->ASSET_MANIFEST_LIVE_UPDATE:Lcom/amazon/kedu/ftue/metrics/Metric;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2, v1, v2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->reportMetricCounter(Lcom/amazon/kedu/ftue/metrics/Metric;I)V

    if-eqz p1, :cond_2

    .line 217
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Active manifest has not been accessed yet, updated to latest"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 222
    :cond_1
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Manifest download failed, deleting resources for manifest"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p1, p0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager$1;->this$0:Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    invoke-static {p1}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->access$100(Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;)Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/kedu/ftue/assets/ManifestFileHelper;->deleteAllAssets(Lcom/amazon/kedu/ftue/assets/AssetManifest;)V

    .line 225
    :cond_2
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 229
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Failed processing download complete handler"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
