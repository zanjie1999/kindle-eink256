.class public Lcom/amazon/kcp/cover/BitmapCoverCache;
.super Ljava/lang/Object;
.source "BitmapCoverCache.java"

# interfaces
.implements Lcom/amazon/kcp/cover/ICoverCache;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private availableBitmaps:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapsInUse:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private buffer:[B

.field private final cacheClient:Lcom/amazon/kcp/cover/ICoverCache$ICoverCacheClient;

.field private final imageTaskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

.field private final type:Lcom/amazon/kindle/cover/ImageSizes$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/BitmapCoverCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/util/PausableThreadPoolExecutor;Lcom/amazon/kcp/cover/ICoverCache$ICoverCacheClient;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->availableBitmaps:Ljava/util/Queue;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->bitmapsInUse:Ljava/util/Map;

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 42
    iput-object v0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->buffer:[B

    .line 47
    iput-object p3, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->cacheClient:Lcom/amazon/kcp/cover/ICoverCache$ICoverCacheClient;

    .line 48
    iput-object p1, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->type:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 49
    iput-object p2, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->imageTaskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/cover/BitmapCoverCache;)Ljava/util/Map;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->bitmapsInUse:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/cover/BitmapCoverCache;)[B
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->buffer:[B

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/cover/BitmapCoverCache;)Ljava/util/Queue;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->availableBitmaps:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/cover/BitmapCoverCache;III)Landroid/graphics/Bitmap;
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/cover/BitmapCoverCache;->findReusableBitmap(III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/kcp/cover/BitmapCoverCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/cover/BitmapCoverCache;)Lcom/amazon/kindle/cover/ImageSizes$Type;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->type:Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/cover/BitmapCoverCache;)Lcom/amazon/kcp/cover/ICoverCache$ICoverCacheClient;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->cacheClient:Lcom/amazon/kcp/cover/ICoverCache$ICoverCacheClient;

    return-object p0
.end method

.method private findReusableBitmap(III)Landroid/graphics/Bitmap;
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->availableBitmaps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    if-eqz v0, :cond_1

    mul-int v1, p1, p2

    .line 117
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v2, v2, v3

    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    if-lt v2, v1, :cond_0

    goto :goto_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->availableBitmaps:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 124
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_2
    return-object v0
.end method


# virtual methods
.method createBitmapOption()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .line 107
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    return-object v0
.end method

.method createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .line 101
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getCover(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->bitmapsInUse:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public loadCover(Ljava/lang/String;Z)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->imageTaskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    new-instance v1, Lcom/amazon/kcp/cover/BitmapCoverCache$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/cover/BitmapCoverCache$1;-><init>(Lcom/amazon/kcp/cover/BitmapCoverCache;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public unloadAll()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->imageTaskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    new-instance v1, Lcom/amazon/kcp/cover/BitmapCoverCache$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/cover/BitmapCoverCache$3;-><init>(Lcom/amazon/kcp/cover/BitmapCoverCache;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public unloadCover(Ljava/lang/String;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/cover/BitmapCoverCache;->imageTaskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    new-instance v1, Lcom/amazon/kcp/cover/BitmapCoverCache$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/cover/BitmapCoverCache$2;-><init>(Lcom/amazon/kcp/cover/BitmapCoverCache;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
