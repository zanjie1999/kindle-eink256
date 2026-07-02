.class public final Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;
.super Ljava/lang/Object;
.source "CoverUrlDownloadManager.kt"

# interfaces
.implements Lcom/amazon/kcp/home/util/CoverUrlDownloadManager;


# instance fields
.field private final coverCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/cover/ImageSizes$Type;",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/cover/UpdatableCover;",
            ">;>;"
        }
    .end annotation
.end field

.field private final imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

.field private final imageSizes:Lcom/amazon/kindle/cover/ImageSizes;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/home/util/CardImageProvider;Lcom/amazon/kindle/cover/ImageSizes;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/home/util/CardImageProvider;",
            "Lcom/amazon/kindle/cover/ImageSizes;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/cover/ImageSizes$Type;",
            "+",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/cover/UpdatableCover;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "imageProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageSizes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverCaches"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;->imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

    iput-object p2, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    iput-object p3, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;->coverCaches:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$loadAndUpdateCover(Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;Lcom/amazon/kcp/cover/UpdatableCover;Ljava/lang/String;Landroid/util/LruCache;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;->loadAndUpdateCover(Lcom/amazon/kcp/cover/UpdatableCover;Ljava/lang/String;Landroid/util/LruCache;)Z

    move-result p0

    return p0
.end method

.method private final loadAndUpdateCover(Lcom/amazon/kcp/cover/UpdatableCover;Ljava/lang/String;Landroid/util/LruCache;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/cover/UpdatableCover;",
            "Ljava/lang/String;",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/cover/UpdatableCover;",
            ">;)Z"
        }
    .end annotation

    .line 63
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x1

    .line 65
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 67
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    const-string v4, "Utils.getFactory()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Utils.getFactory().context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v1, p2}, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;->updateCover(Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 70
    invoke-virtual {p3, p2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/cover/UpdatableCover;

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final updateCover(Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .line 54
    new-instance v0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$updateCover$r$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$updateCover$r$1;-><init>(Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    const-string p2, "ThreadPoolManager.getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final fetchImageForUpdatableCover$LibraryModule_release(Lcom/amazon/kcp/cover/UpdatableCover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/LruCache;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/cover/UpdatableCover;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/cover/UpdatableCover;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "updatableCover"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverPath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1, p4, p5}, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;->loadAndUpdateCover(Lcom/amazon/kcp/cover/UpdatableCover;Ljava/lang/String;Landroid/util/LruCache;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;->imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

    new-instance v1, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$fetchImageForUpdatableCover$1;

    invoke-direct {v1, p0, p1, p4, p5}, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$fetchImageForUpdatableCover$1;-><init>(Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;Lcom/amazon/kcp/cover/UpdatableCover;Ljava/lang/String;Landroid/util/LruCache;)V

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/amazon/kcp/home/util/CardImageProvider;->getImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/util/ImageDownloadCallback;)V

    :cond_0
    return-void
.end method

.method public getCover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kcp/cover/UpdatableCover;
    .locals 9

    const-string v0, "coverUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageSize"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;->coverCaches:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/util/LruCache;

    if-eqz v7, :cond_0

    .line 39
    invoke-virtual {v7, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/cover/UpdatableCover;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Lcom/amazon/kcp/cover/UpdatableCover;

    .line 45
    iget-object v1, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1, p4, v2}, Lcom/amazon/kindle/cover/ImageSizes;->getWidth(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result v1

    .line 46
    iget-object v2, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v2, p4, v3}, Lcom/amazon/kindle/cover/ImageSizes;->getHeight(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result p4

    .line 44
    invoke-direct {v0, p3, v1, p4}, Lcom/amazon/kcp/cover/UpdatableCover;-><init>(Ljava/lang/String;II)V

    .line 47
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p4

    new-instance v8, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$getCover$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$getCover$1;-><init>(Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;Lcom/amazon/kcp/cover/UpdatableCover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/LruCache;)V

    invoke-interface {p4, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object v0
.end method
