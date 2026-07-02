.class public Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;
.super Ljava/lang/Object;
.source "BrochureAssetBuilder.java"

# interfaces
.implements Lcom/amazon/kcp/info/brochure/IBrochureAssetBuilder;


# static fields
.field private static final DOWNLOAD_TIMEOUT_MINUTES:J = 0x5L

.field private static final METRICS_NAME:Ljava/lang/String;

.field private static final METRIC_INVALID_JSON_BLOB:Ljava/lang/String; = "InvalidJsonBlob"

.field private static final METRIC_INVALID_MANIFEST:Ljava/lang/String; = "InvalidManifest"

.field private static final METRIC_MANIFEST_DOWNLOAD_FAILURE:Ljava/lang/String; = "ManifestDownloadFailure"

.field private static final TAG:Ljava/lang/String;

.field private static final TEMPORARY_FILE_PREFIX:Ljava/lang/String; = "BrochureAssetInfo"

.field private static final gson:Lcom/google/gson/Gson;


# instance fields
.field private final brochureAssetDownloadListener:Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloadListener;

.field private brochureAssetNotification:Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;

.field private final context:Landroid/content/Context;

.field private final webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    const-class v0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->TAG:Ljava/lang/String;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->METRICS_NAME:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;

    new-instance v2, Lcom/amazon/kcp/info/brochure/BrochureAssetNotificationTypeAdapter;

    invoke-direct {v2}, Lcom/amazon/kcp/info/brochure/BrochureAssetNotificationTypeAdapter;-><init>()V

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 64
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloadListener;Lcom/amazon/kindle/webservices/IWebRequestManager;Ljava/lang/String;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Context must not be null"

    .line 78
    invoke-static {p1, v2, v1}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "brochureAssetDownloadListener must not be null"

    .line 79
    invoke-static {p2, v2, v1}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "readerDownloadManager must not be null"

    .line 80
    invoke-static {p3, v2, v1}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "jsonBlob must not be null"

    .line 81
    invoke-static {p4, v1, v0}, Lcom/google/common/base/Verify;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->context:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->brochureAssetDownloadListener:Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloadListener;

    .line 84
    iput-object p3, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    .line 85
    invoke-static {p4}, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->deserializeBrochureAssetNotification(Ljava/lang/String;)Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->brochureAssetNotification:Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;

    return-void
.end method

.method public static deserializeBrochureAssetNotification(Ljava/lang/String;)Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;
    .locals 5

    const-string v0, "Invalid JSON blob in the notification message: "

    const-string v1, "InvalidJsonBlob"

    .line 138
    :try_start_0
    sget-object v2, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->gson:Lcom/google/gson/Gson;

    const-class v3, Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;

    invoke-virtual {v2, p0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 150
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Deserialized notification message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-object v2

    .line 145
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->METRICS_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 147
    sget-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/google/gson/JsonParseException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v2

    .line 140
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->METRICS_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v1, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    throw v2
.end method

.method private processAssetInfo(Ljava/lang/String;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/kcp/info/brochure/BrochureAssetException;
        }
    .end annotation

    const-string v0, "Failed to read the asset JSON file at "

    const-string v1, "Failed to delete the asset JSON file at "

    const-string v2, "ManifestDownloadFailure"

    .line 165
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 173
    :try_start_1
    iget-object v4, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->brochureAssetNotification:Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;

    invoke-virtual {v4}, Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadFactory;->getDownloader(Ljava/lang/String;)Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloader;

    move-result-object v4

    .line 174
    iget-object v5, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    iget-object v6, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->brochureAssetDownloadListener:Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloadListener;

    invoke-interface {v4, p1, v5, v3, v6}, Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloader;->downloadAssets(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestManager;Ljava/io/Reader;Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloadListener;)V
    :try_end_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_0

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    sget-object p2, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 185
    :try_start_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->METRICS_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v2, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    throw p1

    :catch_1
    move-exception p1

    .line 177
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->METRICS_NAME:Ljava/lang/String;

    const-string v4, "InvalidManifest"

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    :try_start_3
    sget-object v2, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid asset JSON object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/amazon/kindle/io/IOUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v2

    .line 181
    :try_start_4
    sget-object v3, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    :goto_1
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 191
    sget-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    throw p1

    :catch_3
    move-exception p1

    .line 167
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->METRICS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloaded JSON file is missing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    throw p1
.end method


# virtual methods
.method public downloadAsset()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/kcp/info/brochure/BrochureAssetException;
        }
    .end annotation

    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->brochureAssetNotification:Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;->getAssetInfoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 109
    iget-object v2, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "BrochureAssetInfo"

    invoke-static {v3, v0, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 110
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 111
    new-instance v3, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 113
    new-instance v4, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;

    invoke-direct {v4, v1, v0, v3}, Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadRequest;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/amazon/kcp/info/brochure/BrochureAssetDownloadResponseHandler;)V

    .line 115
    iget-object v3, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    invoke-interface {v3, v4}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    const-wide/16 v3, 0x5

    .line 117
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 126
    iget-object v1, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->brochureAssetNotification:Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;

    invoke-virtual {v1}, Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;->getFeatureID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->processAssetInfo(Ljava/lang/String;Ljava/io/File;)V

    return-void

    .line 118
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v2, "Asset info download timed out"

    invoke-direct {v0, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 121
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->METRICS_NAME:Ljava/lang/String;

    const-string v4, "ManifestDownloadFailure"

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v2, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset info download from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timed out"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 103
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No asset URL for locale "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->brochureAssetNotification:Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v1, Lcom/amazon/kcp/info/brochure/BrochureAssetException;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/info/brochure/BrochureAssetException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFeatureId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->brochureAssetNotification:Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;

    invoke-virtual {v0}, Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;->getFeatureID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
