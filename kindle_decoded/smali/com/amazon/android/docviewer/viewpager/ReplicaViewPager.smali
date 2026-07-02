.class public Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;
.super Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;
.source "ReplicaViewPager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private gestureDetector:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

.field private mOrientation:I

.field private mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

.field private mOrientationChangeEvent:Lcom/amazon/foundation/IIntEventProvider;

.field private m_lastKnownCurrentPageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

.field private m_navigationHistoryManager:Lcom/amazon/android/docviewer/INavigationHistoryManager;

.field private m_overlayController:Lcom/amazon/android/docviewer/IOverlayController;

.field private m_replicaViewAdapter:Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

.field private m_viewPagerScrollState:I

.field private updatePageCurlIndexDelegate:Lcom/amazon/android/docviewer/viewpager/UpdatePageCurlIndexDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance p1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_lastKnownCurrentPageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

    .line 38
    iput v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_viewPagerScrollState:I

    .line 41
    new-instance p1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$1;

    invoke-direct {p1, p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$1;-><init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_lastKnownCurrentPageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

    .line 38
    iput p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_viewPagerScrollState:I

    .line 41
    new-instance p1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$1;

    invoke-direct {p1, p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$1;-><init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_viewPagerScrollState:I

    return p1
.end method

.method private isNewtronPhase1Enabled()Z
    .locals 2

    .line 415
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private reportRotationEndMetrics()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_replicaViewAdapter:Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_replicaViewAdapter:Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    .line 351
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    new-instance v1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$5;

    invoke-direct {v1, p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$5;-><init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;)V

    .line 375
    invoke-interface {v0, v1}, Lcom/amazon/nwstd/replica/IReplicaPage;->addLoadingFinishedListener(Lcom/amazon/nwstd/replica/IReplicaPage$LoadingListener;)V

    .line 379
    new-instance v1, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$6;

    invoke-direct {v1, p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$6;-><init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;)V

    .line 395
    invoke-interface {v0, v1}, Lcom/amazon/nwstd/replica/IReplicaPage;->addPostDrawListener(Lcom/amazon/nwstd/replica/IReplicaPage$FirstDrawListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanComponents()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->mOrientationChangeEvent:Lcom/amazon/foundation/IIntEventProvider;

    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_lastKnownCurrentPageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

    .line 310
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_replicaViewAdapter:Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 311
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->setNewPageReachedListener(Lcom/amazon/nwstd/replica/INewPageReachedListener;)V

    .line 312
    invoke-virtual {p0, v1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setAdapter(Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->gestureDetector:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {v0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->destroy()V

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 339
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setOnPageChangeListener(Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;)V

    .line 340
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setOnCompleteScrollListener(Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnCompleteScrollAfterSetItemSmoothListener;)V

    .line 341
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getGestureDetector()Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->setCurlView(Lcom/amazon/kindle/pagecurl/CurlView;)V

    .line 342
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->cleanComponents()V

    return-void
.end method

.method public getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;
    .locals 2

    .line 212
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_lastKnownCurrentPageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

    return-object v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_replicaViewAdapter:Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getContentPageIndexFromViewPagerPosition(I)Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v0

    return-object v0
.end method

.method public getGestureDetector()Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->gestureDetector:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    return-object v0
.end method

.method public getMaximumPageIndexValue()I
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_replicaViewAdapter:Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getPageCount()I

    move-result v0

    return v0
.end method

.method public getNavigationMarginPercent()F
    .locals 2

    .line 287
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$integer;->navigation_margin_percent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->mOrientation:I

    return v0
.end method

.method public getOverlayController()Lcom/amazon/android/docviewer/IOverlayController;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_overlayController:Lcom/amazon/android/docviewer/IOverlayController;

    return-object v0
.end method

.method public getTotalPages()I
    .locals 1

    .line 227
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public hasNextPage()Z
    .locals 3

    .line 222
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public initialize(Landroid/content/Context;Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;Lcom/amazon/android/docviewer/IOverlayController;Lcom/amazon/android/docviewer/INavigationHistoryManager;Lcom/amazon/foundation/IIntEventProvider;)V
    .locals 0

    .line 74
    iput-object p3, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_overlayController:Lcom/amazon/android/docviewer/IOverlayController;

    .line 75
    iput-object p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_replicaViewAdapter:Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    .line 76
    iput-object p4, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_navigationHistoryManager:Lcom/amazon/android/docviewer/INavigationHistoryManager;

    .line 77
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    iput p3, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->mOrientation:I

    .line 78
    iput-object p5, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->mOrientationChangeEvent:Lcom/amazon/foundation/IIntEventProvider;

    .line 80
    invoke-virtual {p0, p2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setAdapter(Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/newsstand/core/R$color;->replica_page_background_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 82
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/newsstand/core/R$dimen;->replica_view_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setPageMargin(I)V

    .line 84
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->mOrientationChangeEvent:Lcom/amazon/foundation/IIntEventProvider;

    if-eqz p1, :cond_0

    .line 85
    iget-object p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->mOrientationChangeCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {p1, p2}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    :cond_0
    return-void
.end method

.method public invalidateChildren()V
    .locals 3

    const/4 v0, 0x0

    .line 322
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 323
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 325
    instance-of v2, v1, Lcom/amazon/nwstd/replica/IReplicaPage;

    if-eqz v2, :cond_0

    .line 326
    check-cast v1, Lcom/amazon/nwstd/replica/IReplicaPage;

    invoke-interface {v1}, Lcom/amazon/nwstd/replica/IReplicaPage;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isAnimationStillRunning()Z
    .locals 1

    .line 335
    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_viewPagerScrollState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->gestureDetector:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-virtual {v0}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->isCurlHidden()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isZoomed()Z
    .locals 2

    .line 272
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getAdapter()Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getCurrentPageView()Lcom/amazon/nwstd/replica/IReplicaPage;

    move-result-object v0

    .line 274
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/android/docviewer/mapper/PageIndex;->isNormalPage(Lcom/amazon/android/docviewer/mapper/PageIndex;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IReplicaPage;->getZoomablePage()Lcom/amazon/nwstd/replica/IZoomablePage;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Lcom/amazon/nwstd/replica/IZoomablePage;->isZoomed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveToNextPage(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_navigationHistoryManager:Lcom/amazon/android/docviewer/INavigationHistoryManager;

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/INavigationHistoryManager;->addImageViewHistoryPoint(Lcom/amazon/android/docviewer/mapper/PageIndex;)V

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->getCurrentItem()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public moveToPage(Lcom/amazon/android/docviewer/mapper/PageIndex;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 255
    iget-object p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_navigationHistoryManager:Lcom/amazon/android/docviewer/INavigationHistoryManager;

    if-eqz p2, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/amazon/android/docviewer/INavigationHistoryManager;->addImageViewHistoryPoint(Lcom/amazon/android/docviewer/mapper/PageIndex;)V

    .line 259
    :cond_0
    iget-object p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_replicaViewAdapter:Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->getViewPagerPositionFromContentPageIndex(Lcom/amazon/android/docviewer/mapper/PageIndex;)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public navigateToNewReplicaPageIndex(I)V
    .locals 2

    .line 406
    sget-object v0, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->NORMAL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    .line 407
    new-instance v1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-direct {v1, p1, v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(ILcom/amazon/android/docviewer/mapper/PageIndex$PageType;)V

    const/4 v0, 0x0

    .line 408
    invoke-virtual {p0, v1, v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->moveToPage(Lcom/amazon/android/docviewer/mapper/PageIndex;Z)V

    .line 409
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->updatePageCurlIndexDelegate:Lcom/amazon/android/docviewer/viewpager/UpdatePageCurlIndexDelegate;

    if-eqz v0, :cond_0

    .line 410
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/viewpager/UpdatePageCurlIndexDelegate;->updatePageCurlIndex(I)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 142
    invoke-super {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->gestureDetector:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1, p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->onInterceptTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 247
    iget-object p2, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->gestureDetector:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    if-eqz p2, :cond_0

    sub-int/2addr p1, p3

    .line 248
    invoke-virtual {p2, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->adjustDelta(I)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->gestureDetector:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setGestureDetector(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->gestureDetector:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    .line 168
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->mOrientation:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 170
    sget-object v1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->ROTATE_REPLICA_VIEW_TO_PORTRAIT_UX:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 171
    sget-object v1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->ROTATE_REPLICA_VIEW_TO_PORTRAIT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 172
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->ROTATION_LANDSCAPE_TO_PORTRAIT:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 174
    sget-object v1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->ROTATE_REPLICA_VIEW_TO_LANDSCAPE_UX:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 175
    sget-object v1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->ROTATE_REPLICA_VIEW_TO_LANDSCAPE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 176
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->ROTATION_PORTRAIT_TO_LANDSCAPE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    :cond_1
    :goto_0
    iput p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->mOrientation:I

    .line 183
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->gestureDetector:Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    if-eqz p1, :cond_2

    .line 184
    invoke-virtual {p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->onOrientationChange()V

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_replicaViewAdapter:Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    iget v1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;->setOrientation(I)V

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->moveToPage(Lcom/amazon/android/docviewer/mapper/PageIndex;Z)V

    .line 199
    iget-object p1, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->m_replicaViewAdapter:Lcom/amazon/android/docviewer/viewpager/ReplicaViewAdapter;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->notifyDataSetChanged()V

    .line 201
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->reportRotationEndMetrics()V

    return-void
.end method

.method public setUp(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Lcom/amazon/kindle/model/content/LocalBookState;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->isNewtronPhase1Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$2;-><init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->updatePageCurlIndexDelegate:Lcom/amazon/android/docviewer/viewpager/UpdatePageCurlIndexDelegate;

    .line 101
    :cond_0
    new-instance v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$3;-><init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setOnPageChangeListener(Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnPageChangeListener;)V

    .line 121
    new-instance v0, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$4;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager$4;-><init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;)V

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;->setOnCompleteScrollListener(Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$OnCompleteScrollAfterSetItemSmoothListener;)V

    .line 130
    new-instance v0, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;

    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getGridViewController()Lcom/amazon/nwstd/gridview/GridViewController;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;-><init>(Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;Lcom/amazon/nwstd/gridview/GridViewController;)V

    .line 131
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaMagnifierController()Lcom/amazon/nwstd/ui/ReplicaMagnifierController;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;->setReplicaMagnifierController(Lcom/amazon/nwstd/ui/ReplicaMagnifierController;)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->setGestureDetector(Lcom/amazon/nwstd/ui/ReplicaViewGestureDetector;)V

    if-eqz p2, :cond_1

    .line 135
    invoke-virtual {p2}, Lcom/amazon/kindle/model/content/LocalBookState;->getLastReadViewMode()Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;->IMAGE:Lcom/amazon/kindle/model/content/LocalBookState$LPR_MODE;

    if-ne p1, v0, :cond_1

    .line 136
    new-instance p1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p2}, Lcom/amazon/kindle/model/content/LocalBookState;->getLastPageRead()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/viewpager/ReplicaViewPager;->moveToPage(Lcom/amazon/android/docviewer/mapper/PageIndex;Z)V

    :cond_1
    return-void
.end method
