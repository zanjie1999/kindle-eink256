.class public Lcom/amazon/kcp/font/FontDownloadRequest;
.super Ljava/lang/Object;
.source "FontDownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestDelegate;,
        Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I = 0xea60

.field private static final FONT_ERROR_DOWNLOAD:Ljava/lang/String; = "DownloadError"

.field private static final FONT_ERROR_DOWNLOAD_STREAM_CREATION:Ljava/lang/String; = "DownloadStreamCreationError"

.field private static final FONT_ERROR_EXTRACTION:Ljava/lang/String; = "ExtractionError"

.field private static final FONT_ERROR_PATH_RETRIEVAL:Ljava/lang/String; = "PathRetrievalError"

.field private static final FONT_ZIP_FILE_NAME:Ljava/lang/String; = "Font.zip"

.field private static final JSON_KEY_FONT_PATH:Ljava/lang/String; = "fontpath"

.field private static final METRICS_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private delegate:Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestDelegate;

.field private errorReason:Ljava/lang/String;

.field protected fontDownloadURL:Ljava/lang/String;

.field private fontPathRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

.field private fontRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

.field private hasError:Z

.field private hasStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isCancelled:Z

.field private language:Ljava/lang/String;

.field private pathToDownload:Ljava/lang/String;

.field private statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const-class v0, Lcom/amazon/kcp/font/FontDownloadRequest;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/font/FontDownloadRequest;->TAG:Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/font/FontDownloadRequest;->METRICS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestDelegate;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->hasError:Z

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->errorReason:Ljava/lang/String;

    .line 69
    iput-boolean v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->isCancelled:Z

    .line 70
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->hasStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    iput-object p1, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->language:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    .line 79
    iput-object p3, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->delegate:Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/font/FontDownloadRequest;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/amazon/kcp/font/FontDownloadRequest;->onDownloadFinished()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/font/FontDownloadRequest;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kcp/font/FontDownloadRequest;->onExtractionFinished(Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/kcp/font/FontDownloadRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getFontPathResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;
    .locals 2

    .line 318
    new-instance v0, Lcom/amazon/kcp/font/FontDownloadRequest$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/font/FontDownloadRequest$4;-><init>(Lcom/amazon/kcp/font/FontDownloadRequest;)V

    .line 326
    new-instance v1, Lcom/amazon/kindle/webservices/JSONResponseHandler;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/webservices/JSONResponseHandler;-><init>(Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;)V

    return-object v1
.end method

.method private static getFontPathUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 335
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/amazon/kindle/services/authentication/TokenEncryptor;->getEncryptedDSN(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v0

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getFontDownloadURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "lang="

    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&eid="

    .line 341
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&deviceType="

    .line 342
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onDownloadFinished()V
    .locals 4

    .line 252
    iget-boolean v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->isCancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    const-string v1, "Font.zip"

    if-nez v0, :cond_1

    .line 257
    new-instance v0, Lcom/amazon/kcp/font/FontDownloadRequest$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/font/FontDownloadRequest$3;-><init>(Lcom/amazon/kcp/font/FontDownloadRequest;)V

    .line 263
    new-instance v2, Lcom/amazon/kcp/font/FontExtractor;

    iget-object v3, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->pathToDownload:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0}, Lcom/amazon/kcp/font/FontExtractor;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/callback/ICallback;)V

    .line 266
    invoke-virtual {v2}, Lcom/amazon/kcp/font/FontExtractor;->execute()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->hasError:Z

    .line 269
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->pathToDownload:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    const/4 v1, 0x0

    const-string v2, "FontDownloadFailure"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/font/FontDownloadRequest;->METRICS_TAG:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "DownloadError"

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 273
    iput-object v3, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->errorReason:Ljava/lang/String;

    .line 274
    invoke-direct {p0}, Lcom/amazon/kcp/font/FontDownloadRequest;->onFinish()V

    :goto_0
    return-void
.end method

.method private onExtractionFinished(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 284
    iput-boolean p1, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->hasError:Z

    .line 285
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->pathToDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Font.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 286
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/font/FontDownloadRequest;->METRICS_TAG:Ljava/lang/String;

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "ExtractionError"

    invoke-virtual {p1, v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 287
    iput-object v2, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->errorReason:Ljava/lang/String;

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/font/FontDownloadRequest;->getBaseLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/font/FontUtils;->supportSeparatelyFontsDownload(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/amazon/kcp/font/FontDownloadRequest;->getDownloadLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->getFont(Ljava/lang/String;)Lcom/amazon/kcp/font/ManualFontDownloadHelper$DownloadableFont;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/amazon/kcp/font/FontDownloadRequest;->getBaseLanguage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->pathToDownload:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kcp/font/ManualFontDownloadHelper;->generateFontConfigFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    iget-boolean v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->hasError:Z

    if-eqz v0, :cond_2

    const-string v0, "FontDownloadFailure"

    goto :goto_1

    :cond_2
    const-string v0, "FontDownloadSuccess"

    :goto_1
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/amazon/kcp/font/FontDownloadRequest;->onFinish()V

    return-void
.end method

.method private onFinish()V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->delegate:Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestDelegate;

    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v0, p0}, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestDelegate;->requestDidFinish(Lcom/amazon/kcp/font/FontDownloadRequest;)V

    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->delegate:Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestDelegate;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->isCancelled:Z

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontPathRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->cancel()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->cancel()V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    const/4 v1, 0x0

    const-string v2, "FontDownloadFailure"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/amazon/kcp/font/FontDownloadRequest;->onFinish()V

    return-void
.end method

.method public getBaseLanguage()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/font/FontUtils;->getBaseLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadLanguage()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->language:Ljava/lang/String;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->hasError:Z

    return v0
.end method

.method public hasStarted()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->hasStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->isCancelled:Z

    return v0
.end method

.method protected onPathRetrievalFinished()V
    .locals 7

    .line 192
    iget-boolean v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->isCancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontPathRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "FontDownloadFailure"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 197
    iput-boolean v3, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->hasError:Z

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v4, Lcom/amazon/kcp/font/FontDownloadRequest;->METRICS_TAG:Ljava/lang/String;

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v6, "PathRetrievalError"

    invoke-virtual {v0, v4, v6, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 200
    iput-object v6, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->errorReason:Ljava/lang/String;

    .line 201
    invoke-direct {p0}, Lcom/amazon/kcp/font/FontDownloadRequest;->onFinish()V

    .line 205
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lcom/amazon/kcp/font/FontDownloadRequest;->getBaseLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amazon/kcp/font/FontUtils;->getFontDir(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->pathToDownload:Ljava/lang/String;

    .line 209
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->pathToDownload:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 211
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    .line 212
    sget-object v4, Lcom/amazon/kcp/font/FontDownloadRequest;->TAG:Ljava/lang/String;

    const-string v5, "Unable to create location for book storage"

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->pathToDownload:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Font.zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 218
    iget-object v5, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    invoke-static {v0, v4, v3, v5}, Lcom/amazon/kindle/io/FileSystemHelper;->outputStreamFromFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;ZLcom/amazon/kindle/services/download/IStatusTracker;)Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 220
    iget-object v5, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontDownloadURL:Ljava/lang/String;

    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 230
    :cond_3
    new-instance v1, Lcom/amazon/kcp/font/FontDownloadRequest$2;

    iget-object v2, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontDownloadURL:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/font/FontDownloadRequest$2;-><init>(Lcom/amazon/kcp/font/FontDownloadRequest;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    .line 238
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    new-instance v2, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;

    iget-object v3, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    invoke-direct {v2, v1, v3}, Lcom/amazon/kcp/font/FontDownloadRequest$FontDownloadRequestHandler;-><init>(Ljava/io/OutputStream;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 240
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 241
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 245
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void

    .line 221
    :cond_4
    :goto_0
    sget-object v0, Lcom/amazon/kcp/font/FontDownloadRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot create output stream from file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iput-boolean v3, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->hasError:Z

    .line 223
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/font/FontDownloadRequest;->METRICS_TAG:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "DownloadStreamCreationError"

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 225
    iput-object v3, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->errorReason:Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Lcom/amazon/kcp/font/FontDownloadRequest;->onFinish()V

    return-void
.end method

.method public performFontRetrieval()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->hasStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 139
    iget-boolean v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->isCancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->hasStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    const/4 v1, 0x0

    const-string v2, "FontDownloadStart"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/amazon/kcp/font/FontDownloadRequest$1;

    iget-object v1, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->language:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kcp/font/FontDownloadRequest;->getFontPathUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/font/FontDownloadRequest$1;-><init>(Lcom/amazon/kcp/font/FontDownloadRequest;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontPathRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    .line 154
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    const-string/jumbo v1, "store_cookies"

    const-string/jumbo v2, "x-main"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/store/CookieJar;->getParsedCookie(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";domain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontPathRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    const-string v2, "Cookie"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/font/FontDownloadRequest;->getFontPathResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontPathRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontPathRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontPathRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 166
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/font/FontDownloadRequest;->fontPathRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void

    .line 136
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Retrevial of Font already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
