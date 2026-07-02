.class public Lcom/amazon/sitb/android/ReaderActions;
.super Ljava/lang/Object;
.source "ReaderActions.java"


# static fields
.field private static final REFRESH_DELAY_TIME:I = 0x1f4

.field private static final ZERO_PERCENT:I

.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

.field libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

.field private metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

.field readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

.field private recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/ReaderActions;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;Lcom/amazon/sitb/android/metrics/MetricsService;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/amazon/sitb/android/ReaderActions;->recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    .line 52
    iput-object p3, p0, Lcom/amazon/sitb/android/ReaderActions;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    .line 53
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    .line 54
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/sitb/android/ReaderActions;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 55
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/sitb/android/ReaderActions;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    .line 56
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/sitb/android/ReaderActions;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    .line 57
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/sitb/android/ReaderActions;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 58
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/sitb/android/ReaderActions;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/sitb/android/ReaderActions;)Lcom/amazon/sitb/android/metrics/MetricsService;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/sitb/android/ReaderActions;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    return-object p0
.end method

.method static synthetic access$100()Lcom/amazon/sitb/android/ISamplingLogger;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/sitb/android/ReaderActions;Ljava/lang/String;Lcom/amazon/sitb/android/metrics/MetricEvent;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/amazon/sitb/android/ReaderActions;->checkAndDeleteSampleSync(Ljava/lang/String;Lcom/amazon/sitb/android/metrics/MetricEvent;)V

    return-void
.end method

.method private checkAndDeleteSampleSync(Ljava/lang/String;Lcom/amazon/sitb/android/metrics/MetricEvent;)V
    .locals 3

    .line 310
    sget-object v0, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndDeleteSampleSync: ASIN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/amazon/sitb/android/ReaderActions;->recentCancelCache:Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/cache/cancel/RecentCancelCache;->wasCanceledRecently(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    sget-object p2, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not deleting asin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because it was canceled recently"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 322
    invoke-virtual {p0, p1, v0}, Lcom/amazon/sitb/android/ReaderActions;->getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 323
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-eq v1, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 329
    invoke-virtual {p0, p1, v1}, Lcom/amazon/sitb/android/ReaderActions;->getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 330
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 336
    :cond_2
    sget-object v1, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v2, "Sample and full book metadata present"

    invoke-interface {v1, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0, v0}, Lcom/amazon/sitb/android/ReaderActions;->isOpenInReader(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 341
    sget-object p2, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sample open in reader, can\'t delete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_3
    invoke-direct {p0, v0}, Lcom/amazon/sitb/android/ReaderActions;->deleteSample(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/sitb/android/Metric;

    move-result-object p1

    .line 346
    sget-object v0, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSample => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/amazon/sitb/android/ReaderActions;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    invoke-virtual {v0, p2, p1}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    :goto_0
    return-void

    .line 332
    :cond_4
    :goto_1
    sget-object p2, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No full book for ASIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    return-void

    .line 325
    :cond_5
    :goto_2
    sget-object p2, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No sample for ASIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private deleteSample(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/sitb/android/Metric;
    .locals 3

    if-nez p1, :cond_0

    .line 367
    sget-object p1, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string/jumbo v0, "sample to delete is null"

    invoke-interface {p1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->error(Ljava/lang/String;)V

    .line 368
    sget-object p1, Lcom/amazon/sitb/android/Metric;->SAMPLE_DELETE_FAILURE:Lcom/amazon/sitb/android/Metric;

    return-object p1

    .line 372
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/sitb/android/ReaderActions;->hasAnnotations(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "deleteSample: sample "

    if-eqz v0, :cond_1

    .line 374
    :try_start_1
    sget-object v0, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has annotations"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 375
    sget-object p1, Lcom/amazon/sitb/android/Metric;->SAMPLE_DELETE_HAS_ANNOTATIONS:Lcom/amazon/sitb/android/Metric;

    return-object p1

    .line 377
    :cond_1
    sget-object v0, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has NO annotations"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/amazon/sitb/android/ReaderActions;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->deleteItemLocally(Ljava/lang/String;)V

    .line 380
    sget-object p1, Lcom/amazon/sitb/android/Metric;->SAMPLE_DELETE_SUCCESS:Lcom/amazon/sitb/android/Metric;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 384
    sget-object v0, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "RuntimeException in deleteSample"

    invoke-interface {v0, v1, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 385
    sget-object p1, Lcom/amazon/sitb/android/Metric;->SAMPLE_DELETE_FAILURE:Lcom/amazon/sitb/android/Metric;

    return-object p1
.end method

.method private getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazon/sitb/android/ReaderActions;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    return-object v0
.end method

.method private hasAnnotations(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 275
    sget-object p1, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "hasAnnotations: book is null"

    invoke-interface {p1, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    return v0

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/amazon/sitb/android/ReaderActions;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getAnnotationManager(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/reader/IAnnotationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IAnnotationManager;->getAnnotations()Ljava/util/List;

    move-result-object v1

    .line 282
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/content/KRXIAnnotation;

    .line 284
    sget-object v6, Lcom/amazon/sitb/android/ReaderActions$3;->$SwitchMap$com$amazon$kindle$krx$content$KRXIAnnotation$AnnotationType:[I

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v6, v3

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 296
    :cond_2
    sget-object v1, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v5

    const-string p1, "hasAnnotations: ASIN=%s => %b"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    return v2
.end method

.method private isOpenInReader(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    .line 356
    invoke-direct {p0}, Lcom/amazon/sitb/android/ReaderActions;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/sitb/android/utils/BookUtils;->isSameBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public cancelFullBookDownload(Ljava/lang/String;)V
    .locals 4

    .line 108
    sget-object v0, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "cancelFullBookDownload: ASIN = %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/amazon/sitb/android/ReaderActions;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {v0, p1, v2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object p1, p0, Lcom/amazon/sitb/android/ReaderActions;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->cancelDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    sget-object v0, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelFullBookDownload: ASIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not available in the library"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public varargs checkAndDeleteSamplesAsync(Lcom/amazon/sitb/android/EntryPoint;[Ljava/lang/String;)V
    .locals 4

    .line 127
    sget-object v0, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "checkAndDeleteSamplesAsync: entryPoint=%s, ASINs=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 132
    sget-object p1, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string p2, "asins is NULL in checkAndDeleteSamplesAsync"

    invoke-interface {p1, p2}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;)V

    return-void

    .line 136
    :cond_0
    sget-object v0, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "creating task for deleting sample if it has no annotations"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/amazon/sitb/android/ReaderActions$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/sitb/android/ReaderActions$1;-><init>(Lcom/amazon/sitb/android/ReaderActions;Lcom/amazon/sitb/android/EntryPoint;)V

    .line 168
    invoke-virtual {v0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public downloadFullBook(Ljava/lang/String;)V
    .locals 5

    .line 85
    sget-object v0, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "downloadFullBook: ASIN = %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, p1, v3}, Lcom/amazon/sitb/android/ReaderActions;->getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v2

    sget-object v4, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->REMOTE:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-ne v2, v4, :cond_0

    .line 91
    iget-object v2, p0, Lcom/amazon/sitb/android/ReaderActions;->downloadManager:Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/IDownloadStatusListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    sget-object v0, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string p1, "downloadFullBook: failed to request download, ASIN = %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    sget-object v0, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadFullBook: ASIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not available in the library"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->error(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getBookFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;
    .locals 2

    .line 256
    invoke-direct {p0}, Lcom/amazon/sitb/android/ReaderActions;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/amazon/sitb/android/utils/BookUtils;->isSample(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-ne v1, p2, :cond_0

    return-object v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/ReaderActions;->libraryManager:Lcom/amazon/kindle/krx/library/ILibraryManager;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/sitb/android/ReaderActions;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    return-object v0
.end method

.method public refreshActionBar()V
    .locals 5

    .line 212
    sget-object v0, Lcom/amazon/sitb/android/ReaderActions;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x1f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "Calling refreshActionBar() after %d milliseconds"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/amazon/sitb/android/ReaderActions;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/amazon/sitb/android/ReaderActions$2;

    invoke-direct {v1, p0}, Lcom/amazon/sitb/android/ReaderActions$2;-><init>(Lcom/amazon/sitb/android/ReaderActions;)V

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThreadDelayed(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public syncMetadataAndTodo()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/amazon/sitb/android/ReaderActions;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    sget-object v1, Lcom/amazon/kindle/krx/application/SyncType;->TODO:Lcom/amazon/kindle/krx/application/SyncType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->performSync(Lcom/amazon/kindle/krx/application/SyncType;)V

    .line 76
    iget-object v0, p0, Lcom/amazon/sitb/android/ReaderActions;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    sget-object v1, Lcom/amazon/kindle/krx/application/SyncType;->META_DATA:Lcom/amazon/kindle/krx/application/SyncType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->performSync(Lcom/amazon/kindle/krx/application/SyncType;)V

    return-void
.end method

.method public uploadAnnotations()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/amazon/sitb/android/ReaderActions;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    sget-object v1, Lcom/amazon/kindle/krx/application/SyncType;->JOURNAL_UPLOAD:Lcom/amazon/kindle/krx/application/SyncType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->performSync(Lcom/amazon/kindle/krx/application/SyncType;)V

    return-void
.end method
