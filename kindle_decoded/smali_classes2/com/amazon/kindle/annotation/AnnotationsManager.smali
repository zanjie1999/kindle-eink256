.class public final Lcom/amazon/kindle/annotation/AnnotationsManager;
.super Ljava/lang/Object;
.source "AnnotationsManager.java"

# interfaces
.implements Lcom/amazon/kindle/annotation/IAnnotationsManager;


# static fields
.field static final METRICS_CLASS:Ljava/lang/String;

.field private static final PATTERN_INVALID_XML_CHARACTERS:Ljava/util/regex/Pattern;

.field private static final REDDING_USER:Ljava/lang/String; = "REDDINGUSER"

.field private static final TAG:Ljava/lang/String;

.field private static isLaunch:Z = true


# instance fields
.field private final annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

.field private final annotationDAO:Lcom/amazon/kindle/annotation/IAnnotationDAO;

.field private final authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field final bookIdsToUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final booksAwaitingProcessing:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

.field final inProgressBookIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final internalErrorMetricsEmitter:Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;

.field private final jsonAnnotationConverter:Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter<",
            "Lcom/amazon/kcp/sidecar/Mobi8AnnotationSidecar;",
            ">;"
        }
    .end annotation
.end field

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 93
    const-class v0, Lcom/amazon/kindle/annotation/AnnotationsManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/annotation/AnnotationsManager;->TAG:Ljava/lang/String;

    .line 96
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationsManager;->METRICS_CLASS:Ljava/lang/String;

    const-string v0, "[^\\u0009\\u000A\\u000D\\u0020-\\uD7FF\\uE000-\\uFFFD\ud800\udc00-\udbff\udfff]"

    .line 107
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/annotation/AnnotationsManager;->PATTERN_INVALID_XML_CHARACTERS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/IAuthenticationManager;)V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v0

    const-string v1, "annotations_manager"

    .line 113
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 141
    iput-object p3, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 142
    iput-object p2, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    .line 143
    invoke-interface {p2}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    .line 144
    invoke-static {p1}, Lcom/amazon/kindle/annotation/AnnotationDAO;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/annotation/IAnnotationDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationDAO:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    .line 145
    invoke-static {}, Lcom/amazon/kcp/application/AnnotationCache;->getInstance()Lcom/amazon/kcp/application/IAnnotationCache;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    .line 147
    new-instance p1, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;

    invoke-direct {p1}, Lcom/amazon/kcp/sidecar/AndroidJsonAnnotationConverter;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->jsonAnnotationConverter:Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter;

    .line 149
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->inProgressBookIds:Ljava/util/Set;

    .line 150
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->bookIdsToUrls:Ljava/util/Map;

    .line 151
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->booksAwaitingProcessing:Ljava/util/Map;

    .line 153
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 154
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class p2, Lcom/amazon/kindle/annotation/AnnotationsManager;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 155
    sget-object p1, Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;->INSTANCE:Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;

    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->internalErrorMetricsEmitter:Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;

    .line 156
    invoke-direct {p0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->cleanupAndProcessSidecars()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/annotation/AnnotationsManager;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->cleanupTempSidecarFiles()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/annotation/AnnotationsManager;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->processSidecarsAsync()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->onContentUpdateEarlySidecar(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->onContentUpdate(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/annotation/AnnotationsManager;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/annotation/AnnotationsManager;Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/Future;
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/annotation/AnnotationsManager;->processSidecarAsync(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/annotation/AnnotationsManager;)Lcom/amazon/kindle/io/IFileConnectionFactory;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kindle/annotation/AnnotationsManager;)Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->internalErrorMetricsEmitter:Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->createBookAnnotationsJournalizer(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;

    move-result-object p0

    return-object p0
.end method

.method private attemptDownloadingAnnotations(Ljava/lang/String;)Z
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationDAO:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->incSidecarDownloadAttempts(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 677
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationDAO:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->deleteSidecarRequest(Ljava/lang/String;)V

    .line 679
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 680
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v1

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 682
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadAnnotationsAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)Z

    move-result p1

    return p1

    .line 683
    :cond_1
    invoke-static {v1}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isEarlySidecarDownloadEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadAnnotationsEarly(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private callbackWithInternalError(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/ILocalBookItem;",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 958
    new-instance v0, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;

    invoke-direct {v0}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;-><init>()V

    .line 959
    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 960
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->internalErrorMetricsEmitter:Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;

    sget-object v2, Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;->APP_INTERNAL_ERROR_REQUEST_NOT_QUEUED:Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;

    sget-object v3, Lcom/amazon/kindle/annotation/AnnotationsManager;->TAG:Ljava/lang/String;

    .line 961
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    .line 960
    invoke-virtual {v1, v2, v3, p1}, Lcom/amazon/kindle/metrics/AppInternalErrorGranularDetailMetricsEmitter;->reportGranularAppInternalError(Lcom/amazon/kindle/webservices/AppInternalErrorDetailType;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 962
    invoke-interface {p2, v0}, Lcom/amazon/foundation/internal/IObjectCallback;->execute(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private cleanupAndProcessSidecars()V
    .locals 2

    .line 160
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/annotation/AnnotationsManager$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/annotation/AnnotationsManager$1;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManager;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private cleanupTempSidecarFiles()V
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    new-instance v1, Lcom/amazon/kindle/annotation/AnnotationsManager$2;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/annotation/AnnotationsManager$2;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManager;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getFilteredBookFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 178
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 179
    iget-object v4, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createAnnotationIO(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/services/sync/AnnotationIO;
    .locals 7

    .line 504
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/annotation/AnnotationsManager;->createMobiAnnotationIO(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/services/sync/AnnotationIO;

    move-result-object v3

    .line 505
    new-instance v6, Lcom/amazon/kindle/annotation/DBAnnotationIO;

    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationDAO:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    move-object v0, v6

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/annotation/DBAnnotationIO;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/sync/AnnotationIO;Lcom/amazon/kindle/annotation/IAnnotationDAO;Ljava/lang/String;)V

    return-object v6
.end method

.method private createBookAnnotationsJournalizer(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;
    .locals 8

    .line 725
    new-instance v7, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;

    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v5, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationDAO:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    iget-object v6, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;-><init>(Ljava/lang/String;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/annotation/IAnnotationDAO;Lcom/amazon/kcp/application/IAnnotationCache;)V

    return-object v7
.end method

.method private createMobiAnnotationIO(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/services/sync/AnnotationIO;
    .locals 6

    const-string v0, "Error while validating annotation sidecar"

    .line 512
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 513
    new-instance v1, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;

    iget-object v3, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v4, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->jsonAnnotationConverter:Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter;

    invoke-direct {v1, v3, p1, v4}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Lcom/amazon/kcp/sidecar/IJsonAnnotationConverter;)V

    const/4 p1, 0x1

    const/4 v3, 0x0

    .line 519
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/kcp/sidecar/Mobi8AnnotationIO;->isValid()Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, p1

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 524
    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationsManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v4

    .line 521
    sget-object v5, Lcom/amazon/kindle/annotation/AnnotationsManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p1, :cond_0

    .line 530
    invoke-direct {p0, p2}, Lcom/amazon/kindle/annotation/AnnotationsManager;->attemptDownloadingAnnotations(Ljava/lang/String;)Z

    return-object v2

    :cond_0
    if-eqz v3, :cond_1

    move-object v2, v1

    :cond_1
    return-object v2
.end method

.method private downloadSidecar(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 624
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 625
    new-instance v1, Lcom/amazon/kindle/annotation/AnnotationsManager$11;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/annotation/AnnotationsManager$11;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Ljava/util/concurrent/BlockingQueue;)V

    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadSidecarAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)Z

    .line 631
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    return-object p1
.end method

.method private downloadSidecarAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/ILocalBookItem;",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
            ">;)Z"
        }
    .end annotation

    .line 571
    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading annotation sidecar, bookId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationsManager$10;

    iget-object v5, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/annotation/AnnotationsManager$10;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)V

    .line 610
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSidecarDownloadService()Lcom/amazon/kindle/services/download/ISidecarDownloadService;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/amazon/kindle/services/download/ISidecarDownloadService;->download(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/IWebRequest;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/annotation/AnnotationsManager;->callbackWithInternalError(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private getBookId(Ljava/io/File;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 548
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const-string v3, ".embp"

    .line 556
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-static {v1}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 558
    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookId(Ljava/io/File;Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private moveAndProcessBookSidecar(Lcom/amazon/kindle/model/content/IBookID;)Z
    .locals 6

    .line 280
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->booksAwaitingProcessing:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 286
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 288
    iget-object v3, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    .line 289
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getSettingsFileName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 288
    invoke-static {v3, v0, v4, v5}, Lcom/amazon/kindle/io/FileSystemHelper;->rename(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    new-instance v0, Ljava/io/File;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getSettingsFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->processSidecar(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)V

    return v5

    .line 294
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not move and process file "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->deleteFile(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    return v2
.end method

.method private onContentUpdate(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 2

    .line 211
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    .line 212
    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationsManager$16;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->inProgressBookIds:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->inProgressBookIds:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 222
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadAnnotationsIfRequested(Ljava/lang/String;)Z

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadAnnotationsIfRequested(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 216
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->inProgressBookIds:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private declared-synchronized onContentUpdateEarlySidecar(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 3

    monitor-enter p0

    .line 238
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    .line 239
    sget-object v1, Lcom/amazon/kindle/annotation/AnnotationsManager$16;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 p1, 0x4

    if-eq v1, p1, :cond_1

    const/4 p1, 0x5

    if-eq v1, p1, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadAnnotationsIfRequested(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 242
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->inProgressBookIds:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 268
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->inProgressBookIds:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 269
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->booksAwaitingProcessing:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->booksAwaitingProcessing:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->moveAndProcessBookSidecar(Lcom/amazon/kindle/model/content/IBookID;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 257
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->inProgressBookIds:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    :cond_3
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadAnnotationsIfRequested(Ljava/lang/String;)Z

    .line 261
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->booksAwaitingProcessing:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 262
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->inProgressBookIds:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 263
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadAnnotationsIfRequested(Ljava/lang/String;)Z

    goto :goto_1

    .line 247
    :cond_5
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->booksAwaitingProcessing:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->moveAndProcessBookSidecar(Lcom/amazon/kindle/model/content/IBookID;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 248
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->booksAwaitingProcessing:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 249
    :cond_6
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadAnnotationsIfRequested(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 250
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->inProgressBookIds:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private processSidecarAsync(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 429
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationsManager$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/annotation/AnnotationsManager$9;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)V

    .line 446
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method private processSidecarsAsync()V
    .locals 6

    .line 401
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->pathDescriptor:Lcom/amazon/kindle/io/IPathDescriptor;

    new-instance v1, Lcom/amazon/kindle/annotation/AnnotationsManager$8;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/annotation/AnnotationsManager$8;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManager;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/io/IPathDescriptor;->getFilteredBookFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 408
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 409
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reading sidecar "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    :cond_0
    invoke-direct {p0, v3}, Lcom/amazon/kindle/annotation/AnnotationsManager;->getBookId(Ljava/io/File;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 414
    invoke-direct {p0, v3, v4}, Lcom/amazon/kindle/annotation/AnnotationsManager;->processSidecarAsync(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/Future;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private reportSyncStatusMetrics(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "enabled"

    goto :goto_0

    :cond_0
    const-string p1, "disabled"

    .line 832
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 833
    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p3, Lcom/amazon/kindle/krx/metrics/MetricType;->DEBUG:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "AnnotationsManager"

    invoke-virtual {p1, v1, p2, p3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    return-void
.end method

.method private updateLastAccessTime(Lcom/amazon/kindle/model/content/IBookID;J)V
    .locals 1

    .line 496
    invoke-virtual {p0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->getRecencySyncHelper()Lcom/amazon/kindle/contentupdate/RecencySyncHelper;

    move-result-object v0

    .line 497
    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/contentupdate/RecencySyncHelper;->updateBookRecencyAndNotify(Lcom/amazon/kindle/model/content/IBookID;J)V

    return-void
.end method


# virtual methods
.method doCheckAnnotations(Ljava/lang/String;)Z
    .locals 2

    .line 696
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationDAO:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    const-string v1, "REDDINGUSER"

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->deleteAnnotations(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 698
    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->attemptDownloadingAnnotations(Ljava/lang/String;)Z

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method doProcessSidecar(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/sync/AnnotationIO;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 477
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->createAnnotationIO(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/services/sync/AnnotationIO;

    move-result-object p1

    const/4 v0, 0x0

    .line 478
    invoke-interface {p1, v0}, Lcom/amazon/kindle/services/sync/AnnotationIO;->readAnnotations(Lcom/amazon/kindle/services/sync/AnnotationIO$AnnotationParserCallback;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->getRecencySyncHelper()Lcom/amazon/kindle/contentupdate/RecencySyncHelper;

    move-result-object v0

    .line 480
    invoke-interface {v0}, Lcom/amazon/kindle/contentupdate/RecencySyncHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-interface {p1}, Lcom/amazon/kindle/services/sync/AnnotationIO;->getLastAnnotationModificationTime()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->updateLastAccessTime(Lcom/amazon/kindle/model/content/IBookID;J)V

    :cond_0
    return-object p1

    :cond_1
    return-object v0
.end method

.method public downloadAnnotations(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 305
    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadSidecar(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 307
    new-instance v1, Ljava/io/File;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getSettingsFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->processSidecar(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)V

    :cond_0
    return-object v0
.end method

.method public downloadAnnotationsAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/ILocalBookItem;",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
            ">;)Z"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAnnotationCache;->getNumNonPositionAnnotations()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 368
    new-instance v2, Lcom/amazon/kindle/annotation/AnnotationsManager$6;

    invoke-direct {v2, p0, p2, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager$6;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/foundation/internal/IObjectCallback;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/annotation/AnnotationsManager;->uploadJournalsAsync(ILcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V

    const/4 p1, 0x1

    return p1

    .line 383
    :cond_0
    new-instance v0, Lcom/amazon/kindle/annotation/AnnotationsManager$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager$7;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/foundation/internal/IObjectCallback;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadSidecarAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)Z

    move-result p1

    return p1
.end method

.method downloadAnnotationsEarly(Ljava/lang/String;)Z
    .locals 10

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to download annotations early for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAnnotationCache;->getNumNonPositionAnnotations()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/4 v0, 0x0

    .line 316
    new-instance v1, Lcom/amazon/kindle/annotation/AnnotationsManager$4;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager$4;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v0, v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->uploadJournalsAsync(ILcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V

    return v2

    .line 327
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->bookIdsToUrls:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No url for bookId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cannot download sidecar early"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v3

    .line 334
    :cond_1
    new-instance v1, Lcom/amazon/kindle/annotation/AnnotationsManager$5;

    iget-object v7, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->fileConnectionFactory:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v4, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->bookIdsToUrls:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    move-object v4, v1

    move-object v5, p0

    move-object v6, v0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/amazon/kindle/annotation/AnnotationsManager$5;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v4, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/amazon/kindle/webservices/IWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 350
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v4

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-nez v2, :cond_2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Metadata is null for bookId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v3

    .line 357
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSidecarDownloadService()Lcom/amazon/kindle/services/download/ISidecarDownloadService;

    move-result-object p1

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/services/download/ISidecarDownloadService;->download(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/IWebRequest;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public downloadAnnotationsIfRequested(Ljava/lang/String;)Z
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->inProgressBookIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationDAO:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->isSidecarRequested(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 665
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->attemptDownloadingAnnotations(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public downloadReadingPosition(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/sync/LPRSyncType;)Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 843
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 844
    new-instance v1, Lcom/amazon/kindle/annotation/AnnotationsManager$13;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/annotation/AnnotationsManager$13;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->downloadReadingPositionAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V

    .line 850
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;

    return-object p1
.end method

.method public downloadReadingPositionAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/ILocalBookItem;",
            "Lcom/amazon/kindle/krx/sync/LPRSyncType;",
            "Lcom/amazon/kindle/services/download/IStatusTracker;",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 861
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    .line 862
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    .line 863
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v3

    .line 864
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v4

    .line 865
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pass book to annotationsManager for downloading reading position ASIN is null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " BookID is null: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " BookGUID is null: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " BookType is null: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 872
    new-instance v12, Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    invoke-direct {v12, v1, v3, v4}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 874
    new-instance v10, Lcom/amazon/kcp/application/models/internal/GetLocationModel;

    invoke-direct {v10, v1, v3, v4}, Lcom/amazon/kcp/application/models/internal/GetLocationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 875
    new-instance v1, Lcom/amazon/kindle/annotation/AnnotationsManager$14;

    move-object v7, v1

    move-object/from16 v8, p0

    move-object v9, v12

    move-object/from16 v11, p2

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    invoke-direct/range {v7 .. v15}, Lcom/amazon/kindle/annotation/AnnotationsManager$14;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kcp/application/models/internal/GetLocationModel;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/foundation/internal/IObjectCallback;)V

    if-eqz v0, :cond_4

    .line 896
    new-instance v3, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;

    invoke-direct {v3, v1, v0}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;-><init>(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    move-object v1, v3

    .line 898
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSidecarDownloadService()Lcom/amazon/kindle/services/download/ISidecarDownloadService;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v1, v4}, Lcom/amazon/kindle/services/download/ISidecarDownloadService;->download(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/webservices/IWebRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 903
    :cond_5
    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download Reading Position Async with invalid bookItem parameters, bookID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_6

    const-string v2, "Unknown"

    goto :goto_4

    .line 904
    :cond_6
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 903
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 905
    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/annotation/AnnotationsManager;->callbackWithInternalError(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/foundation/internal/IObjectCallback;)V

    return-void
.end method

.method public emitEarlyAnnotationsSidecarRequestWillNotCompleteEvent(Ljava/lang/String;)V
    .locals 6

    .line 945
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;

    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;->ANNOTATIONS_SIDECAR_REQUEST_WILL_NOT_COMPLETE:Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;

    new-instance v3, Lcom/amazon/kindle/model/content/LastPageRead;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v4, v5}, Lcom/amazon/kindle/model/content/LastPageRead;-><init>(II[B)V

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/amazon/kindle/annotation/AnnotationsManagerEvent;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManagerEvent$EventType;Ljava/lang/String;Lcom/amazon/kindle/model/content/LastPageRead;I)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public getBookAnnotationsManager(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/annotation/IBookAnnotationsManager;
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->createBookAnnotationsJournalizer(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/annotation/BookAnnotationsJournalizer;

    move-result-object p1

    return-object p1
.end method

.method public getBookAnnotationsManager(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/annotation/IBookAnnotationsManager;
    .locals 2

    .line 712
    new-instance v0, Lcom/amazon/kindle/annotation/BookAnnotationsManager;

    iget-object v1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationDAO:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kindle/annotation/BookAnnotationsManager;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/annotation/IAnnotationDAO;)V

    return-object v0
.end method

.method public getNumAnnotationsInCache()J
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAnnotationCache;->getNumAnnotations()J

    move-result-wide v0

    return-wide v0
.end method

.method getRecencySyncHelper()Lcom/amazon/kindle/contentupdate/RecencySyncHelper;
    .locals 1

    .line 952
    invoke-static {}, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;->getInstance()Lcom/amazon/kindle/contentupdate/RecencySyncHelper;

    move-result-object v0

    return-object v0
.end method

.method public getSyncStatus()Z
    .locals 3

    .line 820
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAnnotationCache;->isSyncAnnotationsOn()Z

    move-result v0

    .line 821
    sget-boolean v1, Lcom/amazon/kindle/annotation/AnnotationsManager;->isLaunch:Z

    if-eqz v1, :cond_0

    const-string v1, "GetServerAnnotationSync"

    const-string v2, "Server Annotation Sync Initialization Value"

    .line 822
    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kindle/annotation/AnnotationsManager;->reportSyncStatusMetrics(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 823
    sput-boolean v1, Lcom/amazon/kindle/annotation/AnnotationsManager;->isLaunch:Z

    :cond_0
    return v0
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 743
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_1

    .line 744
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationsManager;->METRICS_CLASS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    const-string v0, "DeregisterEvents"

    .line 745
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 747
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAnnotationCache;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAnnotationCache;->getNumAnnotations()J

    move-result-wide v0

    long-to-int v1, v0

    const-string v0, "NumOfLostAnnotationsInCacheWhenDeregister"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 749
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 752
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAnnotationCache;->resetJournal()V

    .line 753
    iget-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->inProgressBookIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_1
    return-void
.end method

.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    .line 185
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentUpdate;

    .line 186
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    .line 187
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentUpdate;->getPrevMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    if-eq v2, v0, :cond_0

    .line 190
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v2, Lcom/amazon/kindle/annotation/AnnotationsManager$3;

    invoke-direct {v2, p0, v1}, Lcom/amazon/kindle/annotation/AnnotationsManager$3;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Lcom/amazon/kindle/content/ContentMetadata;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_1
    return-void
.end method

.method processSidecar(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/annotation/AnnotationsManager;->processSidecarAsync(Ljava/io/File;Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 460
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    sget-object p1, Lcom/amazon/kindle/annotation/AnnotationsManager;->TAG:Ljava/lang/String;

    const-string p2, "Reading annotations sidecar failed"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :catch_1
    sget-object p1, Lcom/amazon/kindle/annotation/AnnotationsManager;->TAG:Ljava/lang/String;

    const-string p2, "Reading annotations sidecar is interrupted"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public removeInvalidXMLCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 735
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 738
    :cond_0
    sget-object v0, Lcom/amazon/kindle/annotation/AnnotationsManager;->PATTERN_INVALID_XML_CHARACTERS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public requestAnnotationsDownload(Ljava/lang/String;)V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationDAO:Lcom/amazon/kindle/annotation/IAnnotationDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/annotation/IAnnotationDAO;->addSidecarRequest(Ljava/lang/String;)V

    return-void
.end method

.method public requestAnnotationsDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 644
    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->bookIdsToUrls:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->requestAnnotationsDownload(Ljava/lang/String;)V

    return-void
.end method

.method public setSyncStatus(Z)V
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAnnotationCache;->setSyncAnnotationsOn(Z)V

    const-string v0, "SetServerAnnotationSync"

    const-string v1, "Server Annotation Sync Set Value"

    .line 812
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->reportSyncStatusMetrics(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldUploadJournals(Z)Z
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAnnotationCache;->isAnnotationSyncSuppressed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAnnotationCache;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 795
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->getSyncStatus()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public syncJournalAsync(Ljava/lang/String;Lcom/amazon/foundation/internal/IBooleanCallback;)V
    .locals 9

    const/4 v0, 0x0

    .line 913
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->shouldUploadJournals(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    new-instance v8, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->UPLOAD_JOURNAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/amazon/kindle/annotation/AnnotationsManager$15;

    invoke-direct {v7, p0, p1, p2}, Lcom/amazon/kindle/annotation/AnnotationsManager$15;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Ljava/lang/String;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Ljava/lang/String;ZLjava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    .line 916
    invoke-virtual {v0, v8}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    goto :goto_0

    .line 933
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/annotation/AnnotationsManager;->METRICS_CLASS:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 p1, 0x1

    const-string v4, "EmptyCache"

    aput-object v4, v3, p1

    const-string p1, "%s:%s"

    .line 934
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 933
    invoke-virtual {v1, v2, p1, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    if-eqz p2, :cond_1

    .line 938
    invoke-interface {p2, v0}, Lcom/amazon/foundation/internal/IBooleanCallback;->execute(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public uploadJournals()Lcom/amazon/kindle/annotation/IUploadJournalsResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 763
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 764
    new-instance v1, Lcom/amazon/kindle/annotation/AnnotationsManager$12;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/annotation/AnnotationsManager$12;-><init>(Lcom/amazon/kindle/annotation/AnnotationsManager;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/amazon/kindle/annotation/AnnotationsManager;->uploadJournalsAsync(ILcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V

    .line 770
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/annotation/IUploadJournalsResult;

    return-object v0
.end method

.method public uploadJournalsAsync(ILcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/kindle/services/download/IStatusTracker;",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "Lcom/amazon/kindle/annotation/IUploadJournalsResult;",
            ">;)V"
        }
    .end annotation

    .line 779
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kcp/application/IAnnotationCache;->uploadAndResetJournal(ILcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V

    return-void
.end method
