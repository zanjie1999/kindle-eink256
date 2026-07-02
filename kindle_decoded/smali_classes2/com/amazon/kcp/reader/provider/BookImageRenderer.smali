.class public Lcom/amazon/kcp/reader/provider/BookImageRenderer;
.super Ljava/lang/Object;
.source "BookImageRenderer.java"


# static fields
.field private static final BASELINE_TOTAL_MEM_FOR_YJ_CACHE_SIZE_ADJ_KB:I = 0x197244

.field private static volatile INSTANCE:Lcom/amazon/kcp/reader/provider/BookImageRenderer; = null

.field private static final RESOURCE_BUNDLE_FILENAME:Ljava/lang/String; = "res_android.dat"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.reader.provider.BookImageRenderer"

.field private static final YJR_CACHE_SIZE_KB:I = 0x2800


# instance fields
.field private attachedContainers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentBookPath:Ljava/lang/String;

.field private krfBook:Lcom/amazon/krf/platform/KRFBook;

.field private final krfExecutor:Ljava/util/concurrent/ExecutorService;

.field private pageInfoProvider:Lcom/amazon/krf/platform/PageInfoProvider;

.field private thumbnailRenderer:Lcom/amazon/krf/platform/ThumbnailRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v0

    const-string v1, "BookImageRendererThread"

    .line 57
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 58
    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->krfExecutor:Ljava/util/concurrent/ExecutorService;

    .line 61
    new-instance v1, Lcom/amazon/kcp/reader/provider/BookImageRenderer$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/provider/BookImageRenderer$1;-><init>(Lcom/amazon/kcp/reader/provider/BookImageRenderer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)I
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->getDefaultYJCacheSize(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/provider/BookImageRenderer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->resetDocument(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/provider/BookImageRenderer;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->doCloseDocument(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Lcom/amazon/kcp/reader/provider/BookImageRenderer;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->INSTANCE:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/provider/BookImageRenderer;)Lcom/amazon/krf/platform/KRFBook;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/provider/BookImageRenderer;)Lcom/amazon/krf/platform/PageInfoProvider;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->pageInfoProvider:Lcom/amazon/krf/platform/PageInfoProvider;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/provider/BookImageRenderer;)Lcom/amazon/krf/platform/ThumbnailRenderer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->thumbnailRenderer:Lcom/amazon/krf/platform/ThumbnailRenderer;

    return-object p0
.end method

.method public static declared-synchronized destroy(Ljava/lang/Runnable;)V
    .locals 3

    const-class v0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    monitor-enter v0

    .line 140
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->INSTANCE:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    if-eqz v1, :cond_0

    .line 141
    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->INSTANCE:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    new-instance v2, Lcom/amazon/kcp/reader/provider/BookImageRenderer$4;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/provider/BookImageRenderer$4;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->nonblockingKrfCall(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 150
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private disposeQuietly(Lcom/amazon/krf/platform/Disposable;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 278
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/krf/platform/Disposable;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 281
    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to dispose object of class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private doCloseDocument(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->currentBookPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->thumbnailRenderer:Lcom/amazon/krf/platform/ThumbnailRenderer;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->disposeQuietly(Lcom/amazon/krf/platform/Disposable;)V

    .line 264
    iget-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->pageInfoProvider:Lcom/amazon/krf/platform/PageInfoProvider;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->disposeQuietly(Lcom/amazon/krf/platform/Disposable;)V

    .line 265
    iget-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->disposeQuietly(Lcom/amazon/krf/platform/Disposable;)V

    const/4 p1, 0x0

    .line 266
    iput-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->thumbnailRenderer:Lcom/amazon/krf/platform/ThumbnailRenderer;

    .line 267
    iput-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->pageInfoProvider:Lcom/amazon/krf/platform/PageInfoProvider;

    .line 268
    iput-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    .line 269
    iput-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->currentBookPath:Ljava/lang/String;

    .line 270
    iput-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->attachedContainers:Ljava/util/Set;

    .line 271
    sget-object p1, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->TAG:Ljava/lang/String;

    const-string v0, "Document closed"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static getDefaultYJCacheSize(Landroid/content/Context;)I
    .locals 4

    .line 286
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidDeviceInformationProvider(Landroid/content/Context;)Lcom/amazon/kcp/application/IAndroidDeviceInformation;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IAndroidDeviceInformation;->getTotalMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x2800

    mul-long v0, v0, v2

    const-wide/32 v2, 0x197244

    .line 287
    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static instance()Lcom/amazon/kcp/reader/provider/BookImageRenderer;
    .locals 3

    .line 105
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->INSTANCE:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    if-nez v0, :cond_2

    .line 106
    const-class v0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    monitor-enter v0

    .line 107
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->INSTANCE:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    if-nez v1, :cond_0

    .line 111
    new-instance v1, Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;-><init>()V

    sput-object v1, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->INSTANCE:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    .line 113
    :cond_0
    monitor-exit v0

    goto :goto_0

    .line 108
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Application not initialized yet."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 115
    :cond_2
    :goto_0
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->INSTANCE:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    return-object v0
.end method

.method private nonblockingKrfCall(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->krfExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method private resetDocument(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->currentBookPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object p2, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->attachedContainers:Ljava/util/Set;

    invoke-interface {p2, p5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 213
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 214
    iget-object p4, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->attachedContainers:Ljava/util/Set;

    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 215
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Attaching container: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    iget-object p4, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p5}, Lcom/amazon/krf/platform/KRFBook;->attachContainer(Ljava/io/File;)Z

    .line 217
    iget-object p4, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->attachedContainers:Ljava/util/Set;

    invoke-interface {p4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Document already opened: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    .line 227
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening document "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, 0x0

    .line 234
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-direct {p0, p4}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->stringsToFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p0, p5}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->stringsToFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 234
    invoke-static {v1, p2, p3, p4, v2}, Lcom/amazon/krf/platform/KRF;->openBook(Ljava/io/File;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/amazon/krf/platform/KRFBook;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 236
    :try_start_2
    invoke-interface {p2}, Lcom/amazon/krf/platform/KRFBook;->createPageInfoProvider()Lcom/amazon/krf/platform/PageInfoProvider;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 237
    :try_start_3
    new-instance p4, Lcom/amazon/krf/platform/ViewSettings;

    invoke-direct {p4}, Lcom/amazon/krf/platform/ViewSettings;-><init>()V

    invoke-interface {p2, p4, p3}, Lcom/amazon/krf/platform/KRFBook;->createThumbnailRenderer(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/PageInfoProvider;)Lcom/amazon/krf/platform/ThumbnailRenderer;

    move-result-object p4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 245
    :try_start_4
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->doCloseDocument(Ljava/lang/String;)V

    .line 247
    iput-object p2, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->krfBook:Lcom/amazon/krf/platform/KRFBook;

    .line 248
    iput-object p3, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->pageInfoProvider:Lcom/amazon/krf/platform/PageInfoProvider;

    .line 249
    iput-object p4, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->thumbnailRenderer:Lcom/amazon/krf/platform/ThumbnailRenderer;

    .line 250
    iput-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->currentBookPath:Ljava/lang/String;

    .line 251
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->attachedContainers:Ljava/util/Set;

    .line 253
    sget-object p2, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Document opened successfully: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception p4

    goto :goto_2

    :catch_1
    move-exception p4

    move-object p3, v0

    goto :goto_2

    :catch_2
    move-exception p4

    move-object p2, v0

    move-object p3, p2

    .line 239
    :goto_2
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->disposeQuietly(Lcom/amazon/krf/platform/Disposable;)V

    .line 240
    invoke-direct {p0, p3}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->disposeQuietly(Lcom/amazon/krf/platform/Disposable;)V

    .line 241
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->disposeQuietly(Lcom/amazon/krf/platform/Disposable;)V

    .line 242
    throw p4

    .line 225
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "documentPath required"

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception p2

    .line 256
    sget-object p3, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "failed to open document "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    throw p2
.end method

.method private stringsToFiles(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public closeDocument(Ljava/lang/String;)V
    .locals 1

    .line 130
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/reader/provider/BookImageRenderer$3;-><init>(Lcom/amazon/kcp/reader/provider/BookImageRenderer;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->nonblockingKrfCall(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public openDocument(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    new-instance v7, Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;-><init>(Lcom/amazon/kcp/reader/provider/BookImageRenderer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, v7}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->nonblockingKrfCall(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public renderPageClip(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/concurrent/Future;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v11, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object v7, p2

    move-object v8, p3

    move/from16 v9, p4

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;-><init>(Lcom/amazon/kcp/reader/provider/BookImageRenderer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Rect;)V

    move-object v0, p0

    invoke-direct {p0, v11}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->nonblockingKrfCall(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method public renderThumbnail(ILandroid/graphics/Rect;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/concurrent/Future;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Rect;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v10, Lcom/amazon/kcp/reader/provider/BookImageRenderer$5;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move v7, p1

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kcp/reader/provider/BookImageRenderer$5;-><init>(Lcom/amazon/kcp/reader/provider/BookImageRenderer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILandroid/graphics/Rect;Z)V

    move-object v0, p0

    invoke-direct {p0, v10}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->nonblockingKrfCall(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method
