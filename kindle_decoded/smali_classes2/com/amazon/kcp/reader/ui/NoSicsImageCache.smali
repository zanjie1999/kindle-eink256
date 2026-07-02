.class public Lcom/amazon/kcp/reader/ui/NoSicsImageCache;
.super Lcom/amazon/kcp/reader/ui/AbstractImageCache;
.source "NoSicsImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bitmapLoaderExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile imageBitmaps:[Landroid/graphics/Bitmap;

.field private imageLoadingTasks:[Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v7, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$1;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$1;-><init>(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->bitmapLoaderExecutor:Ljava/util/concurrent/ExecutorService;

    .line 50
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->bitmapLoaderExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;)[Landroid/graphics/Bitmap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->imageBitmaps:[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;)[Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->imageLoadingTasks:[Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method configureAndCreateSics(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;III)V
    .locals 0

    .line 61
    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->createThumbnailCachePrefix(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->thumbnailCachePrefix:Ljava/lang/String;

    return-void
.end method

.method drawCachedThumbnail(IILandroid/widget/ImageView;)Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->getCachedBitmapPath(I)Ljava/io/File;

    move-result-object v4

    .line 85
    sget-object p1, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->PENDING_SERVICE_DRAWABLE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->imageLoadingTasks:[Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

    aget-object p1, p1, p2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;->cancel(Z)Z

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->imageLoadingTasks:[Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

    new-instance v6, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;-><init>(Lcom/amazon/kcp/reader/ui/NoSicsImageCache;ILandroid/widget/ImageView;Ljava/io/File;Lcom/amazon/kcp/reader/ui/NoSicsImageCache$1;)V

    aput-object v6, p1, p2

    .line 93
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->bitmapLoaderExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->imageLoadingTasks:[Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

    aget-object p2, p3, p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 95
    sget-object p1, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;->LOADING:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    return-object p1

    .line 97
    :cond_1
    sget-object p1, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;->NEEDS_RENDERING:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailState;

    return-object p1
.end method

.method public observeView(ILcom/amazon/kcp/reader/ui/AbstractImageCache$Observer;)V
    .locals 0

    return-void
.end method

.method public reset(I)V
    .locals 1

    .line 55
    new-array v0, p1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->imageBitmaps:[Landroid/graphics/Bitmap;

    .line 56
    new-array p1, p1, [Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->imageLoadingTasks:[Lcom/amazon/kcp/reader/ui/NoSicsImageCache$ImageLoadingTask;

    return-void
.end method

.method public runWhenReady(Ljava/lang/Runnable;)V
    .locals 0

    .line 78
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method shutdown()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/NoSicsImageCache;->bitmapLoaderExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method updateCache(I)V
    .locals 0

    return-void
.end method
