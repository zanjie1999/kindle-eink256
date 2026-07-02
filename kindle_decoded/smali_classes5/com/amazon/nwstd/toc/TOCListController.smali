.class public Lcom/amazon/nwstd/toc/TOCListController;
.super Ljava/lang/Object;
.source "TOCListController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/toc/TOCListController$TOCAsyncDrawable;,
        Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;,
        Lcom/amazon/nwstd/toc/TOCListController$ItemType;
    }
.end annotation


# static fields
.field private static final EXECUTOR_POOL_THREADS_SIZE:I = 0x4

.field private static final EXECUTOR_TERMINATION_DURATION:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field protected final mContext:Landroid/content/Context;

.field protected mDisplaySections:Z

.field private final mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mListItemCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxThumbnailHeight:I

.field private final mMaxThumbnailWidth:I

.field protected final mPeriodicalTOC:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

.field private final mThumbnailsCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/amazon/nwstd/toc/TOCListAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/toc/TOCListController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/nwstd/toc/IPeriodicalTOC;Lcom/amazon/kindle/model/content/ILocalBookItem;Z)V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x1

    .line 115
    iput-boolean p4, p0, Lcom/amazon/nwstd/toc/TOCListController;->mDisplaySections:Z

    .line 282
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mContext:Landroid/content/Context;

    .line 283
    iput-object p3, p0, Lcom/amazon/nwstd/toc/TOCListController;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 284
    iput-object p2, p0, Lcom/amazon/nwstd/toc/TOCListController;->mPeriodicalTOC:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    .line 285
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mThumbnailsCache:Landroid/util/SparseArray;

    .line 286
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mListItemCache:Landroid/util/SparseArray;

    .line 287
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/TOCListController;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 288
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/newsstand/core/R$dimen;->article_list_image_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mMaxThumbnailHeight:I

    .line 289
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/newsstand/core/R$dimen;->article_list_image_max_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mMaxThumbnailWidth:I

    .line 291
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/TOCListController;->createExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/nwstd/toc/TOCListController;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mMaxThumbnailWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/nwstd/toc/TOCListController;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mMaxThumbnailHeight:I

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/nwstd/ui/MaskedImageView;)Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/amazon/nwstd/toc/TOCListController;->getBitmapWorkerTask(Lcom/amazon/nwstd/ui/MaskedImageView;)Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/nwstd/toc/TOCListController;)Landroid/util/SparseArray;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mThumbnailsCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/nwstd/toc/TOCListController;Lcom/amazon/nwstd/toc/IArticleTOCItem;)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/toc/TOCListController;->isArticleAvailable(Lcom/amazon/nwstd/toc/IArticleTOCItem;)Z

    move-result p0

    return p0
.end method

.method private static cancelPotentialWork(Lcom/amazon/nwstd/toc/IArticleTOCItem;Lcom/amazon/nwstd/ui/MaskedImageView;)Z
    .locals 2

    .line 239
    invoke-static {p1}, Lcom/amazon/nwstd/toc/TOCListController;->getBitmapWorkerTask(Lcom/amazon/nwstd/ui/MaskedImageView;)Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 242
    invoke-virtual {p1}, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;->getArticle()Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 246
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    return v0
.end method

.method private static getBitmapWorkerTask(Lcom/amazon/nwstd/ui/MaskedImageView;)Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;
    .locals 1

    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 266
    instance-of v0, p0, Lcom/amazon/nwstd/toc/TOCListController$TOCAsyncDrawable;

    if-eqz v0, :cond_0

    .line 267
    check-cast p0, Lcom/amazon/nwstd/toc/TOCListController$TOCAsyncDrawable;

    .line 268
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/TOCListController$TOCAsyncDrawable;->getBitmapWorkerTask()Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isArticleAvailable(Lcom/amazon/nwstd/toc/IArticleTOCItem;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 548
    invoke-interface {p1}, Lcom/amazon/nwstd/toc/IArticleTOCItem;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected createExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, 0x4

    .line 299
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public destroyCache()V
    .locals 6

    .line 625
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    :goto_0
    iput-object v2, p0, Lcom/amazon/nwstd/toc/TOCListController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_1
    const-string v0, "TOCListController ExecutorService did not shutdown correctly"

    .line 632
    invoke-static {v1, v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 634
    :goto_1
    iput-object v2, p0, Lcom/amazon/nwstd/toc/TOCListController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 635
    throw v0

    :cond_0
    :goto_2
    const/4 v0, 0x0

    .line 637
    :goto_3
    iget-object v3, p0, Lcom/amazon/nwstd/toc/TOCListController;->mListItemCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 638
    iget-object v3, p0, Lcom/amazon/nwstd/toc/TOCListController;->mListItemCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mListItemCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 642
    :goto_4
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mThumbnailsCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 643
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mThumbnailsCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 644
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mThumbnailsCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mThumbnailsCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 648
    :cond_3
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mThumbnailsCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method protected getArticleText(Lcom/amazon/android/docviewer/ITOCItem;ZZ)Ljava/lang/CharSequence;
    .locals 1

    .line 517
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/TOCListController;->isArticleItem(Lcom/amazon/android/docviewer/ITOCItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    move-object v0, p1

    check-cast v0, Lcom/amazon/nwstd/toc/IArticleTOCItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/nwstd/toc/TOCListController;->getTitleTextColor(Lcom/amazon/android/docviewer/ITOCItem;ZZ)I

    move-result p1

    invoke-virtual {p0, p2, p3}, Lcom/amazon/nwstd/toc/TOCListController;->getPreviewTextColor(ZZ)I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/amazon/nwstd/toc/TOCUtils;->getHTMLFormattedTitleText(Lcom/amazon/nwstd/toc/IArticleTOCItem;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 520
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getBackgroundColorResource(Lcom/amazon/android/docviewer/ITOCItem;ZZ)I
    .locals 0

    .line 531
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/TOCListController;->isArticleItem(Lcom/amazon/android/docviewer/ITOCItem;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 533
    sget p1, Lcom/amazon/kindle/newsstand/core/R$color;->articlelist_article_bgcolor_selected_dark:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kindle/newsstand/core/R$color;->articlelist_article_bgcolor_selected_light:I

    :goto_0
    return p1

    :cond_1
    if-eqz p3, :cond_2

    .line 535
    sget p1, Lcom/amazon/kindle/newsstand/core/R$color;->articlelist_article_bgcolor_dark:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/amazon/kindle/newsstand/core/R$color;->articlelist_article_bgcolor_light:I

    :goto_1
    return p1

    :cond_3
    if-eqz p3, :cond_4

    .line 538
    sget p1, Lcom/amazon/kindle/newsstand/core/R$color;->articlelist_section_bgcolor_dark:I

    goto :goto_2

    :cond_4
    sget p1, Lcom/amazon/kindle/newsstand/core/R$color;->articlelist_section_bgcolor_light:I

    :goto_2
    return p1
.end method

.method public getCount()I
    .locals 2

    .line 307
    iget-boolean v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mDisplaySections:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mPeriodicalTOC:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCArticles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mPeriodicalTOC:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCSections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mPeriodicalTOC:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCArticles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getDisplaySections()Z
    .locals 1

    .line 656
    iget-boolean v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mDisplaySections:Z

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 596
    new-instance v0, Lcom/amazon/nwstd/toc/TOCListController$1;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/toc/TOCListController$1;-><init>(Lcom/amazon/nwstd/toc/TOCListController;)V

    .line 615
    new-instance v1, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 616
    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 617
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/PaintDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    return-object v1
.end method

.method public getItem(I)Lcom/amazon/android/docviewer/ITOCItem;
    .locals 5

    .line 324
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mListItemCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mListItemCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/ITOCItem;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 329
    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mPeriodicalTOC:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCSections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/toc/ISectionTOCItem;

    .line 330
    iget-boolean v3, p0, Lcom/amazon/nwstd/toc/TOCListController;->mDisplaySections:Z

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, 0x1

    if-ne p1, v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mListItemCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2

    :cond_2
    move v0, v3

    .line 337
    :cond_3
    invoke-interface {v2}, Lcom/amazon/nwstd/toc/ISectionTOCItem;->getArticles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/nwstd/toc/IArticleTOCItem;

    add-int/lit8 v4, v0, 0x1

    if-ne p1, v0, :cond_4

    .line 339
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mListItemCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v3

    :cond_4
    move v0, v4

    goto :goto_0

    .line 346
    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/TOCListController;->getItem(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/TOCListController;->isArticleItem(Lcom/amazon/android/docviewer/ITOCItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 364
    sget-object p1, Lcom/amazon/nwstd/toc/TOCListController$ItemType;->ITEM_TYPE_ARTICLE:Lcom/amazon/nwstd/toc/TOCListController$ItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    .line 366
    :cond_0
    sget-object p1, Lcom/amazon/nwstd/toc/TOCListController$ItemType;->ITEM_TYPE_SECTION_HEADER:Lcom/amazon/nwstd/toc/TOCListController$ItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1
.end method

.method protected getLayoutId(Lcom/amazon/android/docviewer/ITOCItem;)I
    .locals 1

    .line 421
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/TOCListController;->isArticleItem(Lcom/amazon/android/docviewer/ITOCItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    sget p1, Lcom/amazon/kindle/newsstand/core/R$layout;->periodical_toc_articlelist_article:I

    return p1

    .line 424
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 425
    sget p1, Lcom/amazon/kindle/newsstand/core/R$layout;->periodical_toc_articlelist_section_separator:I

    return p1

    .line 427
    :cond_1
    sget p1, Lcom/amazon/kindle/newsstand/core/R$layout;->periodical_toc_articlelist_section:I

    return p1
.end method

.method protected getPreviewTextColor(ZZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 503
    sget p2, Lcom/amazon/kindle/newsstand/core/R$color;->articlelist_article_textcolor_default_dark:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/amazon/kindle/newsstand/core/R$color;->articlelist_article_textcolor_default_light:I

    :goto_0
    if-eqz p1, :cond_1

    .line 505
    sget p2, Lcom/amazon/kindle/newsstand/core/R$color;->articlelist_textcolor_selected:I

    .line 507
    :cond_1
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getSectionIndexOfTheFirstVisibleItem(I)I
    .locals 4

    .line 569
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/TOCListController;->getItem(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/TOCListController;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/toc/TOCListController;->isArticleItem(Lcom/amazon/android/docviewer/ITOCItem;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 574
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/TOCListController;->getItem(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    if-eqz v0, :cond_2

    .line 579
    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/toc/TOCListController;->isArticleItem(Lcom/amazon/android/docviewer/ITOCItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mPeriodicalTOC:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCSections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/toc/ISectionTOCItem;

    .line 581
    move-object v3, v0

    check-cast v3, Lcom/amazon/nwstd/toc/IArticleTOCItem;

    invoke-interface {v3}, Lcom/amazon/nwstd/toc/IArticleTOCItem;->getSection()Lcom/amazon/nwstd/toc/ISectionTOCItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return p1
.end method

.method public getTOCSectionsCount()I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mPeriodicalTOC:Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCSections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getTitleTextColor(Lcom/amazon/android/docviewer/ITOCItem;ZZ)I
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/model/content/LocalBookState;->isTocItemRead(I)Z

    move-result p1

    if-eqz p3, :cond_0

    .line 488
    sget v0, Lcom/amazon/kindle/newsstand/core/R$color;->articlelist_article_textcolor_default_dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/newsstand/core/R$color;->articlelist_article_textcolor_default_light:I

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 490
    sget p1, Lcom/amazon/kindle/newsstand/core/R$color;->articlelist_article_textcolor_read_dark:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/amazon/kindle/newsstand/core/R$color;->articlelist_article_textcolor_read_light:I

    :goto_1
    move v0, p1

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 492
    sget v0, Lcom/amazon/kindle/newsstand/core/R$color;->articlelist_textcolor_selected:I

    .line 494
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;I)Landroid/view/View;
    .locals 4

    .line 378
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/TOCListController;->getItem(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 386
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v3

    if-eq v2, v3, :cond_3

    :cond_0
    if-eqz p2, :cond_2

    .line 388
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v2

    if-eq p2, v2, :cond_2

    .line 389
    :cond_1
    sget-object p2, Lcom/amazon/nwstd/toc/TOCListController;->TAG:Ljava/lang/String;

    const/16 v2, 0x8

    const-string v3, "The type of the row to recycle android gave us is different from the row type that we want to construct. This is not normal. Either a new article list row was added without updating the list of type or the getTag() of the row has been overriten"

    invoke-static {p2, v2, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 393
    :cond_2
    iget-object p2, p0, Lcom/amazon/nwstd/toc/TOCListController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/toc/TOCListController;->getLayoutId(Lcom/amazon/android/docviewer/ITOCItem;)I

    move-result v2

    invoke-static {p2, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 394
    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    const/4 v2, 0x1

    if-ne p1, p3, :cond_4

    const/4 p3, 0x1

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    .line 398
    :goto_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/amazon/nwstd/toc/TOCListController;->updateView(Lcom/amazon/android/docviewer/ITOCItem;Landroid/view/View;Z)V

    .line 402
    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/toc/TOCListController;->isArticleItem(Lcom/amazon/android/docviewer/ITOCItem;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 403
    iget-object p3, p0, Lcom/amazon/nwstd/toc/TOCListController;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr p1, v2

    .line 404
    invoke-virtual {p0}, Lcom/amazon/nwstd/toc/TOCListController;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 405
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/TOCListController;->getItemViewType(I)I

    move-result p1

    sget-object v0, Lcom/amazon/nwstd/toc/TOCListController$ItemType;->ITEM_TYPE_SECTION_HEADER:Lcom/amazon/nwstd/toc/TOCListController$ItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, p3

    .line 409
    :goto_1
    move-object p1, p2

    check-cast p1, Lcom/amazon/nwstd/toc/widget/ArticleRow;

    invoke-virtual {p1, v1}, Lcom/amazon/nwstd/toc/widget/ArticleRow;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 354
    invoke-static {}, Lcom/amazon/nwstd/toc/TOCListController$ItemType;->values()[Lcom/amazon/nwstd/toc/TOCListController$ItemType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isArticleItem(Lcom/amazon/android/docviewer/ITOCItem;)Z
    .locals 0

    .line 557
    instance-of p1, p1, Lcom/amazon/nwstd/toc/IArticleTOCItem;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected updateThumbnailImage(Lcom/amazon/nwstd/toc/IArticleTOCItem;Landroid/view/View;)V
    .locals 4

    .line 460
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_toc_thumbnail:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/amazon/nwstd/ui/MaskedImageView;

    if-eqz p2, :cond_2

    .line 462
    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mThumbnailsCache:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mThumbnailsCache:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 464
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/toc/TOCListController;->isArticleAvailable(Lcom/amazon/nwstd/toc/IArticleTOCItem;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/amazon/nwstd/ui/MaskedImageView;->setEnabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListController;->mThumbnailsCache:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 468
    :cond_1
    invoke-static {p1, p2}, Lcom/amazon/nwstd/toc/TOCListController;->cancelPotentialWork(Lcom/amazon/nwstd/toc/IArticleTOCItem;Lcom/amazon/nwstd/ui/MaskedImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    new-instance v0, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;-><init>(Lcom/amazon/nwstd/toc/TOCListController;Lcom/amazon/nwstd/ui/MaskedImageView;Lcom/amazon/nwstd/toc/IArticleTOCItem;)V

    .line 470
    new-instance p1, Lcom/amazon/nwstd/toc/TOCListController$TOCAsyncDrawable;

    iget-object v1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p1, v1, v3, v0}, Lcom/amazon/nwstd/toc/TOCListController$TOCAsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/amazon/nwstd/toc/TOCListController$TOCBitmapWorkerTask;)V

    .line 471
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_2

    .line 473
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-array p2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_1
    return-void
.end method

.method protected updateView(Lcom/amazon/android/docviewer/ITOCItem;Landroid/view/View;Z)V
    .locals 3

    .line 439
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 440
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 442
    :goto_1
    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->periodical_toc_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 444
    invoke-virtual {p0, p1, p3, v0}, Lcom/amazon/nwstd/toc/TOCListController;->getArticleText(Lcom/amazon/android/docviewer/ITOCItem;ZZ)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/TOCListController;->isArticleItem(Lcom/amazon/android/docviewer/ITOCItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 448
    move-object v1, p1

    check-cast v1, Lcom/amazon/nwstd/toc/IArticleTOCItem;

    invoke-virtual {p0, v1, p2}, Lcom/amazon/nwstd/toc/TOCListController;->updateThumbnailImage(Lcom/amazon/nwstd/toc/IArticleTOCItem;Landroid/view/View;)V

    .line 451
    :cond_3
    invoke-virtual {p0, p1, p3, v0}, Lcom/amazon/nwstd/toc/TOCListController;->getBackgroundColorResource(Lcom/amazon/android/docviewer/ITOCItem;ZZ)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
