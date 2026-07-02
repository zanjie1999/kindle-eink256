.class public Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;
.super Ljava/lang/Object;
.source "TextImageBrochureAssetDownloader.java"

# interfaces
.implements Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloader;


# static fields
.field private static final METRICS_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field protected static final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    const-class v0, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->TAG:Ljava/lang/String;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->METRICS_NAME:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;

    new-instance v2, Lcom/amazon/kcp/info/brochure/BrochurePageAssetTypeAdapter;

    invoke-direct {v2}, Lcom/amazon/kcp/info/brochure/BrochurePageAssetTypeAdapter;-><init>()V

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 59
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fromBrochureAsset(Lcom/amazon/kcp/info/brochure/BrochureAsset;)Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/info/brochure/BrochureAssetException;
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-virtual {p1}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getPageAssets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;

    .line 173
    sget-object v3, Lcom/amazon/kcp/info/brochure/BrochureType;->ShareableBrochure:Lcom/amazon/kcp/info/brochure/BrochureType;

    invoke-virtual {p1}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getBrochureType()Lcom/amazon/kcp/info/brochure/BrochureType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    invoke-virtual {v2}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->getBrochureSlideMetadata()Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->isAsinInLibrary(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->METRICS_NAME:Ljava/lang/String;

    const-string v1, "InvalidManifest"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ASIN was not in library, item not shareable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v2}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->getBrochureSlideMetadata()Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 178
    sget-object v0, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/amazon/kcp/info/brochure/BrochureAssetException;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/info/brochure/BrochureAssetException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    :goto_1
    new-instance v3, Lcom/amazon/kcp/ui/brochure/TextImageShareableBrochureSlide;

    .line 182
    invoke-virtual {v2}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->getText()Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-virtual {v2}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->getBrochureImageAsset()Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->getDownloadedFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-virtual {v2}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->getBrochureSlideMetadata()Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/amazon/kcp/ui/brochure/TextImageShareableBrochureSlide;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/info/brochure/BrochureSlideShareMetadata;)V

    .line 185
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_2
    new-instance v1, Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;

    invoke-virtual {p1}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {p1}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getBrochureType()Lcom/amazon/kcp/info/brochure/BrochureType;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1}, Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/info/brochure/BrochureType;)V

    return-object v1
.end method

.method private isAsinInLibrary(Ljava/lang/String;)Z
    .locals 2

    .line 199
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 203
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    .line 204
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
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

    .line 136
    sget-object v0, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/amazon/kcp/info/brochure/BrochureAsset;

    invoke-virtual {v0, p3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/info/brochure/BrochureAsset;

    if-nez v0, :cond_1

    .line 138
    invoke-virtual {p3}, Ljava/io/Reader;->reset()V

    const/16 p1, 0x400

    new-array p2, p1, [C

    .line 140
    invoke-virtual {p3, p2}, Ljava/io/Reader;->read([C)I

    move-result p3

    if-ge p3, p1, :cond_0

    .line 142
    invoke-static {p3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    const/4 p4, 0x0

    .line 143
    invoke-virtual {p1, p2, p4, p3}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    .line 144
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object p2

    .line 146
    :cond_0
    sget-object p1, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->TAG:Ljava/lang/String;

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

    .line 148
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 149
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrochureAsset: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getVersion()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v1, "slideshow-asset-v1"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 152
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->downloadPageAssets(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestManager;Lcom/amazon/kcp/info/brochure/BrochureAsset;Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloadListener;)V

    :goto_0
    return-void

    .line 155
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->METRICS_NAME:Ljava/lang/String;

    const-string p3, "InvalidManifest"

    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid asset info version: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    sget-object p2, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance p2, Lcom/amazon/kcp/info/brochure/BrochureAssetException;

    invoke-direct {p2, p1}, Lcom/amazon/kcp/info/brochure/BrochureAssetException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected downloadPageAssets(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestManager;Lcom/amazon/kcp/info/brochure/BrochureAsset;Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloadListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to delete the asset JSON file at "

    const-string v1, "Failed to download "

    .line 75
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 76
    invoke-virtual {p3}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getPageAssets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 77
    invoke-virtual {p3}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getPageAssets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;

    .line 78
    invoke-virtual {v4}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->getBrochureImageAsset()Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;

    move-result-object v4

    .line 79
    new-instance v5, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;

    invoke-direct {v5, v2}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 81
    new-instance v6, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    .line 82
    invoke-virtual {v4}, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-virtual {v4}, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->getDownloadedFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;)V

    .line 84
    invoke-virtual {v4, v6}, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->setRequest(Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;)V

    .line 85
    invoke-interface {p2, v6}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x5

    .line 89
    :try_start_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 91
    invoke-direct {p0, p3}, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->fromBrochureAsset(Lcom/amazon/kcp/info/brochure/BrochureAsset;)Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;

    move-result-object p2

    .line 90
    invoke-interface {p4, p1, p2}, Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloadListener;->onDownloadComplete(Ljava/lang/String;Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;)V

    .line 95
    invoke-virtual {p3}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getPageAssets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;

    .line 96
    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->getBrochureImageAsset()Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;

    move-result-object p2

    .line 97
    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->getRequest()Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    move-result-object p2

    .line 98
    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->getException()Ljava/lang/Exception;

    move-result-object p4

    if-nez p4, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->getException()Ljava/lang/Exception;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_2
    invoke-virtual {p3}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getPageAssets()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;

    .line 113
    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->getBrochureImageAsset()Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;

    move-result-object p2

    .line 114
    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->getRequest()Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    move-result-object p3

    .line 115
    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->getDownloadedFile()Ljava/io/File;

    move-result-object p4

    .line 116
    invoke-virtual {p3}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->getException()Ljava/lang/Exception;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 117
    sget-object p3, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    .line 119
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_3

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 122
    sget-object p3, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->TAG:Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    return-void

    .line 93
    :cond_5
    :try_start_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Page asset download timed out"

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 103
    :try_start_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    sget-object p4, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->METRICS_NAME:Ljava/lang/String;

    const-string v2, "AssetDownloadFailure"

    invoke-virtual {p2, p4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object p2, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->TAG:Ljava/lang/String;

    const-string p4, "Failed to get the page assets"

    invoke-static {p2, p4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    invoke-virtual {p3}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getPageAssets()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;

    .line 106
    invoke-virtual {p4}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->getBrochureImageAsset()Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;

    move-result-object p4

    .line 107
    invoke-virtual {p4}, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->getRequest()Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    move-result-object p4

    .line 108
    sget-object v2, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to download asset from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getPrivacySafeUrl()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 110
    :cond_6
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :goto_4
    invoke-virtual {p3}, Lcom/amazon/kcp/info/brochure/BrochureAsset;->getPageAssets()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;

    .line 113
    invoke-virtual {p3}, Lcom/amazon/kcp/info/brochure/BrochurePageAsset;->getBrochureImageAsset()Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;

    move-result-object p3

    .line 114
    invoke-virtual {p3}, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->getRequest()Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    move-result-object p4

    .line 115
    invoke-virtual {p3}, Lcom/amazon/kcp/info/brochure/BrochureCachedAsset;->getDownloadedFile()Ljava/io/File;

    move-result-object v2

    .line 116
    invoke-virtual {p4}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;->getException()Ljava/lang/Exception;

    move-result-object p4

    if-eqz p4, :cond_7

    .line 117
    sget-object p4, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_7

    .line 119
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p3

    if-nez p3, :cond_7

    .line 120
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 122
    sget-object p4, Lcom/amazon/kcp/info/brochure/TextImageBrochureAssetDownloader;->TAG:Ljava/lang/String;

    invoke-static {p4, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 127
    :cond_8
    throw p1
.end method
