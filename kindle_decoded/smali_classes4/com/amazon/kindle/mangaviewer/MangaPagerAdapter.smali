.class public Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "MangaPagerAdapter.java"

# interfaces
.implements Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;


# static fields
.field private static final DEFAULT_VIEWS:I = 0x4e20

.field private static final POOL_THRESHOLD:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final availableImageViews:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/amazon/kindle/mangaviewer/MangaPageLayout;",
            ">;"
        }
    .end annotation
.end field

.field protected final context:Landroid/content/Context;

.field private currentPageId:I

.field protected docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

.field private docViewerEventHandler:Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

.field protected orientation:I

.field protected position:I

.field private final positionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/amazon/kindle/mangaviewer/MangaPageLayout;",
            ">;"
        }
    .end annotation
.end field

.field private preGotoPageId:I

.field private viewsCount:I

.field protected virtualPanelGrid:Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

.field protected virtualPanelModePagePosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MangaDocViewer;)V
    .locals 1

    const/16 v0, 0x2710

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MangaDocViewer;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MangaDocViewer;I)V
    .locals 2

    .line 86
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->positionMap:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->availableImageViews:Ljava/util/Stack;

    const/16 v0, 0x4e20

    .line 46
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->viewsCount:I

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->virtualPanelModePagePosition:I

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->virtualPanelGrid:Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    .line 62
    iput v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->orientation:I

    .line 473
    new-instance v0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$2;-><init>(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;)V

    iput-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewerEventHandler:Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 87
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->context:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    .line 89
    iput p3, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    .line 91
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->createPageRenderedEventListener()Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->addPageBitmapRenderedListener(Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;)V

    .line 92
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    iget-object p2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewerEventHandler:Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 93
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getCurrentPageID()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->currentPageId:I

    .line 94
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->preGotoPageId:I

    .line 95
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getOrientation()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->orientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->updateCurrentPage(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->currentPageId:I

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->currentPageId:I

    return p1
.end method

.method static synthetic access$108(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;)I
    .locals 2

    .line 34
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->currentPageId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->currentPageId:I

    return v0
.end method

.method static synthetic access$110(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;)I
    .locals 2

    .line 34
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->currentPageId:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->currentPageId:I

    return v0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->preGotoPageId:I

    return p0
.end method

.method static synthetic access$202(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->preGotoPageId:I

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createAndAddView(Landroid/view/View;I)Lcom/amazon/kindle/mangaviewer/MangaPageLayout;
    .locals 2

    .line 228
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->getAvailablePageLayout()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    move-result-object v0

    .line 229
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 231
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 232
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p1

    sget-object p2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private declared-synchronized getAvailablePageLayout()Lcom/amazon/kindle/mangaviewer/MangaPageLayout;
    .locals 2

    monitor-enter p0

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->availableImageViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    new-instance v0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;-><init>(Landroid/content/Context;)V

    .line 364
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/modules/MangaViewerModule;->isComic(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    .line 365
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->setImageBackgroundColor(I)V

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->availableImageViews:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->availableImageViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadPage(Landroid/view/View;I)Lcom/amazon/kindle/mangaviewer/MangaPageLayout;
    .locals 4

    .line 194
    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 195
    sget-object v1, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MangaPagerAdapter.loadPage() -- currentPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->createAndAddView(Landroid/view/View;I)Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    move-result-object v1

    .line 202
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 204
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    if-nez p1, :cond_0

    .line 205
    sget-object p1, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->TAG:Ljava/lang/String;

    const-string p2, "docViewer is null, cannot create an instance of MangaPageDrawable"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 209
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p1

    new-instance v0, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;

    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-direct {v0, v2, v3, p0, p2}, Lcom/amazon/android/docviewer/mobi/MangaPageDrawable;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MangaDocViewer;Lcom/amazon/kindle/mangaviewer/IMangaPagerAdapter;I)V

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    invoke-virtual {v1}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->setMinScale(Lcom/amazon/kindle/model/content/BookOrientation;)V

    .line 214
    invoke-virtual {v1}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p1

    iget p2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->orientation:I

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->setOrientation(I)V

    return-object v1
.end method

.method private declared-synchronized recyclePageLayout(Lcom/amazon/kindle/mangaviewer/MangaPageLayout;)V
    .locals 2

    monitor-enter p0

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->availableImageViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getOrientation()I

    move-result v0

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->orientation:I

    if-ne v0, v1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->availableImageViews:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateCurrentPage(Z)V
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->positionMap:Landroid/util/SparseArray;

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    if-eqz v0, :cond_4

    .line 388
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->virtualPanelGrid:Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->virtualPanelModePagePosition:I

    iget v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->virtualPanelGrid:Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getScaleTo(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F

    move-result p1

    .line 392
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->virtualPanelGrid:Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getTranslationX(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F

    move-result v1

    .line 393
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->virtualPanelGrid:Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;->getTranslationY(Lcom/amazon/kindle/mangaviewer/BoundImageView;)F

    move-result v2

    .line 396
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->resetMatrixToScale(F)V

    .line 397
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v3

    mul-float v1, v1, p1

    mul-float v2, v2, p1

    invoke-virtual {v3, v1, v2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->translate(FF)V

    goto :goto_2

    .line 399
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getMinScale()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 401
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 402
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->setDefaultScale()V

    goto :goto_1

    .line 400
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->setMinScale(Lcom/amazon/kindle/model/content/BookOrientation;)V

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 404
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->virtualPanelGrid:Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    const/4 p1, -0x1

    .line 405
    iput p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->virtualPanelModePagePosition:I

    .line 407
    :goto_2
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->invalidate()V

    :cond_4
    return-void
.end method


# virtual methods
.method protected createPageRenderedEventListener()Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;
    .locals 1

    .line 454
    new-instance v0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter$1;-><init>(Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;)V

    return-object v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 291
    iget-object p3, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->positionMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    if-eqz p3, :cond_0

    .line 293
    invoke-virtual {p3}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 294
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 295
    iget-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->positionMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 296
    invoke-virtual {p3}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    invoke-direct {p0, p3}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->recyclePageLayout(Lcom/amazon/kindle/mangaviewer/MangaPageLayout;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->viewsCount:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 543
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    return v0
.end method

.method public getDocViewer()Lcom/amazon/android/docviewer/mobi/MangaDocViewer;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->positionMap:Landroid/util/SparseArray;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    if-eqz p1, :cond_0

    .line 445
    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getOrientation()I

    move-result p1

    iget v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->orientation:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1
.end method

.method public getRenderDrawableForPosition(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;
    .locals 6

    const-string v0, "Requesting renderDrawable for position: "

    const/4 v1, 0x1

    .line 238
    invoke-static {v0, p1, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;IZ)V

    .line 241
    iget v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    sub-int v2, p1, v2

    const/4 v3, -0x1

    if-lt v2, v3, :cond_5

    if-le v2, v1, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    iget-object v4, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v4, v5, :cond_1

    mul-int/lit8 v2, v2, -0x1

    .line 253
    :cond_1
    iget v4, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->currentPageId:I

    add-int/2addr v2, v4

    .line 254
    iget-object v4, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getCurrentPageID()I

    move-result v4

    sub-int/2addr v2, v4

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_3

    if-eq v2, v1, :cond_2

    goto :goto_0

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getNextPageRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v1

    goto :goto_1

    .line 258
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getCurrentPageRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v1

    goto :goto_1

    .line 261
    :cond_4
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getPreviousPageRenderDrawable()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v1

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    .line 272
    invoke-static {v0, p1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;IZ)V

    return-object v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 117
    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/mangaviewer/MangaViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 118
    sget-object v1, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MangaPagerAdapter.instantiateItem() -- currentPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; position: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->loadPage(Landroid/view/View;I)Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    move-result-object p1

    if-nez p1, :cond_0

    .line 123
    sget-object p1, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->TAG:Ljava/lang/String;

    const-string p2, "MangaPageLayout view is null"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->positionMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public isLeftPageAvailable()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isLeftPageAvailable()Z

    move-result v0

    return v0
.end method

.method public isOrientationChanged(I)Z
    .locals 1

    .line 317
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->orientation:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isRightPageAvailable()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->isRightPageAvailable()Z

    move-result v0

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 303
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 304
    check-cast p2, Ljava/lang/Integer;

    .line 305
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->positionMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public navigateAndStartPrerender(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z
    .locals 4

    .line 146
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentItem()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    .line 151
    :goto_0
    iget v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    .line 152
    iget v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    invoke-interface {p1}, Lcom/amazon/kindle/mangaviewer/IMangaViewPager;->getCurrentItem()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 153
    iget v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    .line 154
    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v0, v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->navigateToNextPage()V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->navigateToPrevPage()V

    goto :goto_0

    .line 160
    :cond_2
    iget v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    .line 161
    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v0, v1, :cond_3

    .line 162
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->navigateToPrevPage()V

    goto :goto_0

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->navigateToNextPage()V

    goto :goto_0

    :cond_4
    return v3
.end method

.method public onMultiWindowChange()V
    .locals 0

    .line 561
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->setOrientation()V

    .line 562
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->updatePageViewBounds()V

    .line 563
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->updatePageViews()V

    return-void
.end method

.method public setOrientation()V
    .locals 10

    .line 325
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 326
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 327
    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x2

    if-le v1, v0, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    if-ne v4, v2, :cond_3

    .line 333
    iget-object v6, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->positionMap:Landroid/util/SparseArray;

    iget v7, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    if-eqz v6, :cond_3

    .line 334
    invoke-virtual {v6}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->isZoomed()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 335
    invoke-virtual {v6}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->getCenterOffset()F

    move-result v6

    .line 336
    iget-object v7, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget-object v8, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v8}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v8

    sget-object v9, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v8, v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    xor-int/2addr v2, v6

    invoke-virtual {v7, v2}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->setWasViewingSecondPage(Z)V

    .line 341
    :cond_3
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->availableImageViews:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    if-eq v4, v3, :cond_4

    .line 350
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v2, v1, v0, v5}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->rotatePortrait(IIZ)V

    goto :goto_3

    .line 345
    :cond_4
    iget-object v2, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v2, v1, v0, v5}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->rotateLandscape(IIZ)V

    .line 353
    :goto_3
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->applySettings()V

    .line 354
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->orientation:I

    if-eq v4, v0, :cond_5

    .line 355
    iput v4, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->orientation:I

    .line 356
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 134
    check-cast p1, Lcom/amazon/kindle/mangaviewer/MangaViewPager;

    invoke-virtual {p1}, Lcom/amazon/kindle/mangaviewer/MangaViewPager;->resetStartScrollX()V

    .line 135
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->navigateAndStartPrerender(Lcom/amazon/kindle/mangaviewer/IMangaViewPager;)Z

    return-void
.end method

.method public startCurrentPageInVirtualPanelMode(Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;)V
    .locals 1

    .line 538
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    iput v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->virtualPanelModePagePosition:I

    .line 539
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->virtualPanelGrid:Lcom/amazon/kindle/mangaviewer/VirtualPanelGrid;

    return-void
.end method

.method protected updateNextPage(Z)V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    add-int/lit8 v0, v0, -0x1

    .line 415
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->positionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 418
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->setMinScale(Lcom/amazon/kindle/model/content/BookOrientation;)V

    .line 420
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public updatePageViewBounds()V
    .locals 2

    .line 554
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->positionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    invoke-virtual {v1}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->updateDrawableBounds()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updatePageViews()V
    .locals 1

    const/4 v0, 0x1

    .line 547
    invoke-direct {p0, v0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->updateCurrentPage(Z)V

    .line 548
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->updateNextPage(Z)V

    .line 549
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->updatePreviousPage(Z)V

    return-void
.end method

.method protected updatePreviousPage(Z)V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MangaDocViewer;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->position:I

    add-int/lit8 v0, v0, 0x1

    .line 428
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->positionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 431
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPagerAdapter;->docViewer:Lcom/amazon/android/docviewer/mobi/MangaDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->setMinScale(Lcom/amazon/kindle/model/content/BookOrientation;)V

    .line 433
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->invalidate()V

    :cond_2
    return-void
.end method
