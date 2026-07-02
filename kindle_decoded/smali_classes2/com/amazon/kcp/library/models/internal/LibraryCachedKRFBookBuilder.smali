.class public Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;
.super Ljava/lang/Object;
.source "LibraryCachedKRFBookBuilder.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;


# instance fields
.field private docFactory:Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;

.field private final fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

.field private final localStorage:Lcom/amazon/kcp/application/ILocalStorage;

.field private final monitor:Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->instance:Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;)V
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;Z)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;Z)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    .line 70
    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    .line 71
    new-instance p2, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;

    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/amazon/kcp/library/models/internal/LibraryBookBuilderMonitor;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->monitor:Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;

    .line 72
    sput-object p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->instance:Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;)Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->monitor:Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;)Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->docFactory:Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)V
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->checkDocumentErrorType(Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)V

    return-void
.end method

.method private static checkDocumentErrorType(Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->documentErrorTypeToString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 359
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "LibraryCachedKRFBookBuilder"

    invoke-virtual {v0, v2, p0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_1
    return-void
.end method

.method private static documentErrorTypeToString(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 379
    sget-object v1, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected invalid error type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "DocumentErrorUnknown"

    goto :goto_0

    :cond_1
    const-string v0, "DocumentErrorFileError"

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;
    .locals 3

    .line 45
    sget-object v0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->instance:Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;

    if-eqz v0, :cond_0

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized buildCachedBook(Lcom/amazon/kcp/library/models/BookFileEnumerator;Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 16

    move-object/from16 v14, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v1, v14, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->monitor:Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;->isInvalidBook(Ljava/lang/String;)Z

    move-result v1

    const/4 v15, 0x0

    if-eqz v1, :cond_0

    .line 100
    sget-object v1, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid book, fileName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-object v15

    :cond_0
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    .line 104
    :try_start_1
    iget-object v12, v14, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v13, v14, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v13}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->getBookItem(Ljava/lang/String;JLcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JLcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)Lcom/amazon/kcp/library/models/internal/KRFBookItem;

    move-result-object v1

    .line 106
    invoke-virtual {v14, v0}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->createIDocumentInfo(Ljava/lang/String;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v3, p1

    .line 109
    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;->partialLoadBook(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;Lcom/amazon/kcp/library/models/BookFileEnumerator;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    move-object v15, v1

    .line 110
    :cond_1
    monitor-exit p0

    return-object v15

    .line 112
    :cond_2
    :try_start_2
    sget-object v1, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "docInfo is null, fileName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    monitor-exit p0

    return-object v15

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public buildCachedBook(Lcom/amazon/kcp/library/models/BookFileEnumerator;Ljava/lang/String;I)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 14

    move-object v13, p0

    .line 127
    iget-object v0, v13, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->monitor:Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;->isInvalidBook(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 131
    iget-object v11, v13, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iget-object v12, v13, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    move-object v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v12}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->getBookItem(Ljava/lang/String;JLcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JLcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)Lcom/amazon/kcp/library/models/internal/KRFBookItem;

    move-result-object v0

    if-eqz v0, :cond_1

    move/from16 v1, p3

    .line 136
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->setLastPositionRead(I)V

    :cond_1
    return-object v0
.end method

.method declared-synchronized createIDocumentInfo(Ljava/lang/String;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;
    .locals 7

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->monitor:Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;->isInvalidBook(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid book, fileName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-object v1

    .line 162
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->getDocFactory()Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;

    .line 163
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;

    invoke-direct {v0}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;-><init>()V

    const/4 v2, 0x0

    .line 164
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;->setValue(I)V

    .line 166
    new-instance v3, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;

    invoke-direct {v3, p0, v0, p1}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder$BookInfoExtractor;-><init>(Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "Submit BookInfoExtractor"

    const/4 v5, 0x1

    .line 170
    invoke-static {v4, v5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 174
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v3

    const-wide/16 v4, 0x8

    .line 178
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    :try_start_3
    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->monitor:Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;

    invoke-interface {v4, p1}, Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;->removeInvalidBook(Ljava/lang/String;)Z

    const-string v4, "Submit BookInfoExtractor"

    .line 181
    invoke-static {v4, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v1

    .line 194
    :goto_0
    :try_start_4
    sget-object v4, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error opening book "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-object v3, v1

    .line 186
    :catch_3
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->monitor:Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;

    invoke-interface {v2, p1}, Lcom/amazon/kcp/library/models/internal/ILibraryBookBuilderMonitor;->addInvalidBook(Ljava/lang/String;)Z

    .line 189
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/krl/R$bool;->restart_app_after_timeout_exception:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    if-nez v3, :cond_1

    .line 199
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;->getValue()I

    move-result p1

    .line 200
    sget-object v2, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open book, error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->checkDocumentErrorType(Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 203
    monitor-exit p0

    return-object v1

    .line 205
    :cond_1
    monitor-exit p0

    return-object v3

    .line 191
    :cond_2
    :try_start_5
    new-instance v0, Lcom/amazon/kcp/library/models/DocumentOpenTimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open book "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " after 8s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/models/DocumentOpenTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getBookItem(Ljava/lang/String;JLcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JLcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)Lcom/amazon/kcp/library/models/internal/KRFBookItem;
    .locals 14

    .line 79
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->getDocFactory()Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;

    .line 80
    new-instance v13, Lcom/amazon/kcp/library/models/internal/KRFBookItem;

    move-object v0, v13

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/amazon/kcp/library/models/internal/KRFBookItem;-><init>(Ljava/lang/String;JLcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;JLcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V

    return-object v13
.end method

.method protected declared-synchronized getDocFactory()Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->docFactory:Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/amazon/kcp/application/KRF4Helper;->loadNativeLibraries()V

    .line 86
    new-instance v0, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->docFactory:Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->docFactory:Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMultimediaGuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 309
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->getDocFactory()Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;

    move-result-object v0

    .line 311
    new-instance v1, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;

    invoke-direct {v1}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;-><init>()V

    const/4 v2, 0x0

    .line 312
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;->setValue(I)V

    .line 313
    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/krf/KRF/Reader/KindleDocumentFactory;->createDocumentInfo(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;

    move-result-object v0

    .line 314
    invoke-static {v1}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;->checkDocumentErrorType(Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;)V

    if-eqz v0, :cond_0

    .line 317
    new-instance p1, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ExtendedDocumentInfo;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ExtendedDocumentInfo;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)V

    .line 318
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ExtendedDocumentInfo;->getMultimediaGuid()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/ReaderExtensions/ExtendedDocumentInfo;->delete()V

    .line 320
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->delete()V

    .line 321
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;->delete()V

    return-object v2

    .line 323
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/DocumentErrorValue;->delete()V

    .line 324
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open the content "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
