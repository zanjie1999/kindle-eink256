.class public Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;
.super Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;
.source "ImageShareableBrochureDownloader.java"


# static fields
.field private static final METRICS_NAME:Ljava/lang/String;

.field private static final SHAREABLE_IMAGE_EXTENSION:Ljava/lang/String; = ".jpeg"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-class v0, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;->TAG:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;->METRICS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;-><init>()V

    return-void
.end method

.method private downloadShareableImageAssets(Lcom/amazon/kindle/webservices/IWebRequestManager;Lcom/amazon/kcp/info/brochure/BrochureAsset;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to delete the asset JSON file at "

    const-string v1, "Failed to download "

    .line 100
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 101
    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getPageAssets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 103
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 105
    new-instance v4, Ljava/util/ArrayList;

    .line 106
    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getPageAssets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getPageAssets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;

    .line 109
    invoke-virtual {v6}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->getBrochureSlideMetadata()Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    move-result-object v6

    .line 111
    new-instance v7, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;

    invoke-direct {v7, v2}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 114
    invoke-virtual {v6}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getAsin()Ljava/lang/String;

    move-result-object v8

    .line 115
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    const-string v10, ".jpeg"

    .line 114
    invoke-static {v8, v10, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 117
    new-instance v9, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    .line 118
    invoke-virtual {v6}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getShareableImageUrl()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8, v7}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;)V

    .line 121
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->setShareableImageDownloadedPath(Ljava/lang/String;)V

    .line 122
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {p1, v9}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x5

    const/4 p1, 0x0

    .line 127
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 130
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    .line 131
    invoke-virtual {v2}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->getException()Ljava/lang/Exception;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    .line 144
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 146
    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getPageAssets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;

    invoke-virtual {v2}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->getBrochureSlideMetadata()Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    move-result-object v2

    .line 147
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getShareableImageDownloadedPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    .line 149
    invoke-virtual {v5}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->getException()Ljava/lang/Exception;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 150
    sget-object v5, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v2}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getShareableImageDownloadedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {v5, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    sget-object v3, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 132
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->getException()Ljava/lang/Exception;

    move-result-object v2

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    const/4 v2, 0x0

    .line 144
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 146
    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getPageAssets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;

    invoke-virtual {v3}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->getBrochureSlideMetadata()Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    move-result-object v3

    .line 147
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getShareableImageDownloadedPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    .line 149
    invoke-virtual {v6}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->getException()Ljava/lang/Exception;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 150
    sget-object v6, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v3}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getShareableImageDownloadedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-static {v6, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_5

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    sget-object v5, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return p1

    .line 128
    :cond_7
    :try_start_2
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    const-string v3, "Page asset download timed out"

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v2

    .line 137
    :try_start_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    sget-object v5, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;->METRICS_NAME:Ljava/lang/String;

    const-string v6, "AssetDownloadFailure"

    invoke-virtual {v3, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v3, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;->TAG:Ljava/lang/String;

    const-string v5, "Failed to get the page assets"

    invoke-static {v3, v5, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    .line 140
    sget-object v6, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to download asset from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getPrivacySafeUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 142
    :cond_8
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 144
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_a

    .line 146
    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getPageAssets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;

    invoke-virtual {v3}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->getBrochureSlideMetadata()Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    move-result-object v3

    .line 147
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getShareableImageDownloadedPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    .line 149
    invoke-virtual {v6}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->getException()Ljava/lang/Exception;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 150
    sget-object v6, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v3}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getShareableImageDownloadedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-static {v6, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_9

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    sget-object v5, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;->TAG:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 161
    :cond_a
    throw v2
.end method


# virtual methods
.method public downloadAssets(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestManager;Ljava/io/Reader;Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloadListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/info/brochure/BrochureAssetException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/amazon/kcp/info/brochure/BrochureAsset;

    invoke-virtual {v0, p3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/info/brochure/BrochureAsset;

    if-nez v0, :cond_1

    .line 62
    invoke-virtual {p3}, Ljava/io/Reader;->reset()V

    const/16 p1, 0x400

    new-array p2, p1, [C

    .line 64
    invoke-virtual {p3, p2}, Ljava/io/Reader;->read([C)I

    move-result p3

    if-ge p3, p1, :cond_0

    .line 66
    invoke-static {p3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    const/4 p4, 0x0

    .line 67
    invoke-virtual {p1, p2, p4, p3}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    .line 68
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object p2

    .line 71
    :cond_0
    sget-object p1, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid JSON: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 74
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrochureAsset: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getVersion()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v1, "slideshow-asset-v1"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 77
    invoke-direct {p0, p2, v0}, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;->downloadShareableImageAssets(Lcom/amazon/kindle/webservices/IWebRequestManager;Lcom/amazon/kcp/info/brochure/BrochureAsset;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 78
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->downloadPageAssets(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestManager;Lcom/amazon/kcp/info/brochure/BrochureAsset;Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloadListener;)V

    :cond_3
    :goto_0
    return-void

    .line 82
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;->METRICS_NAME:Ljava/lang/String;

    const-string p3, "InvalidManifest"

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid asset info version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    sget-object p2, Lcom/amazon/kcp/info/brochure/ImageShareableBrochureDownloader;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance p2, Lcom/amazon/kcp/info/brochure/BrochureAssetException;

    invoke-direct {p2, p1}, Lcom/amazon/kcp/info/brochure/BrochureAssetException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
