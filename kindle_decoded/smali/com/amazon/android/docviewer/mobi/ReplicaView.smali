.class public Lcom/amazon/android/docviewer/mobi/ReplicaView;
.super Landroid/view/View;
.source "ReplicaView.java"


# static fields
.field private static final CORNER_IN_ZOMM_BUFFER:I = 0x5

.field private static final NEW_PAGE_REACHED_NOTIFICATION_DELAY:I = 0x1f4


# instance fields
.field private applyDefaultZoomBeforeDraw:Ljava/lang/Boolean;

.field private final applyDefaultZoomBeforeDrawLock:Ljava/lang/Object;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final defaultZoom:F

.field private final delayForImages:I

.field private delayedFocalPointX:F

.field private delayedFocalPointY:F

.field private focalPointX:F

.field private focalPointY:F

.field private imageLoadJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

.field private mIsNewPageReached:Z

.field private final mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

.field private final mScroller:Landroid/widget/Scroller;

.field private m_firstDrawListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/nwstd/replica/IReplicaPage$FirstDrawListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_loadingListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/nwstd/replica/IReplicaPage$LoadingListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

.field private m_newNewPageReachedListener:Lcom/amazon/nwstd/replica/INewPageReachedListener;

.field private final m_notifyNewPageRunnable:Ljava/lang/Runnable;

.field private setFocalPointBeforeDraw:Z

.field protected final sourceRect:Landroid/graphics/Rect;

.field private final statusBarHeight:I

.field private final topMarginHeight:I

.field protected final viewPort:Landroid/graphics/RectF;

.field private zoom:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/nwstd/model/replica/ReplicaModel;I)V
    .locals 2

    .line 158
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_firstDrawListeners:Ljava/util/Set;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_loadingListeners:Ljava/util/Set;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->sourceRect:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->viewPort:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 86
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->applyDefaultZoomBeforeDraw:Ljava/lang/Boolean;

    .line 91
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->applyDefaultZoomBeforeDrawLock:Ljava/lang/Object;

    .line 97
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setFocalPointBeforeDraw:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 127
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->defaultZoom:F

    .line 150
    new-instance v1, Lcom/amazon/nwstd/utils/RunnableHandler;

    invoke-direct {v1}, Lcom/amazon/nwstd/utils/RunnableHandler;-><init>()V

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    .line 159
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    .line 160
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    const/4 p2, 0x0

    .line 161
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->imageLoadJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 162
    iput p3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->delayForImages:I

    .line 165
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->applyDefaultZoomBeforeDrawLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 p3, 0x1

    .line 166
    :try_start_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->applyDefaultZoomBeforeDraw:Ljava/lang/Boolean;

    .line 167
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->bitmapPaint:Landroid/graphics/Paint;

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/newsstand/core/R$dimen;->replica_view_top_margin:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->topMarginHeight:I

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/newsstand/core/R$dimen;->status_bar_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->statusBarHeight:I

    .line 173
    new-instance p2, Lcom/amazon/android/docviewer/mobi/ReplicaView$1;

    invoke-direct {p2, p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView$1;-><init>(Lcom/amazon/android/docviewer/mobi/ReplicaView;)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_notifyNewPageRunnable:Ljava/lang/Runnable;

    .line 184
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->mScroller:Landroid/widget/Scroller;

    return-void

    :catchall_0
    move-exception p1

    .line 167
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/mobi/ReplicaView;)Lcom/amazon/nwstd/replica/INewPageReachedListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_newNewPageReachedListener:Lcom/amazon/nwstd/replica/INewPageReachedListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/mobi/ReplicaView;)Ljava/lang/Object;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->applyDefaultZoomBeforeDrawLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/android/docviewer/mobi/ReplicaView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->applyDefaultZoomBeforeDraw:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$302(Lcom/amazon/android/docviewer/mobi/ReplicaView;Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->imageLoadJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amazon/android/docviewer/mobi/ReplicaView;)Lcom/amazon/nwstd/model/replica/ReplicaModel;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    return-object p0
.end method

.method private cancelNewPageReachedNotification()V
    .locals 2

    .line 967
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_notifyNewPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/utils/RunnableHandler;->removeCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private computeRectangleWithCurrentViewPort(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 6

    .line 433
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getHeight()I

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getWidth()I

    move-result v1

    .line 436
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 437
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getViewPort()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 438
    iget p1, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getViewPort()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v3

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget v3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    mul-float p1, p1, v3

    iput p1, v2, Landroid/graphics/RectF;->bottom:F

    .line 439
    iget p1, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getViewPort()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v3

    mul-float p1, p1, v0

    iget v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    mul-float p1, p1, v0

    iput p1, v2, Landroid/graphics/RectF;->top:F

    .line 440
    iget p1, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getViewPort()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v0

    int-to-float v0, v1

    mul-float p1, p1, v0

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    mul-float p1, p1, v1

    iput p1, v2, Landroid/graphics/RectF;->left:F

    .line 441
    iget p1, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getViewPort()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v1

    mul-float p1, p1, v0

    iget v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    mul-float p1, p1, v0

    iput p1, v2, Landroid/graphics/RectF;->right:F

    .line 443
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 444
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 445
    iget v0, v2, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 446
    iget v0, v2, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 447
    iget v0, v2, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    return-object p1
.end method

.method private modifyZoom(FFF)V
    .locals 7

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 734
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    mul-float p1, p1, v1

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setZoom(FFF)V

    return-void

    .line 731
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass 0 or negative number to increaseZoom(float)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private notifyNewPageReached()V
    .locals 4

    .line 960
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->cancelNewPageReachedNotification()V

    .line 962
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_notifyNewPageRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/nwstd/utils/RunnableHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private notifyPostDrawListeners()V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_firstDrawListeners:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_firstDrawListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 644
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/replica/IReplicaPage$FirstDrawListener;

    .line 646
    invoke-interface {v1, p0}, Lcom/amazon/nwstd/replica/IReplicaPage$FirstDrawListener;->postFirstDraw(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyPostLoadingListeners()V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_loadingListeners:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_loadingListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 658
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/replica/IReplicaPage$LoadingListener;

    .line 660
    invoke-interface {v1, p0}, Lcom/amazon/nwstd/replica/IReplicaPage$LoadingListener;->postLoadingFinished(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addLoadingListener(Lcom/amazon/nwstd/replica/IReplicaPage$LoadingListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_loadingListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPostDrawListener(Lcom/amazon/nwstd/replica/IReplicaPage$FirstDrawListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_firstDrawListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected adjustDestinationRectForPadding(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    .line 341
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 344
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 347
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaPageRatio()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    .line 349
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    :cond_0
    cmpl-float p1, v1, v2

    if-nez p1, :cond_1

    return-object v0

    .line 355
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_2

    .line 357
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 358
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 359
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v1, v2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 360
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 364
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 366
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v2}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaPageRatio()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p1, v4

    const/4 v5, 0x2

    cmpg-float p1, v2, p1

    if-gez p1, :cond_4

    .line 367
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 368
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {p1}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getNumberOfReplicaPages()I

    move-result p1

    if-ne p1, v5, :cond_3

    .line 370
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 371
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 374
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    div-float/2addr v2, v4

    float-to-int v2, v2

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 375
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    div-float/2addr v2, v4

    float-to-int v1, v2

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 379
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v5

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 380
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {p1}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getNumberOfReplicaPages()I

    move-result p1

    if-ne p1, v5, :cond_5

    .line 381
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 382
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 384
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    div-float/2addr v2, v4

    float-to-int v2, v2

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 385
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    div-float/2addr v2, v4

    float-to-int v1, v2

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->right:I

    :cond_6
    :goto_0
    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 861
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    invoke-virtual {v0}, Lcom/amazon/nwstd/utils/RunnableHandler;->removeCallbacks()V

    .line 864
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->imageLoadJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 865
    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;->cancel()Z

    .line 866
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->imageLoadJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->destroy()V

    .line 870
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    return-void
.end method

.method public fling(II)V
    .locals 9

    .line 1042
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointY:F

    float-to-int v2, v2

    neg-int v3, p1

    neg-int v4, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1044
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getDefaultZoom()F
    .locals 1

    .line 685
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getModel()Lcom/amazon/nwstd/model/replica/ReplicaModel;
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    return-object v0
.end method

.method public getNumberOfReplicaPages()I
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getNumberOfReplicaPages()I

    move-result v0

    return v0
.end method

.method public getViewPort()Landroid/graphics/RectF;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->viewPort:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    .line 674
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    return v0
.end method

.method public isLeftCornerInZoom()Z
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->sourceRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->isReady()Z

    move-result v0

    return v0
.end method

.method public isRightCornerInZoom()Z
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->sourceRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isThumbnailImage()Z
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getCurrentImageQuality()Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public modifyZoomAboutPoint(FFF)V
    .locals 3

    .line 703
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointX:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    mul-float p2, p2, v1

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    div-float/2addr p2, v2

    sub-float/2addr v0, p2

    .line 704
    iget p2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointY:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p3, v2

    mul-float v1, v1, p3

    iget p3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    div-float/2addr v1, p3

    sub-float/2addr p2, v1

    .line 706
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->modifyZoom(FFF)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 487
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getWidth()I

    move-result v0

    .line 488
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getHeight()I

    move-result v1

    .line 492
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->applyDefaultZoomBeforeDrawLock:Ljava/lang/Object;

    monitor-enter v2

    .line 493
    :try_start_0
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->applyDefaultZoomBeforeDraw:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 494
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 498
    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    invoke-virtual {p0, v3, v5}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setFocalPoint(FF)Z

    .line 501
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setZoom(F)V

    .line 504
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->applyDefaultZoomBeforeDrawLock:Ljava/lang/Object;

    monitor-enter v3

    .line 505
    :try_start_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->applyDefaultZoomBeforeDraw:Ljava/lang/Boolean;

    .line 506
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 509
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setFocalPointBeforeDraw:Z

    if-eqz v3, :cond_1

    .line 511
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_1

    .line 513
    iget v3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->delayedFocalPointX:F

    iget v5, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->delayedFocalPointY:F

    invoke-virtual {p0, v3, v5}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setFocalPoint(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    iput-boolean v4, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setFocalPointBeforeDraw:Z

    .line 520
    :cond_1
    iget v3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointX:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 521
    iget v5, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointY:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    .line 522
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    div-float/2addr v6, v7

    add-float/2addr v6, v3

    .line 523
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    div-float/2addr v7, v8

    add-float/2addr v7, v5

    .line 526
    iget-object v8, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->sourceRect:Landroid/graphics/Rect;

    float-to-int v9, v3

    iput v9, v8, Landroid/graphics/Rect;->left:I

    float-to-int v9, v5

    .line 527
    iput v9, v8, Landroid/graphics/Rect;->top:I

    float-to-int v9, v6

    .line 528
    iput v9, v8, Landroid/graphics/Rect;->right:I

    float-to-int v9, v7

    .line 529
    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 533
    iget-object v8, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->viewPort:Landroid/graphics/RectF;

    int-to-float v9, v0

    div-float/2addr v3, v9

    iput v3, v8, Landroid/graphics/RectF;->left:F

    int-to-float v3, v1

    div-float/2addr v5, v3

    .line 534
    iput v5, v8, Landroid/graphics/RectF;->top:F

    div-float/2addr v6, v9

    .line 535
    iput v6, v8, Landroid/graphics/RectF;->right:F

    div-float/2addr v7, v3

    .line 536
    iput v7, v8, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 540
    :cond_2
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->viewPort:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 541
    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 542
    iput v2, v3, Landroid/graphics/RectF;->right:F

    .line 543
    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 553
    :goto_1
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->sourceRect:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_3

    mul-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    .line 555
    iget v6, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 556
    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 557
    iput v0, v3, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 559
    :goto_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->sourceRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_4

    mul-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    .line 561
    iget v6, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    mul-float v3, v3, v6

    float-to-int v3, v3

    .line 562
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 563
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 565
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->viewPort:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v2, v6

    iget v7, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    iput v6, v0, Landroid/graphics/RectF;->top:F

    .line 566
    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 569
    :goto_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v5

    .line 570
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v6

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    .line 571
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v5

    .line 572
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v0, v2, v6, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 574
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->adjustDestinationRectForPadding(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 578
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v5, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->statusBarHeight:I

    iget v6, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->topMarginHeight:I

    add-int v7, v5, v6

    sub-int/2addr v3, v7

    if-ge v2, v3, :cond_5

    add-int v2, v5, v6

    .line 580
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int v2, v5, v6

    .line 581
    iput v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    int-to-float v2, v5

    neg-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 583
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->viewPort:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v2

    iget v5, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 584
    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 588
    :cond_5
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->sourceRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 590
    invoke-static {}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->getInstance()Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 592
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isDebuggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettings;->isClickableContentVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 594
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getDoubleTapInteractiveAreas()Ljava/util/Vector;

    move-result-object v0

    const/16 v1, 0x64

    if-eqz v0, :cond_6

    .line 596
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/high16 v3, -0x10000

    .line 597
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 598
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 599
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/mobi/IInteractiveArea;

    .line 601
    invoke-interface {v3}, Lcom/amazon/android/docviewer/mobi/IInteractiveArea;->getRectangle()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->computeRectangleWithCurrentViewPort(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v3

    .line 602
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 606
    :cond_6
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getSingleTapInteractiveAreas()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 608
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const v3, -0xffff01

    .line 609
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 610
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 611
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/IInteractiveArea;

    .line 613
    invoke-interface {v1}, Lcom/amazon/android/docviewer/mobi/IInteractiveArea;->getRectangle()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->computeRectangleWithCurrentViewPort(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    .line 614
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 620
    :cond_7
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 622
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setFocalPoint(FF)Z

    .line 625
    :cond_8
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->notifyPostDrawListeners()V

    .line 627
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->isThumbnailImage()Z

    move-result p1

    if-nez p1, :cond_9

    .line 628
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->notifyPostLoadingListeners()V

    .line 632
    :cond_9
    iget-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->mIsNewPageReached:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {p1}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getCurrentImageQuality()Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    move-result-object p1

    sget-object v0, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Medium:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne p1, v0, :cond_a

    .line 633
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->notifyNewPageReached()V

    .line 635
    iput-boolean v4, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->mIsNewPageReached:Z

    :cond_a
    return-void

    :catchall_1
    move-exception p1

    .line 494
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public onHide()V
    .locals 5

    .line 894
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getCurrentImageQuality()Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Thumbnail:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-eq v0, v1, :cond_2

    .line 895
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->imageLoadJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    if-eqz v0, :cond_0

    .line 896
    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;->cancel()Z

    const/4 v0, 0x0

    .line 897
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->imageLoadJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 900
    :cond_0
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 902
    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setZoom(F)V

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getCurrentImageQuality()Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Medium:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 907
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Medium:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    new-instance v4, Lcom/amazon/android/docviewer/mobi/ReplicaView$4;

    invoke-direct {v4, p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView$4;-><init>(Lcom/amazon/android/docviewer/mobi/ReplicaView;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->updateImage(IILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->imageLoadJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    :cond_2
    const/4 v0, 0x0

    .line 916
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->mIsNewPageReached:Z

    .line 917
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->cancelNewPageReachedNotification()V

    .line 918
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_firstDrawListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 919
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_loadingListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onLayoutChanged()V
    .locals 3

    .line 878
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->updateReferenceCanvasSize(II)V

    .line 881
    sget-object v0, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Medium:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/ReplicaView$3;

    invoke-direct {v1, p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView$3;-><init>(Lcom/amazon/android/docviewer/mobi/ReplicaView;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->updateToQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;ZLcom/amazon/nwstd/model/replica/BitmapProviderObserver;)V

    return-void
.end method

.method public onShow()V
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getCurrentImageQuality()Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Medium:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne v0, v1, :cond_0

    .line 926
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->notifyNewPageReached()V

    :cond_0
    const/4 v0, 0x1

    .line 928
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->mIsNewPageReached:Z

    return-void
.end method

.method public pan(FF)Z
    .locals 5

    .line 189
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointX:F

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getZoom()F

    move-result v1

    div-float v1, p1, v1

    add-float/2addr v0, v1

    .line 190
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointY:F

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getZoom()F

    move-result v2

    div-float v2, p2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpl-float v4, p1, v3

    if-lez v4, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getViewPort()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v2

    if-ltz v4, :cond_3

    :cond_0
    cmpg-float p1, p1, v3

    if-gez p1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getViewPort()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_3

    :cond_1
    cmpg-float p1, p2, v3

    if-gez p1, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getViewPort()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_3

    :cond_2
    cmpl-float p1, p2, v3

    if-lez p1, :cond_4

    .line 195
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getViewPort()Landroid/graphics/RectF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, v2

    if-gez p1, :cond_4

    .line 197
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setFocalPoint(FF)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public performDoubleTap(FF)Z
    .locals 5

    .line 401
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getDoubleTapInteractiveAreas()Ljava/util/Vector;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/IInteractiveArea;

    .line 405
    invoke-interface {v1}, Lcom/amazon/android/docviewer/mobi/IInteractiveArea;->getRectangle()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->computeRectangleWithCurrentViewPort(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v3, p1

    float-to-int v4, p2

    .line 406
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    invoke-interface {v1}, Lcom/amazon/android/docviewer/mobi/IInteractiveArea;->execute()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public performSingleTap(FF)Z
    .locals 5

    .line 417
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getSingleTapInteractiveAreas()Ljava/util/Vector;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/IInteractiveArea;

    .line 421
    invoke-interface {v1}, Lcom/amazon/android/docviewer/mobi/IInteractiveArea;->getRectangle()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->computeRectangleWithCurrentViewPort(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v2

    float-to-int v3, p1

    float-to-int v4, p2

    .line 422
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    invoke-interface {v1}, Lcom/amazon/android/docviewer/mobi/IInteractiveArea;->execute()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setFocalPoint(FF)Z
    .locals 6

    .line 780
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getWidth()I

    move-result v0

    .line 781
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getHeight()I

    move-result v1

    .line 784
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 796
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v4, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    div-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 798
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    div-float/2addr p1, v2

    .line 799
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 800
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointX:F

    goto :goto_0

    :cond_1
    int-to-float v2, v0

    .line 803
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    div-float/2addr v4, v5

    sub-float v4, v2, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    .line 805
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget v4, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    div-float/2addr p1, v4

    sub-float/2addr v2, p1

    .line 806
    div-int/lit8 v0, v0, 0x2

    int-to-float p1, v0

    .line 807
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointX:F

    goto :goto_0

    .line 811
    :cond_2
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointX:F

    .line 818
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    div-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    .line 820
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget p2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    div-float/2addr p1, p2

    .line 821
    div-int/lit8 v1, v1, 0x2

    int-to-float p2, v1

    .line 822
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointY:F

    goto :goto_1

    :cond_3
    int-to-float p1, v1

    .line 825
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    div-float/2addr v0, v2

    sub-float v0, p1, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    .line 827
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    .line 828
    div-int/lit8 v1, v1, 0x2

    int-to-float p2, v1

    .line 829
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointY:F

    goto :goto_1

    .line 833
    :cond_4
    iput p2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointY:F

    .line 835
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3

    .line 786
    :cond_5
    :goto_2
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->delayedFocalPointX:F

    .line 787
    iput p2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->delayedFocalPointY:F

    .line 788
    iput-boolean v3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setFocalPointBeforeDraw:Z

    const/4 p1, 0x0

    return p1
.end method

.method public setModel(Lcom/amazon/nwstd/model/replica/ReplicaModel;)V
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    if-eq p1, v0, :cond_0

    .line 947
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->destroy()V

    .line 948
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    :cond_0
    const/4 p1, 0x1

    .line 950
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->applyDefaultZoomBeforeDraw:Ljava/lang/Boolean;

    return-void
.end method

.method public setNewPageReachedListener(Lcom/amazon/nwstd/replica/INewPageReachedListener;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_newNewPageReachedListener:Lcom/amazon/nwstd/replica/INewPageReachedListener;

    return-void
.end method

.method public setZoom(F)V
    .locals 2

    .line 744
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointX:F

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->focalPointY:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setZoom(FFF)V

    return-void
.end method

.method public setZoom(FFF)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_3

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_3

    .line 217
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->applyDefaultZoomBeforeDrawLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    .line 218
    :try_start_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->applyDefaultZoomBeforeDraw:Ljava/lang/Boolean;

    .line 219
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-lez v2, :cond_2

    .line 225
    iget v2, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    cmpl-float v3, v2, p1

    if-eqz v3, :cond_3

    if-eqz v1, :cond_1

    cmpl-float v0, v2, v0

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    .line 232
    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->getCurrentImageQuality()Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    move-result-object v0

    sget-object v1, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Medium:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    if-ne v0, v1, :cond_1

    .line 233
    invoke-static {}, Lcom/amazon/nwstd/utils/DeviceRequirements;->doesRamMeetRequirements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->imageLoadJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;->cancel()Z

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;->Full:Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;

    new-instance v4, Lcom/amazon/android/docviewer/mobi/ReplicaView$2;

    invoke-direct {v4, p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView$2;-><init>(Lcom/amazon/android/docviewer/mobi/ReplicaView;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->updateImage(IILcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->imageLoadJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    .line 247
    :cond_1
    iput p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom:F

    .line 249
    invoke-virtual {p0, p2, p3}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setFocalPoint(FF)Z

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 223
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot pass 0 or a negative number to setZoom(float)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 219
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public stopScrollingAnimation()V
    .locals 2

    .line 1052
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method

.method public updateToQuality(Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;ZLcom/amazon/nwstd/model/replica/BitmapProviderObserver;)V
    .locals 2

    .line 980
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->imageLoadJob:Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;

    if-eqz v0, :cond_0

    .line 981
    invoke-interface {v0}, Lcom/amazon/kindle/pagecurl/bitmapmngt/IBitmapLoadJob;->cancel()Z

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->mRunnableHandler:Lcom/amazon/nwstd/utils/RunnableHandler;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/ReplicaView$5;

    invoke-direct {v1, p0, p1, p3}, Lcom/amazon/android/docviewer/mobi/ReplicaView$5;-><init>(Lcom/amazon/android/docviewer/mobi/ReplicaView;Lcom/amazon/nwstd/model/replica/BitmapProvider$ImageQuality;Lcom/amazon/nwstd/model/replica/BitmapProviderObserver;)V

    if-eqz p2, :cond_1

    iget p1, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->delayForImages:I

    int-to-long p1, p1

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/nwstd/utils/RunnableHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public waitForInit()V
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ReplicaView;->m_model:Lcom/amazon/nwstd/model/replica/ReplicaModel;

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaCanvas()Lcom/amazon/nwstd/model/replica/ReplicaCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/nwstd/model/replica/ReplicaCanvas;->waitForInit()V

    return-void
.end method

.method public zoom(FFF)V
    .locals 2

    .line 841
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->isThumbnailImage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 845
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getZoom()F

    move-result v0

    mul-float v0, v0, p1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getDefaultZoom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 847
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getDefaultZoom()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setZoom(F)V

    goto :goto_0

    .line 851
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->modifyZoomAboutPoint(FFF)V

    :cond_1
    :goto_0
    return-void
.end method
