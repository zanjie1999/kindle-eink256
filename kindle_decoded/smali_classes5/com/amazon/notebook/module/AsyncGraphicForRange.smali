.class public Lcom/amazon/notebook/module/AsyncGraphicForRange;
.super Ljava/lang/Object;
.source "AsyncGraphicForRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;
    }
.end annotation


# static fields
.field private static final DESIRED_CACHE_SIZE:I = 0x4000

.field private static final DRAWN:I = 0x1

.field private static final FALLBACK_DESIRED_CACHE_SIZE:I = 0x2000

.field private static final LOADING:I = 0x0

.field private static final MAX_RENDERING_THREADS:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final graphicCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field final maxMemory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/notebook/module/AsyncGraphicForRange;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/AsyncGraphicForRange;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v1, v0

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange;->maxMemory:I

    .line 44
    iput-object p1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 p1, 0x3

    .line 45
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 46
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange;->handler:Landroid/os/Handler;

    .line 49
    iget p1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange;->maxMemory:I

    const/16 v0, 0x4000

    if-le v0, p1, :cond_0

    const/16 v0, 0x2000

    if-le v0, p1, :cond_0

    const/4 v0, 0x0

    .line 55
    :cond_0
    sget-object p1, Lcom/amazon/notebook/module/AsyncGraphicForRange;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializing cache with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance p1, Lcom/amazon/notebook/module/GraphicLruCache;

    invoke-direct {p1, v0}, Lcom/amazon/notebook/module/GraphicLruCache;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange;->graphicCache:Landroidx/collection/LruCache;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/notebook/module/AsyncGraphicForRange;)Landroidx/collection/LruCache;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange;->graphicCache:Landroidx/collection/LruCache;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/notebook/module/AsyncGraphicForRange;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange;->graphicCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    .line 71
    iget-object v0, p0, Lcom/amazon/notebook/module/AsyncGraphicForRange;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public requestGraphicForPage(Lcom/amazon/kindle/krx/reader/IPosition;IILandroid/widget/ImageView;Landroid/view/View;)Ljava/util/concurrent/Future;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "II",
            "Landroid/widget/ImageView;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    move-object v9, p0

    .line 66
    iget-object v10, v9, Lcom/amazon/notebook/module/AsyncGraphicForRange;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;

    iget-object v8, v9, Lcom/amazon/notebook/module/AsyncGraphicForRange;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v3, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;-><init>(Lcom/amazon/notebook/module/AsyncGraphicForRange;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IILandroid/widget/ImageView;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public requestGraphicForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IILandroid/widget/ImageView;Landroid/view/View;)Ljava/util/concurrent/Future;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "II",
            "Landroid/widget/ImageView;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    move-object v9, p0

    .line 61
    iget-object v10, v9, Lcom/amazon/notebook/module/AsyncGraphicForRange;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;

    iget-object v8, v9, Lcom/amazon/notebook/module/AsyncGraphicForRange;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/amazon/notebook/module/AsyncGraphicForRange$AsyncGraphicCall;-><init>(Lcom/amazon/notebook/module/AsyncGraphicForRange;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IILandroid/widget/ImageView;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
