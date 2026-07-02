.class public Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;
.super Ljava/lang/Object;
.source "BookImageProviderHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$RenderingTask;,
        Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.reader.provider.BookImageProviderHandler"


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v0

    const-string v1, "BookImageProviderHandlerThread"

    .line 44
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 45
    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->executor:Ljava/util/concurrent/ExecutorService;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->pendingRequests:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;[Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->stringArrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;)Ljava/util/Map;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->pendingRequests:Ljava/util/Map;

    return-object p0
.end method

.method private cancelRequest(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 108
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing requestId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private closeDocument(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 98
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DOCUMENT_PATH:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->instance()Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->closeDocument(Ljava/lang/String;)V

    return-void
.end method

.method public static instance()Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;
    .locals 1

    .line 50
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$SingletonHolder;->access$000()Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;

    move-result-object v0

    return-object v0
.end method

.method private newRenderingTask(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/Runnable;)Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$RenderingTask;
    .locals 1

    .line 277
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$RenderingTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$RenderingTask;-><init>(Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/Runnable;)V

    .line 278
    iget-object p2, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->pendingRequests:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private openDocument(Landroid/os/Bundle;)V
    .locals 7

    .line 83
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DOCUMENT_PATH:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 88
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->VOUCHER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->CONTAINER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 90
    sget-object v3, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->ACCOUNT_SECRETS:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 91
    sget-object v4, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DSN:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->instance()Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    move-result-object p1

    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->stringArrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 94
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->stringArrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->stringArrayToList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object v1, p1

    .line 93
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->openDocument(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing book path"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processRenderingRequest(Ljava/lang/String;Ljava/util/concurrent/Callable;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/concurrent/Future<",
            "Landroid/graphics/Bitmap;",
            ">;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 139
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 141
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 142
    sget-object v2, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->FILE_DESCRIPTOR:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v2, 0x1

    .line 144
    aget-object v2, v0, v2

    new-instance v4, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$1;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$1;-><init>(Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;Ljava/lang/String;Ljava/util/concurrent/Callable;[Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {p0, p1, v2, v4}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->newRenderingTask(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/Runnable;)Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$RenderingTask;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    :try_start_1
    iget-object p2, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_0
    move-exception p2

    .line 189
    :try_start_2
    aget-object v0, v0, v3

    invoke-static {v0}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 190
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$RenderingTask;->release()V

    .line 191
    throw p2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 201
    sget-object p2, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->TAG:Ljava/lang/String;

    const-string v0, "exception thrown while processing rendering request"

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    :catch_2
    move-exception p1

    .line 199
    throw p1

    :catch_3
    move-exception p1

    .line 197
    throw p1

    :catch_4
    move-exception p1

    .line 195
    throw p1
.end method

.method private renderPageClip(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    if-eqz p1, :cond_2

    .line 241
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 245
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->PAGE_RECT:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    .line 250
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->START_POSITION:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->END_POSITION:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 256
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->CROP_TO_FIT:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 258
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DOCUMENT_PATH:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 259
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->VOUCHER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 260
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->CONTAINER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 261
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->ACCOUNT_SECRETS:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 262
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DSN:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 264
    new-instance p2, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;-><init>(Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->processRenderingRequest(Ljava/lang/String;Ljava/util/concurrent/Callable;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 253
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start and end positions required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 247
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pageRect required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A unique requestId is required for each rendering call"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private renderThumbnail(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    if-eqz p1, :cond_2

    .line 208
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->PAGE_INDEX:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v1, :cond_1

    .line 217
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->PAGE_RECT:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    .line 222
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->CROP_TO_FIT:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 224
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DOCUMENT_PATH:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 225
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->VOUCHER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 226
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->CONTAINER_FILES:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 227
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->ACCOUNT_SECRETS:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 228
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;->DSN:Lcom/amazon/kcp/reader/provider/BookImageProvider$Parameter;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 230
    new-instance p2, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$2;

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$2;-><init>(Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;Landroid/graphics/Rect;IZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->processRenderingRequest(Ljava/lang/String;Ljava/util/concurrent/Callable;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 219
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pageRect is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing page index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A unique requestId is required for each rendering call"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private stringArrayToList([Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 306
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public handleRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v4, 0x2

    aput-object p3, v1, v4

    const-string v5, "handling call, method=%1$s, requestId=%2$s, extras=%3$s"

    .line 55
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    sget-object v1, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$4;->$SwitchMap$com$amazon$kcp$reader$provider$BookImageProvider$Method:[I

    invoke-static {p1}, Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;->valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/provider/BookImageProvider$Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v3, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    .line 72
    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->renderPageClip(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_1

    .line 75
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported method call: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 69
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->renderThumbnail(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    goto :goto_1

    .line 66
    :cond_2
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->cancelRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    invoke-direct {p0, p3}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->closeDocument(Landroid/os/Bundle;)V

    goto :goto_0

    .line 60
    :cond_4
    invoke-direct {p0, p3}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->openDocument(Landroid/os/Bundle;)V

    :goto_0
    const/4 p3, 0x0

    :goto_1
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v3

    const-string p1, "call successfully processed, method=%1$s, requestId=%2$s"

    .line 78
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-object p3
.end method
