.class public final Lcom/amazon/android/docviewer/mobi/ImageZoomPage;
.super Landroid/widget/FrameLayout;
.source "ImageZoomPage.java"

# interfaces
.implements Lcom/amazon/nwstd/replica/IReplicaPage;
.implements Lcom/amazon/nwstd/replica/IZoomablePage;
.implements Lcom/amazon/nwstd/replica/IBookmarkablePage;
.implements Lcom/amazon/nwstd/replica/IMagnifiablePage;


# instance fields
.field private mIsImmersiveReadingMode:Z

.field private final m_bookmarkMargin:I

.field private final m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

.field private m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

.field private m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

.field private final m_overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;

.field private m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

.field private m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

.field private final m_toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

.field private final m_toggleBookmarkCallback:Lcom/amazon/foundation/IIntCallback;

.field private final overlayVisibilityCallback:Lcom/amazon/foundation/IIntCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/nwstd/model/replica/ReplicaModel;Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;I)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 532
    new-instance v0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage$1;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage$1;-><init>(Lcom/amazon/android/docviewer/mobi/ImageZoomPage;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->overlayVisibilityCallback:Lcom/amazon/foundation/IIntCallback;

    .line 541
    new-instance v0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage$2;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage$2;-><init>(Lcom/amazon/android/docviewer/mobi/ImageZoomPage;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_toggleBookmarkCallback:Lcom/amazon/foundation/IIntCallback;

    const/4 v1, 0x0

    .line 551
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    .line 552
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    .line 553
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    .line 554
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    .line 41
    iput-object p4, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    .line 42
    invoke-interface {p4, v0}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->registerToggleEventCallback(Lcom/amazon/foundation/IIntCallback;)V

    const/4 p4, 0x1

    .line 48
    invoke-super {p0, p4}, Landroid/widget/FrameLayout;->setWillNotCacheDrawing(Z)V

    const/high16 p4, 0x80000

    .line 49
    invoke-super {p0, p4}, Landroid/widget/FrameLayout;->setDrawingCacheQuality(I)V

    .line 51
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance p4, Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-direct {p4, p1, p2, p5}, Lcom/amazon/android/docviewer/mobi/ReplicaView;-><init>(Landroid/content/Context;Lcom/amazon/nwstd/model/replica/ReplicaModel;I)V

    iput-object p4, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    .line 54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/newsstand/core/R$dimen;->bookmark_page_icon_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_bookmarkMargin:I

    .line 56
    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;

    .line 58
    invoke-interface {p3}, Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;->getOverlayVisibilityEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->overlayVisibilityCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {p1, p2}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 63
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/newsstand/core/R$bool;->immersive_reading_mode:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->mIsImmersiveReadingMode:Z

    .line 65
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private isInZoom()Z
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getZoom()F

    move-result v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getDefaultZoom()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getZoom()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateBookmarkVisibility()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getZoom()F

    move-result v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getDefaultZoom()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 415
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addLeftBookmark(Lcom/amazon/kcp/periodicals/ui/BookmarkButton;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    :cond_0
    if-eqz p1, :cond_1

    .line 343
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    .line 344
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x33

    .line 345
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 347
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public addLeftBookmarkHint(Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 393
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    :cond_0
    if-eqz p1, :cond_1

    .line 400
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    .line 401
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x33

    .line 402
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 404
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public addLoadingFinishedListener(Lcom/amazon/nwstd/replica/IReplicaPage$LoadingListener;)V
    .locals 1

    .line 582
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->getView()Lcom/amazon/android/docviewer/mobi/ReplicaView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->addLoadingListener(Lcom/amazon/nwstd/replica/IReplicaPage$LoadingListener;)V

    return-void
.end method

.method public addPostDrawListener(Lcom/amazon/nwstd/replica/IReplicaPage$FirstDrawListener;)V
    .locals 1

    .line 577
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->getView()Lcom/amazon/android/docviewer/mobi/ReplicaView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->addPostDrawListener(Lcom/amazon/nwstd/replica/IReplicaPage$FirstDrawListener;)V

    return-void
.end method

.method public addRightBookmark(Lcom/amazon/kcp/periodicals/ui/BookmarkButton;)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    :cond_0
    if-eqz p1, :cond_1

    .line 362
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    .line 363
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x35

    .line 364
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 366
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public addRightBookmarkHint(Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    :cond_0
    if-eqz p1, :cond_1

    .line 381
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    .line 382
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x35

    .line 383
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 385
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 0

    return-void
.end method

.method public computeMargins(II)Landroid/graphics/RectF;
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getNumberOfReplicaPages()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getModel()Lcom/amazon/nwstd/model/replica/ReplicaModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getReplicaPageRatio()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1, p2, v0, v1, v2}, Lcom/amazon/nwstd/replica/ReplicaPageUtils;->computeReplicaPageMargins(IIIFLandroid/content/res/Resources;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->destroy()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->destroy()V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;

    invoke-interface {v0}, Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;->getOverlayVisibilityEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->overlayVisibilityCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 110
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_toggleBookmarkCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->unregisterToggleEventCallback(Lcom/amazon/foundation/IIntCallback;)V

    .line 112
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->destroy()V

    return-void
.end method

.method public fling(II)V
    .locals 1

    .line 631
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->isInZoom()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->fling(II)V

    :cond_1
    return-void
.end method

.method public getBookmarkablePage()Lcom/amazon/nwstd/replica/IBookmarkablePage;
    .locals 0

    return-object p0
.end method

.method public getBookmarkableView()Lcom/amazon/android/docviewer/mobi/ReplicaView;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    return-object v0
.end method

.method public getMagnifiablePage()Lcom/amazon/nwstd/replica/IMagnifiablePage;
    .locals 0

    return-object p0
.end method

.method public getMagnifiableView()Lcom/amazon/android/docviewer/mobi/ReplicaView;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    return-object v0
.end method

.method public getNumberOfReplicaPages()I
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getNumberOfReplicaPages()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->getView()Lcom/amazon/android/docviewer/mobi/ReplicaView;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lcom/amazon/android/docviewer/mobi/ReplicaView;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    return-object v0
.end method

.method public getViewPort()Landroid/graphics/RectF;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getViewPort()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getZoom()F

    move-result v0

    return v0
.end method

.method public getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;
    .locals 0

    return-object p0
.end method

.method public hasFinishedLoading()Z
    .locals 1

    .line 587
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->getView()Lcom/amazon/android/docviewer/mobi/ReplicaView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->isReady()Z

    move-result v0

    return v0
.end method

.method public isLeftCornerInZoom()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->isLeftCornerInZoom()Z

    move-result v0

    return v0
.end method

.method public isRightCornerInZoom()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->isRightCornerInZoom()Z

    move-result v0

    return v0
.end method

.method public isZoomed()Z
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getZoom()F

    move-result v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getDefaultZoom()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onHide()V
    .locals 1

    .line 301
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->updateBookmarkVisibility()V

    .line 302
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->onHide()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 188
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->onLayoutChanged()V

    .line 194
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->computeMargins(II)Landroid/graphics/RectF;

    move-result-object p1

    .line 199
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p3

    const/4 p4, 0x0

    if-lt p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_8

    .line 206
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/newsstand/core/R$dimen;->softkey_bar_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 208
    iget-boolean p3, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->mIsImmersiveReadingMode:Z

    if-nez p3, :cond_2

    .line 209
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p5, Lcom/amazon/kindle/newsstand/core/R$dimen;->status_bar_height:I

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    .line 213
    :goto_1
    iget p5, p1, Landroid/graphics/RectF;->right:F

    float-to-int p5, p5

    .line 218
    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    .line 224
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;

    invoke-interface {v1}, Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;->areOverlaysVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    iget v1, p1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    move p5, p2

    goto :goto_2

    .line 230
    :cond_3
    iget v1, p1, Landroid/graphics/RectF;->right:F

    int-to-float v2, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    goto :goto_2

    :cond_4
    move p2, p5

    :goto_2
    add-int/2addr p3, p4

    add-int/2addr p3, p4

    .line 237
    iget-object p4, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-eqz p4, :cond_5

    .line 238
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, p2

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_bookmarkMargin:I

    sub-int/2addr v1, v2

    .line 239
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, p2

    iget p2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_bookmarkMargin:I

    sub-int/2addr v2, p2

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    add-int/2addr p2, p3

    .line 238
    invoke-virtual {p4, v1, p3, v2, p2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 242
    :cond_5
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    if-eqz p2, :cond_6

    .line 243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    sub-int/2addr p4, p5

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    sub-int/2addr p4, v1

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_bookmarkMargin:I

    sub-int/2addr p4, v1

    .line 244
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, p5

    iget p5, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_bookmarkMargin:I

    sub-int/2addr v1, p5

    iget-object p5, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getHeight()I

    move-result p5

    add-int/2addr p5, v0

    .line 243
    invoke-virtual {p2, p4, v0, v1, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 247
    :cond_6
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-eqz p2, :cond_7

    .line 248
    iget p4, p1, Landroid/graphics/RectF;->left:F

    float-to-int p4, p4

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    move-result p5

    add-int/2addr p4, p5

    iget p5, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_bookmarkMargin:I

    add-int/2addr p4, p5

    iget p5, p1, Landroid/graphics/RectF;->left:F

    float-to-int p5, p5

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    .line 249
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    add-int/2addr p5, v1

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_bookmarkMargin:I

    add-int/2addr p5, v1

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    add-int/2addr v1, p3

    .line 248
    invoke-virtual {p2, p4, p3, p5, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 252
    :cond_7
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    if-eqz p2, :cond_a

    .line 253
    iget p3, p1, Landroid/graphics/RectF;->left:F

    float-to-int p3, p3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    move-result p4

    add-int/2addr p3, p4

    iget p4, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_bookmarkMargin:I

    add-int/2addr p3, p4

    iget p1, p1, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    iget-object p4, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    .line 254
    invoke-virtual {p4}, Landroid/widget/ImageView;->getWidth()I

    move-result p4

    add-int/2addr p1, p4

    iget p4, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_bookmarkMargin:I

    add-int/2addr p1, p4

    iget-object p4, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getHeight()I

    move-result p4

    add-int/2addr p4, v0

    .line 253
    invoke-virtual {p2, p3, v0, p1, p4}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_3

    .line 258
    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/newsstand/core/R$dimen;->replica_view_top_margin:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 260
    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-eqz p3, :cond_9

    .line 261
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLeft()I

    move-result p5

    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int/2addr p5, v0

    iget v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_bookmarkMargin:I

    sub-int/2addr p5, v0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    add-int/2addr v0, p2

    add-int/2addr v0, p4

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    .line 262
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_bookmarkMargin:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    add-int/2addr v2, p2

    add-int/2addr v2, p4

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    .line 263
    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    add-int/2addr v2, p2

    .line 261
    invoke-virtual {p3, p5, v0, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 266
    :cond_9
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    if-eqz p2, :cond_a

    .line 267
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLeft()I

    move-result p3

    iget p4, p1, Landroid/graphics/RectF;->right:F

    float-to-int p4, p4

    sub-int/2addr p3, p4

    iget p4, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_bookmarkMargin:I

    sub-int/2addr p3, p4

    iget p4, p1, Landroid/graphics/RectF;->top:F

    float-to-int p4, p4

    iget-object p5, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    .line 268
    invoke-virtual {p5}, Landroid/widget/ImageView;->getTop()I

    move-result p5

    add-int/2addr p4, p5

    iget-object p5, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {p5}, Landroid/widget/ImageView;->getRight()I

    move-result p5

    iget v0, p1, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    sub-int/2addr p5, v0

    iget v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_bookmarkMargin:I

    sub-int/2addr p5, v0

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    .line 269
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    .line 267
    invoke-virtual {p2, p3, p4, p5, p1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 274
    :cond_a
    :goto_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1c

    if-lt p1, p2, :cond_c

    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-eqz p1, :cond_c

    .line 277
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    .line 278
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 279
    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_c

    .line 281
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p3

    if-lez p3, :cond_c

    .line 282
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    .line 283
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p4

    if-eqz p4, :cond_b

    .line 284
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 285
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget p4, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_bookmarkMargin:I

    add-int/2addr p2, p4

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 286
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 289
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget p3, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_bookmarkMargin:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 290
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    return-void
.end method

.method public onShow()V
    .locals 1

    .line 308
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->updateBookmarkVisibility()V

    .line 309
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->onShow()V

    return-void
.end method

.method public pan(FF)Z
    .locals 2

    .line 143
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->isInZoom()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->pan(FF)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public performDoubleTap(FF)Z
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->getView()Lcom/amazon/android/docviewer/mobi/ReplicaView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->performDoubleTap(FF)Z

    move-result p1

    return p1
.end method

.method public performSingleTap(FF)Z
    .locals 1

    .line 617
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->getView()Lcom/amazon/android/docviewer/mobi/ReplicaView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->performSingleTap(FF)Z

    move-result p1

    return p1
.end method

.method public performToggleBookmark(FF)Z
    .locals 8

    .line 431
    sget-object v0, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Error:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    .line 432
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->isZoomed()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 433
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/amazon/kindle/newsstand/core/R$dimen;->replica_bookmark_corner_size:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 434
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->computeMargins(II)Landroid/graphics/RectF;

    move-result-object v4

    .line 435
    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    if-eqz v5, :cond_0

    float-to-int v6, p1

    .line 437
    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    mul-int/lit8 v7, v1, 0x2

    sub-int/2addr v5, v7

    if-lt v6, v5, :cond_0

    int-to-float v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    float-to-int v5, p2

    iget-object v6, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    .line 438
    invoke-virtual {v6}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    add-int/2addr v6, v1

    if-gt v5, v6, :cond_0

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 440
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->toggle()Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    move-result-object v0

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    .line 444
    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    if-eqz v5, :cond_1

    float-to-int p1, p1

    .line 446
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    if-gt p1, v5, :cond_1

    int-to-float p1, p1

    iget v5, v4, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_1

    float-to-int p1, p2

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    .line 447
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result p2

    add-int/2addr p2, v1

    if-gt p1, p2, :cond_1

    int-to-float p1, p1

    iget p2, v4, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_1

    .line 449
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->toggle()Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 454
    :goto_0
    sget-object p1, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Added:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    const-string p2, "NewsstandReplicaView"

    if-ne v0, p1, :cond_3

    .line 456
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "AddBookmarkTapInCorner"

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 458
    :cond_3
    sget-object p1, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;->Deleted:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark$EToggleResult;

    if-ne v0, p1, :cond_4

    .line 460
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "DeleteBookmark"

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v2
.end method

.method public resetBookmark()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->destroy()V

    .line 78
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/BookmarkButton;->destroy()V

    .line 84
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmark:Lcom/amazon/kcp/periodicals/ui/BookmarkButton;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 89
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 94
    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    :cond_3
    return-void
.end method

.method public resetZoom()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getZoom()F

    move-result v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getDefaultZoom()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getDefaultZoom()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setZoom(F)V

    .line 161
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->updateBookmarkVisibility()V

    :cond_0
    return-void
.end method

.method public setNewPageReachedListener(Lcom/amazon/nwstd/replica/INewPageReachedListener;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->setNewPageReachedListener(Lcom/amazon/nwstd/replica/INewPageReachedListener;)V

    return-void
.end method

.method public stopScrollingAnimation()V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->stopScrollingAnimation()V

    return-void
.end method

.method public updateBookmarkHintVisibility()V
    .locals 3

    .line 468
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_bookmark_hints_chromes_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    .line 478
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->isZoomed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 479
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-eqz v0, :cond_5

    .line 484
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getModel()Lcom/amazon/nwstd/model/replica/ReplicaModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->isPageBookmarked(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 489
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;

    invoke-interface {v0}, Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;->areOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    .line 490
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 491
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->show()V

    goto :goto_0

    .line 492
    :cond_3
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;

    invoke-interface {v0}, Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;->areOverlaysVisible()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    .line 493
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 494
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->hide()V

    goto :goto_0

    .line 497
    :cond_4
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 498
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->hide()V

    .line 502
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-eqz v0, :cond_c

    .line 503
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getModel()Lcom/amazon/nwstd/model/replica/ReplicaModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->isPageBookmarked(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_toggleBookmark:Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    .line 504
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->getModel()Lcom/amazon/nwstd/model/replica/ReplicaModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/nwstd/model/replica/ReplicaModel;->getPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/amazon/android/docviewer/bookmarks/IToggleBookmark;->isPageBookmarked(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 509
    :cond_7
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;

    invoke-interface {v0}, Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;->areOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    .line 510
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 511
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->show()V

    goto :goto_1

    .line 512
    :cond_8
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_overlaysVisibility:Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;

    invoke-interface {v0}, Lcom/amazon/kcp/periodicals/ui/IOverlaysVisibility;->areOverlaysVisible()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    .line 513
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 514
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->hide()V

    goto :goto_1

    .line 517
    :cond_9
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 518
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->hide()V

    goto :goto_1

    .line 523
    :cond_a
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 524
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_leftBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->hide()V

    .line 526
    :cond_b
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 527
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_rightBookmarkHint:Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/BookmarkHintButton;->hide()V

    :cond_c
    :goto_1
    return-void
.end method

.method public waitForInit()V
    .locals 1

    .line 592
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->getView()Lcom/amazon/android/docviewer/mobi/ReplicaView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->waitForInit()V

    return-void
.end method

.method public zoom(FFF)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->m_imageView:Lcom/amazon/android/docviewer/mobi/ReplicaView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/ReplicaView;->zoom(FFF)V

    .line 137
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/ImageZoomPage;->updateBookmarkVisibility()V

    return-void
.end method
