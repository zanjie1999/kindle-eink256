.class public Lcom/amazon/kcp/cover/BitmapCoverCacheManager;
.super Lcom/amazon/kcp/cover/AbstractCoverCacheManager;
.source "BitmapCoverCacheManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kindle/cover/ImageSizes;I)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;-><init>(Landroid/content/Context;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kindle/cover/ImageSizes;I)V

    return-void
.end method


# virtual methods
.method protected getCoverCache(Landroid/content/Context;Lcom/amazon/kindle/util/drawing/Dimension;ILcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/util/PausableThreadPoolExecutor;)Lcom/amazon/kcp/cover/ICoverCache;
    .locals 0

    .line 33
    new-instance p1, Lcom/amazon/kcp/cover/BitmapCoverCache;

    invoke-direct {p1, p4, p5, p0}, Lcom/amazon/kcp/cover/BitmapCoverCache;-><init>(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/util/PausableThreadPoolExecutor;Lcom/amazon/kcp/cover/ICoverCache$ICoverCacheClient;)V

    return-object p1
.end method
