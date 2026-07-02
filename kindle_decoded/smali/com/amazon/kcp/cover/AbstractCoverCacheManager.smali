.class public abstract Lcom/amazon/kcp/cover/AbstractCoverCacheManager;
.super Ljava/lang/Object;
.source "AbstractCoverCacheManager.java"

# interfaces
.implements Lcom/amazon/kcp/cover/ICoverCacheManager;
.implements Lcom/amazon/kcp/cover/ICoverCache$ICoverCacheClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private coverCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/cover/ImageSizes$Type;",
            "Lcom/amazon/kcp/cover/CoverLruCache;",
            ">;"
        }
    .end annotation
.end field

.field private coverImageFetcher:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

.field private coverInFlight:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/cover/UpdatableCover;",
            ">;>;"
        }
    .end annotation
.end field

.field private final coverService:Lcom/amazon/kindle/cover/ICoverImageService;

.field private currentType:Lcom/amazon/kindle/cover/ImageSizes$Type;

.field private filterSortCoverLruCache:Ljava/util/Map;
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

.field private final imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

.field private imageTaskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

.field private isFilterSortCoverCacheNeeded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private maxMemoryAllowed:I

.field private maxNumCovers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/cover/ImageSizes$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memoryAllocated:Ljava/util/concurrent/atomic/AtomicInteger;

.field private memoryPerImageType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/cover/ImageSizes$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kindle/cover/ImageSizes;I)V
    .locals 8

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverCaches:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverInFlight:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->filterSortCoverLruCache:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->isFilterSortCoverCacheNeeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->maxNumCovers:Ljava/util/Map;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->currentType:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->memoryPerImageType:Ljava/util/Map;

    .line 92
    iput v1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->maxMemoryAllowed:I

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->memoryAllocated:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 109
    iput-object p2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 110
    iput-object p3, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverService:Lcom/amazon/kindle/cover/ICoverImageService;

    .line 111
    iput-object p4, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    .line 112
    iput p5, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->maxMemoryAllowed:I

    .line 113
    sget-object p2, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->Factory:Lcom/amazon/kindle/util/PausableThreadPoolExecutor$Factory;

    invoke-virtual {p2}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor$Factory;->newSingleThreadExecutor()Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageTaskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    .line 114
    sget-object p2, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->Factory:Lcom/amazon/kindle/util/PausableThreadPoolExecutor$Factory;

    invoke-virtual {p2}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor$Factory;->newSingleThreadExecutor()Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverImageFetcher:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    .line 115
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 117
    invoke-static {}, Lcom/amazon/kindle/cover/ImageSizes$Type;->values()[Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object p2

    array-length p3, p2

    :goto_0
    if-ge v1, p3, :cond_1

    aget-object p5, p2, v1

    .line 120
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {p4, p5, v0}, Lcom/amazon/kindle/cover/ImageSizes;->getDimension(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kindle/util/drawing/Dimension;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 123
    iget v0, v4, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    mul-int/lit8 v0, v0, 0x4

    iget v2, v4, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    mul-int v0, v0, v2

    .line 124
    iget-object v2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->memoryPerImageType:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget v2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->maxMemoryAllowed:I

    div-int v0, v2, v0

    .line 129
    iget-object v2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->maxNumCovers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v7, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageTaskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    move-object v2, p0

    move-object v3, p1

    move v5, v0

    move-object v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getCoverCache(Landroid/content/Context;Lcom/amazon/kindle/util/drawing/Dimension;ILcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/util/PausableThreadPoolExecutor;)Lcom/amazon/kcp/cover/ICoverCache;

    move-result-object v2

    .line 132
    iget-object v3, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverCaches:Ljava/util/Map;

    new-instance v4, Lcom/amazon/kcp/cover/CoverLruCache;

    invoke-direct {v4, v0, v2}, Lcom/amazon/kcp/cover/CoverLruCache;-><init>(ILcom/amazon/kcp/cover/ICoverCache;)V

    invoke-interface {v3, p5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/cover/AbstractCoverCacheManager;Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->doUpdateCover(Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/cover/AbstractCoverCacheManager;)Lcom/amazon/kindle/cover/ICoverImageService;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverService:Lcom/amazon/kindle/cover/ICoverImageService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/cover/AbstractCoverCacheManager;)Ljava/util/Map;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverCaches:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private doUpdateCover(Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 288
    invoke-virtual {p1, p2, p3}, Lcom/amazon/kcp/cover/UpdatableCover;->finalizeCover(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method private getContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 18

    move-object/from16 v0, p0

    .line 698
    iget-object v1, v0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 699
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 701
    invoke-interface {v3}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 699
    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-nez v1, :cond_1

    .line 709
    iget-object v1, v0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 710
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 711
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 712
    new-instance v1, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object v3, v1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v17}, Lcom/amazon/kindle/content/ContentMetadata;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0

    .line 715
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadata;

    :cond_1
    :goto_0
    return-object v1
.end method

.method private getCoverImage(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/kindle/cover/ImageSizes$Type;ZZZ)Lcom/amazon/kcp/cover/UpdatableCover;
    .locals 12

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 324
    invoke-virtual/range {v0 .. v11}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getCoverImage(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/kindle/cover/ImageSizes$Type;ZZZLjava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v0

    return-object v0
.end method

.method private getImageFilePath(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverService:Lcom/amazon/kindle/cover/ICoverImageService;

    invoke-interface {v0}, Lcom/amazon/kindle/cover/ICoverImageService;->getCoverFilenamer()Lcom/amazon/kindle/cover/ICoverFilenamer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/cover/ICoverFilenamer;->getCoverFilename(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/model/content/IListableBook;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 685
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    invoke-static {p1, p2}, Lcom/amazon/kcp/util/GroupContentUtils;->getGroupMetadataForId(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    .line 688
    invoke-virtual {p1, p4, p5}, Lcom/amazon/kindle/content/GroupMetadata;->setImageData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 692
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private updateCover(Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .line 275
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->doUpdateCover(Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$1;-><init>(Lcom/amazon/kcp/cover/AbstractCoverCacheManager;Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private updateCover(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverInFlight:Ljava/util/Map;

    .line 264
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/cover/UpdatableCover;

    .line 268
    invoke-direct {p0, v1, p2, p1}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->updateCover(Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cacheCovers(Ljava/util/Map;ILcom/amazon/kindle/util/drawing/Dimension;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;I",
            "Lcom/amazon/kindle/util/drawing/Dimension;",
            "Z)V"
        }
    .end annotation

    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    iget v2, p3, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget p3, p3, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-virtual {v0, v1, v2, p3}, Lcom/amazon/kindle/cover/ImageSizes;->getTypeByWidthHeight(Lcom/amazon/kcp/library/models/BookType;II)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object p3

    .line 523
    iput-object p3, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->currentType:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 524
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverCaches:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/cover/CoverLruCache;

    if-nez v0, :cond_0

    .line 526
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported image size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 529
    invoke-virtual {v0, p2, v1}, Lcom/amazon/kcp/cover/CoverLruCache;->setPivot(IZ)V

    .line 530
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 531
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v6, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getCoverImage(Lcom/amazon/kindle/model/content/IBookID;ILcom/amazon/kindle/cover/ImageSizes$Type;ZZZ)Lcom/amazon/kcp/cover/UpdatableCover;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 535
    sget-object p2, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->TAG:Ljava/lang/String;

    const-string p3, "error caching covers"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public cancel(Lcom/amazon/kcp/cover/UpdatableCover;)V
    .locals 2

    .line 510
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/UpdatableCover;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverService:Lcom/amazon/kindle/cover/ICoverImageService;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/cover/ICoverImageService;->cancelRequest(Lcom/amazon/kindle/cover/ICover;)V

    return-void
.end method

.method public clearCache()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverCaches:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/cover/CoverLruCache;

    .line 471
    invoke-virtual {v1}, Lcom/amazon/kcp/cover/CoverLruCache;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .locals 7

    .line 477
    invoke-static {}, Lcom/amazon/kindle/cover/ImageSizes$Type;->values()[Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 478
    iget-object v4, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverCaches:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/cover/CoverLruCache;

    if-nez v4, :cond_0

    goto :goto_2

    .line 482
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 484
    invoke-direct {p0, v5, v3}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getImageFilePath(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v3

    .line 486
    iget-object v5, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverInFlight:Ljava/util/Map;

    .line 487
    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    .line 489
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kcp/cover/UpdatableCover;

    .line 490
    invoke-virtual {p0, v6}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->cancel(Lcom/amazon/kcp/cover/UpdatableCover;)V

    goto :goto_1

    .line 493
    :cond_1
    invoke-virtual {v4, v3}, Lcom/amazon/kcp/cover/CoverLruCache;->remove(Ljava/lang/String;)Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kcp/cover/UpdatableCover;
    .locals 12

    .line 432
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getCoverBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAuthor()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 432
    invoke-virtual/range {v0 .. v11}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getCoverImage(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/kindle/cover/ImageSizes$Type;ZZZLjava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object p1

    return-object p1
.end method

.method public getCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cover/ImageSizes$Type;I)Lcom/amazon/kcp/cover/UpdatableCover;
    .locals 9

    .line 425
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getCoverBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAuthor()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getCoverImage(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/kindle/cover/ImageSizes$Type;ZZZ)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object p1

    return-object p1
.end method

.method public getCover(Lcom/amazon/kindle/model/content/IBookID;III)Lcom/amazon/kcp/cover/UpdatableCover;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 405
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    invoke-static {v0, p2, p3, v1}, Lcom/amazon/android/util/UIUtils;->getImageSizeForPx(Lcom/amazon/kcp/library/models/BookType;IILcom/amazon/kindle/cover/ImageSizes;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    .line 408
    invoke-virtual/range {v2 .. v8}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getCoverImage(Lcom/amazon/kindle/model/content/IBookID;ILcom/amazon/kindle/cover/ImageSizes$Type;ZZZ)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object p1

    return-object p1
.end method

.method public getCover(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;I)Lcom/amazon/kcp/cover/UpdatableCover;
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    .line 445
    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getCoverImage(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/kindle/cover/ImageSizes$Type;ZZZ)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object p1

    return-object p1
.end method

.method public getCover(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;IZLjava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/cover/UpdatableCover;
    .locals 12

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p5

    move-object/from16 v6, p4

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 453
    invoke-virtual/range {v0 .. v11}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getCoverImage(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/kindle/cover/ImageSizes$Type;ZZZLjava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v0

    return-object v0
.end method

.method abstract getCoverCache(Landroid/content/Context;Lcom/amazon/kindle/util/drawing/Dimension;ILcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/util/PausableThreadPoolExecutor;)Lcom/amazon/kcp/cover/ICoverCache;
.end method

.method declared-synchronized getCoverImage(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/kindle/cover/ImageSizes$Type;ZZZLjava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/cover/UpdatableCover;
    .locals 14
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p2

    move/from16 v9, p5

    monitor-enter p0

    .line 335
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->COVER_IMAGE_LOAD:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v2, 0x1

    invoke-static {v1, v2, v8}, Lcom/amazon/kcp/library/LibraryDisplayItemUtils;->logPerfMarkerIfNecessary(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZLcom/amazon/kindle/model/content/IBookID;)V

    .line 338
    invoke-virtual/range {p6 .. p6}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getMaximumAllowedSizeToFetch()Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v10

    .line 340
    invoke-direct {p0, v8, v10}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getImageFilePath(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v11

    .line 341
    iput-object v10, v7, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->currentType:Lcom/amazon/kindle/cover/ImageSizes$Type;

    .line 342
    iget-object v1, v7, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverCaches:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/amazon/kcp/cover/CoverLruCache;

    if-eqz v12, :cond_7

    .line 344
    invoke-virtual {v12, v11, v9}, Lcom/amazon/kcp/cover/CoverLruCache;->updatePosition(Ljava/lang/String;I)V

    if-nez v0, :cond_0

    move-object v1, p0

    move-object/from16 v2, p2

    move-object v3, v10

    move-object v4, v11

    move/from16 v5, p7

    move/from16 v6, p8

    .line 351
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getUpdatableCover(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;ZZ)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v1

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p0, p1, v10, v11}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getUpdatableCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v1

    :goto_0
    move-object v13, v1

    .line 356
    invoke-virtual {v12, v11}, Lcom/amazon/kcp/cover/CoverLruCache;->getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 358
    invoke-direct {p0, v11, v1}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->updateCover(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 359
    invoke-virtual {p0, v1, v8, v11, v10}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->scaleCover(Landroid/graphics/drawable/Drawable;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-object v13

    .line 363
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {p0, v11, v9, v10}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->makeImageAvailableInCache(Ljava/lang/String;ILcom/amazon/kindle/cover/ImageSizes$Type;)V

    goto :goto_2

    .line 366
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not available on device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    :cond_3
    instance-of v1, v0, Lcom/amazon/kindle/model/content/IListableBook;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/amazon/kindle/model/content/IListableBook;

    goto :goto_1

    :cond_4
    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    .line 373
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    .line 375
    iget-object v1, v7, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverService:Lcom/amazon/kindle/cover/ICoverImageService;

    sget-object v2, Lcom/amazon/kindle/cover/ICoverImageService$CoverType;->NONE:Lcom/amazon/kindle/cover/ICoverImageService$CoverType;

    const/4 v3, 0x1

    new-instance v4, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$2;

    invoke-direct {v4, p0, v9, v10}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$2;-><init>(Lcom/amazon/kcp/cover/AbstractCoverCacheManager;ILcom/amazon/kindle/cover/ImageSizes$Type;)V

    move-object p1, v1

    move-object/from16 p2, v0

    move-object/from16 p3, v10

    move-object/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v4

    invoke-interface/range {p1 .. p6}, Lcom/amazon/kindle/cover/ICoverImageService;->submitCoverFetch(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;ZLcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;)V

    .line 382
    :cond_5
    instance-of v0, v13, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    if-eqz v0, :cond_6

    .line 383
    move-object v0, v13

    check-cast v0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    invoke-virtual {v0, v10}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->genTempLocalCoverAsync(Lcom/amazon/kindle/cover/ImageSizes$Type;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :cond_6
    :goto_2
    monitor-exit p0

    return-object v13

    .line 346
    :cond_7
    :try_start_2
    sget-object v0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 347
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCoverImage(Lcom/amazon/kindle/model/content/IBookID;ILcom/amazon/kindle/cover/ImageSizes$Type;ZZZ)Lcom/amazon/kcp/cover/UpdatableCover;
    .locals 9

    monitor-enter p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 316
    :try_start_0
    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->getCoverImage(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/kindle/cover/ImageSizes$Type;ZZZ)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCoverService()Lcom/amazon/kindle/cover/ICoverImageService;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverService:Lcom/amazon/kindle/cover/ICoverImageService;

    return-object v0
.end method

.method public getMaxCoversCached(Lcom/amazon/kindle/util/drawing/Dimension;)I
    .locals 3

    .line 636
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    iget v2, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget p1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/kindle/cover/ImageSizes;->getTypeByWidthHeight(Lcom/amazon/kcp/library/models/BookType;II)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object p1

    .line 638
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->maxNumCovers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->maxNumCovers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method getUpdatableCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;)Lcom/amazon/kcp/cover/UpdatableCover;
    .locals 4

    .line 602
    new-instance v0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    iget-object v1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    .line 603
    invoke-virtual {v1, p2, v2}, Lcom/amazon/kindle/cover/ImageSizes;->getWidth(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    .line 604
    invoke-virtual {v2, p2, v3}, Lcom/amazon/kindle/cover/ImageSizes;->getHeight(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result p2

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;-><init>(Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kcp/library/ILibraryDisplayItem;II)V

    .line 606
    iget-object p1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverInFlight:Ljava/util/Map;

    monitor-enter p1

    .line 607
    :try_start_0
    iget-object p2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverInFlight:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    .line 609
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 610
    iget-object v1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverInFlight:Ljava/util/Map;

    invoke-interface {v1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method getUpdatableCover(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;Ljava/lang/String;ZZ)Lcom/amazon/kcp/cover/UpdatableCover;
    .locals 2

    if-eqz p5, :cond_0

    .line 581
    new-instance p4, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    iget-object p5, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    .line 582
    invoke-virtual {p5, p2, v0}, Lcom/amazon/kindle/cover/ImageSizes;->getWidth(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result p5

    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    .line 583
    invoke-virtual {v0, p2, v1}, Lcom/amazon/kindle/cover/ImageSizes;->getHeight(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result p2

    invoke-direct {p4, p0, p1, p5, p2}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;-><init>(Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/model/content/IBookID;II)V

    goto :goto_0

    .line 585
    :cond_0
    new-instance p4, Lcom/amazon/kcp/cover/UpdatableCover;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    .line 586
    invoke-virtual {p5, p2, v0}, Lcom/amazon/kindle/cover/ImageSizes;->getWidth(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result p5

    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    .line 587
    invoke-virtual {v0, p2, v1}, Lcom/amazon/kindle/cover/ImageSizes;->getHeight(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result p2

    invoke-direct {p4, p0, p1, p5, p2}, Lcom/amazon/kcp/cover/UpdatableCover;-><init>(Lcom/amazon/kcp/cover/ICoverCacheManager;Ljava/lang/String;II)V

    .line 590
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverInFlight:Ljava/util/Map;

    monitor-enter p1

    .line 591
    :try_start_0
    iget-object p2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverInFlight:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_1

    .line 593
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 594
    iget-object p5, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverInFlight:Ljava/util/Map;

    invoke-interface {p5, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    :cond_1
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    monitor-exit p1

    return-object p4

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public handleEvent(Lcom/amazon/kindle/cover/CoverChangeEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 224
    invoke-virtual {p1}, Lcom/amazon/kindle/cover/CoverChangeEvent;->getCover()Lcom/amazon/kindle/cover/ICover;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/cover/ICover;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverInFlight:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 228
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/cover/CoverChangeEvent;->getCover()Lcom/amazon/kindle/cover/ICover;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/cover/ICover;->getCoverSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/cover/ImageSizes$Type;->getType(Ljava/lang/String;)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    sget-object v2, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kindle/cover/CoverChangeEvent;->getCover()Lcom/amazon/kindle/cover/ICover;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICover;->getCoverSize()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverCaches:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverCaches:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/cover/CoverLruCache;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/cover/CoverLruCache;->put(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method makeImageAvailableInCache(Ljava/lang/String;ILcom/amazon/kindle/cover/ImageSizes$Type;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverCaches:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/cover/CoverLruCache;

    if-eqz p3, :cond_0

    .line 393
    invoke-virtual {p3, p1, p2}, Lcom/amazon/kcp/cover/CoverLruCache;->put(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onBookOpen(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 253
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_OPENED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->clearCache()V

    :cond_0
    return-void
.end method

.method public onCoverLoaded(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)V
    .locals 0

    if-nez p4, :cond_0

    .line 196
    iget-object p4, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->memoryPerImageType:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 197
    iget-object p4, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->memoryAllocated:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p4, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    .line 199
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->updateCover(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onCoverRemoved(Ljava/lang/String;)Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverInFlight:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public declared-synchronized onRegistrationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    monitor-enter p0

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->clearCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pauseUpdates()V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageTaskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->pause()V

    return-void
.end method

.method public resumeUpdates()V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageTaskExecutor:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/amazon/kindle/util/PausableThreadPoolExecutor;->resume()V

    return-void
.end method

.method scaleCover(Landroid/graphics/drawable/Drawable;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)V
    .locals 9

    .line 292
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    if-ne p4, v0, :cond_0

    .line 293
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    .line 294
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 295
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/cover/ImageSizes;->getWidth(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result v7

    .line 296
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    sget-object v1, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/cover/ImageSizes;->getHeight(Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kcp/library/models/BookType;)I

    move-result v8

    if-ge p4, v7, :cond_0

    if-ge p1, v8, :cond_0

    .line 299
    iget-object p1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverImageFetcher:Lcom/amazon/kindle/util/PausableThreadPoolExecutor;

    new-instance p4, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v6

    move-object v3, p4

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$CoverImageScalingRequest;-><init>(Lcom/amazon/kcp/cover/AbstractCoverCacheManager;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p1, p4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public setCachePivot(ILcom/amazon/kindle/cover/ImageSizes$Type;)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverCaches:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/cover/CoverLruCache;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 630
    invoke-virtual {p2, p1, v0}, Lcom/amazon/kcp/cover/CoverLruCache;->setPivot(IZ)V

    :cond_0
    return-void
.end method

.method public setCachePivot(ILcom/amazon/kindle/util/drawing/Dimension;)V
    .locals 3

    .line 620
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->imageSizes:Lcom/amazon/kindle/cover/ImageSizes;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    iget v2, p2, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    iget p2, p2, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/amazon/kindle/cover/ImageSizes;->getTypeByWidthHeight(Lcom/amazon/kcp/library/models/BookType;II)Lcom/amazon/kindle/cover/ImageSizes$Type;

    move-result-object p2

    .line 622
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->setCachePivot(ILcom/amazon/kindle/cover/ImageSizes$Type;)V

    return-void
.end method

.method public updateCoverPosition(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;I)V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->coverCaches:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/cover/CoverLruCache;

    if-eqz p2, :cond_0

    .line 573
    invoke-virtual {p2, p1, p3}, Lcom/amazon/kcp/cover/CoverLruCache;->updatePosition(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
