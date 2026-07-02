.class public Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;
.super Lcom/amazon/kindle/nln/BaseNonLinearFragment;
.source "PageFlipFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cachedSeekbarPosition:I

.field private centerLocker:Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;

.field private changeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private commandBar:Lcom/amazon/android/widget/CommandBar;

.field private commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

.field private locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

.field private pageFlipPositionTracker:Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;

.field private readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

.field private stateManager:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;

.field private toolbarContainer:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    const-class v0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;-><init>()V

    const/4 v0, -0x1

    .line 109
    iput v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->cachedSeekbarPosition:I

    .line 111
    new-instance v0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;-><init>(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->stateManager:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;

    .line 113
    new-instance v0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;-><init>(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->changeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->jumpToWaypointTracker:Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;I)I
    .locals 0

    .line 83
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->cachedSeekbarPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)Lcom/amazon/kindle/nln/NlnThumbnailAdapter;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->stateManager:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)Lcom/amazon/kindle/nln/NlnThumbnailAdapter;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->recordScrubberMetric(I)V

    return-void
.end method

.method private inflateAndAddToolbar()V
    .locals 6

    .line 486
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 492
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v0, :cond_6

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 498
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 502
    iget-object v3, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->contentView:Landroid/view/ViewGroup;

    sget v5, Lcom/amazon/kindle/krl/R$id;->toolbar_with_shadow:I

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 503
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$layout;->toolbar_with_shadow:I

    iget-object v5, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 504
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 505
    iget-object v3, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 506
    invoke-static {v1, v2}, Lcom/amazon/android/widget/CommandBarUtils;->inflateCommandBar(Landroid/view/ViewGroup;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/android/widget/CommandBar;

    move-result-object v2

    .line 507
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getCommandBarItemController()Lcom/amazon/android/widget/CommandBarItemController;

    move-result-object v3

    .line 508
    invoke-virtual {v3, v2, v0}, Lcom/amazon/android/widget/CommandBarItemController;->inflateCommandBarItems(Lcom/amazon/android/widget/CommandBar;Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 509
    iput-object v2, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBar:Lcom/amazon/android/widget/CommandBar;

    .line 510
    iput-object v3, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    .line 511
    iput-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->toolbarContainer:Landroid/view/View;

    goto :goto_1

    .line 513
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getToolbarContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 515
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 516
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    :cond_4
    if-eqz v3, :cond_5

    .line 518
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 521
    :cond_5
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 522
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 524
    iget-object v2, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->contentView:Landroid/view/ViewGroup;

    sget v3, Lcom/amazon/kindle/krl/R$id;->toolbar_with_shadow:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 525
    iget-object v2, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 526
    iput-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->toolbarContainer:Landroid/view/View;

    :cond_6
    :goto_1
    return-void
.end method

.method private recordScrubberMetric(I)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 183
    :goto_0
    new-instance v2, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {v2, p1, p1}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    invoke-static {v2}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->setEndPositionRange(Lcom/amazon/android/docviewer/IPositionRange;)V

    .line 184
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->SCRUBBER:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object v2, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->POST_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V

    return-void
.end method

.method public static updateBreadcrumbShift()V
    .locals 5

    .line 880
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 881
    sget v1, Lcom/amazon/kindle/krl/R$id;->pageflip_layout:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 885
    :cond_1
    sget v1, Lcom/amazon/kindle/krl/R$id;->breadcrumb_1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 886
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 887
    sget v3, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->breadcrumbPageOffset:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 888
    sget v3, Lcom/amazon/kindle/krl/R$id;->breadcrumb_2:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 889
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 890
    sget v4, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->breadcrumbPageOffset:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 891
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected findFocusPages(Lcom/amazon/kindle/nln/VisiblePagesData;)V
    .locals 5

    .line 639
    iget v0, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->middleVisiblePageIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 640
    iget-object v1, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->onScreenViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->updateFocusPage(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;I)V

    .line 641
    iget v0, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->middleVisiblePageIndex:I

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget-object v3, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->onScreenViews:Ljava/util/List;

    sub-int/2addr v0, v1

    .line 642
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 645
    :goto_0
    iget v3, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->middleVisiblePageIndex:I

    iget-object v4, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->onScreenViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_1

    iget-object v2, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->onScreenViews:Ljava/util/List;

    iget p1, p1, Lcom/amazon/kindle/nln/VisiblePagesData;->middleVisiblePageIndex:I

    add-int/2addr p1, v1

    .line 646
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    :cond_1
    const/4 p1, 0x0

    .line 648
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->updateFocusPage(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;I)V

    const/4 p1, 0x2

    .line 649
    invoke-virtual {p0, v2, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->updateFocusPage(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;I)V

    :cond_2
    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 476
    sget v0, Lcom/amazon/kindle/krl/R$id;->content_container:I

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 465
    sget v0, Lcom/amazon/kindle/krl/R$layout;->pfv_layout:I

    return v0
.end method

.method protected getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 471
    new-instance v0, Landroidx/recyclerview/widget/PageFlipLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/PageFlipLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;
    .locals 1

    .line 845
    sget-object v0, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    return-object v0
.end method

.method protected getPageFlipRecyclerView()Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;

    return-object v0
.end method

.method protected inflateAndAddLocationSeeker()V
    .locals 7

    .line 536
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v0, :cond_0

    .line 537
    sget-object v0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Why is the location seeker not null on this object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;->getPageFlipLocationSeekerLayout(Landroid/content/Context;)I

    move-result v0

    .line 541
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    .line 542
    iput-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    .line 544
    sget v1, Lcom/amazon/kindle/krl/R$id;->mask_gap:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;->adjustGapWithForMask(Landroid/view/View;)V

    .line 545
    sget v1, Lcom/amazon/kindle/krl/R$id;->additional_control:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 546
    sget v3, Lcom/amazon/kindle/krl/R$id;->seeker_bar_animatable:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 547
    invoke-static {v1, v3}, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;->addAdditionalControlListener(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 552
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    const/4 v3, -0x1

    if-eqz v1, :cond_4

    .line 553
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 554
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    .line 555
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    .line 557
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v5

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBeginningPosition()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setMaxPossibleSeekPosition(I)V

    .line 560
    iget v5, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->cachedSeekbarPosition:I

    if-eq v5, v3, :cond_1

    goto :goto_0

    .line 562
    :cond_1
    iget-object v5, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->startPositionOnShow:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v5, :cond_2

    .line 563
    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v5

    goto :goto_0

    .line 565
    :cond_2
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v5

    .line 568
    :goto_0
    invoke-virtual {v0, v5}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setSeekPosition(I)V

    .line 569
    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setSeekerDirection(Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;)V

    .line 571
    sget v1, Lcom/amazon/kindle/krl/R$id;->location_seeker_and_text_container:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 573
    invoke-static {v4}, Lcom/amazon/kindle/utils/RTLUtils;->getLayoutDirection(Lcom/amazon/kindle/model/content/ILocalBookItem;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 576
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getCurrentSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    .line 577
    instance-of v4, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    if-eqz v4, :cond_4

    .line 578
    check-cast v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    iget-object v4, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->changeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->addOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 582
    :cond_4
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 583
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->contentView:Landroid/view/ViewGroup;

    sget v3, Lcom/amazon/kindle/krl/R$id;->location_container:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 585
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->contentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 587
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setLocationSeekerBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected internalOnKindleDocNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 3

    .line 746
    invoke-super {p0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->internalOnKindleDocNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V

    .line 749
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne v1, v2, :cond_0

    .line 752
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setSeekPosition(I)V

    :cond_0
    return-void
.end method

.method protected newBreadcrumbResourceProvider()Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;
    .locals 2

    .line 850
    new-instance v0, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/nln/breadcrumb/PageFlipBreadcrumbResources;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected newTransitionManager()Lcom/amazon/kindle/nln/NlnTransitionManager;
    .locals 1

    .line 840
    new-instance v0, Lcom/amazon/kindle/nln/PageFlipTransitionManager;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/PageFlipTransitionManager;-><init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V

    return-object v0
.end method

.method public onAnnotationDatabaseEvent(Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 724
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 725
    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailManager;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-nez v0, :cond_1

    return-void

    .line 734
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent;->getAnnotations()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 735
    invoke-interface {v1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v2

    if-eqz v2, :cond_3

    .line 736
    invoke-interface {v1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 737
    :cond_3
    invoke-interface {v1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I

    move-result v1

    if-ltz v1, :cond_2

    .line 739
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 667
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 668
    instance-of v0, p1, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_0

    .line 669
    check-cast p1, Lcom/amazon/kcp/reader/ReaderActivity;

    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 671
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 257
    invoke-super {p0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->workaroundWindowsBeingTooTiny()V

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBar:Lcom/amazon/android/widget/CommandBar;

    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->inflateAndAddToolbar()V

    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    if-eqz v0, :cond_0

    .line 272
    iget-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBar:Lcom/amazon/android/widget/CommandBar;

    invoke-virtual {v0, v1}, Lcom/amazon/android/widget/CommandBarItemController;->populateCommandBar(Lcom/amazon/android/widget/CommandBar;)V

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->setupBookTitleBar(Landroid/view/ViewGroup;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x1

    const-string v1, "PageFlipFragment onCreateView"

    .line 208
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 209
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    .line 210
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v3

    .line 212
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 217
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->setupBookTitleBar(Landroid/view/ViewGroup;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 219
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->inflateAndAddLocationSeeker()V

    .line 221
    invoke-direct {p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->inflateAndAddToolbar()V

    .line 223
    iget-object p3, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->stateManager:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;

    invoke-virtual {p3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 225
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->getPageFlipRecyclerView()Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;

    move-result-object p3

    if-eqz v3, :cond_1

    .line 227
    invoke-virtual {p3, v3}, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->setThumbnailManager(Lcom/amazon/kindle/nln/IThumbnailManager;)V

    .line 230
    :cond_1
    new-instance p3, Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;

    invoke-direct {p3}, Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;-><init>()V

    iput-object p3, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->pageFlipPositionTracker:Lcom/amazon/kindle/nln/pageflip/PageFlipPositionTracker;

    .line 232
    sget p3, Lcom/amazon/kindle/krl/R$id;->pageflip_layout:I

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/nln/pageflip/PageFlipFrameLayout;

    .line 234
    iget-boolean v3, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isRTLContent:Z

    invoke-virtual {p3, v3}, Lcom/amazon/kindle/nln/pageflip/PageFlipFrameLayout;->setContentDirection(I)V

    .line 236
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 237
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object p2

    .line 238
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p2

    .line 239
    :cond_2
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->showViewsForReaderMode(Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)V

    .line 241
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderLayoutCustomizer()Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;->getSystemUiFlags(Z)I

    move-result p2

    .line 242
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 244
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->workaroundWindowsBeingTooTiny()V

    const/4 p2, 0x0

    .line 246
    invoke-static {v1, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->contentView:Landroid/view/ViewGroup;

    .line 410
    invoke-super {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onDestroyView()V

    .line 411
    iget-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getCurrentSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 413
    :goto_0
    instance-of v3, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    if-eqz v3, :cond_1

    .line 414
    check-cast v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    iget-object v3, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->changeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->removeOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 417
    :cond_1
    iput-object v2, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->toolbarContainer:Landroid/view/View;

    .line 419
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->stateManager:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;

    if-eqz v3, :cond_2

    .line 420
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 423
    :cond_2
    iput-object v2, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 425
    iget-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v1, :cond_3

    .line 426
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 427
    iget-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onDestroy()V

    .line 428
    iget-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 429
    iput-object v2, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    :cond_3
    if-eqz v0, :cond_4

    .line 433
    sget v1, Lcom/amazon/kindle/krl/R$id;->pageflip_layout:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 435
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_4
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 676
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 677
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFirstLayout()V
    .locals 2

    .line 442
    invoke-super {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onFirstLayout()V

    .line 444
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBar:Lcom/amazon/android/widget/CommandBar;

    .line 445
    iget-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 447
    invoke-virtual {v1, v0}, Lcom/amazon/android/widget/CommandBarItemController;->populateCommandBar(Lcom/amazon/android/widget/CommandBar;)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->centerLocker:Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;

    if-eqz v0, :cond_1

    return-void

    .line 455
    :cond_1
    new-instance v0, Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;

    invoke-direct {v0}, Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->centerLocker:Lcom/amazon/kindle/nln/pageflip/CenterLockScrollListener;

    .line 456
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 457
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_2

    .line 458
    new-instance v0, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;

    iget-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/nln/RecyclerScrollSettleListener;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 459
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_2
    return-void
.end method

.method protected onFragmentShown()V
    .locals 2

    .line 391
    invoke-super {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onFragmentShown()V

    .line 392
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$3;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$3;-><init>(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method

.method protected onNavigation(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 2

    .line 655
    invoke-super {p0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onNavigation(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 656
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getCurrentSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 658
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 660
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->stateManager:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->usingNavigation()V

    .line 661
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    return-void
.end method

.method protected onOrientationChanged()V
    .locals 2

    .line 682
    invoke-super {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onOrientationChanged()V

    .line 683
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 688
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onDestroy()V

    const/4 v0, 0x0

    .line 689
    iput-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    .line 691
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->inflateAndAddLocationSeeker()V

    :cond_1
    return-void
.end method

.method protected onPageClicked(Landroid/view/View;)V
    .locals 3

    .line 855
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    .line 856
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    .line 857
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 861
    :cond_0
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v2

    .line 862
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    if-lez v2, :cond_1

    .line 864
    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ge v1, v0, :cond_1

    .line 866
    invoke-super {p0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onPageClicked(Landroid/view/View;)V

    goto :goto_0

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 871
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onReaderModeChangedEvent(Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 327
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->contentView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$2;-><init>(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 341
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq v0, v1, :cond_0

    .line 342
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne p1, v0, :cond_1

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBar:Lcom/amazon/android/widget/CommandBar;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v1, :cond_1

    .line 344
    invoke-virtual {v0, p1, v1}, Lcom/amazon/android/widget/CommandBarItemController;->inflateCommandBarItems(Lcom/amazon/android/widget/CommandBar;Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 345
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBar:Lcom/amazon/android/widget/CommandBar;

    invoke-virtual {p1, v0}, Lcom/amazon/android/widget/CommandBarItemController;->populateCommandBar(Lcom/amazon/android/widget/CommandBar;)V

    :cond_1
    return-void
.end method

.method public onScreenViewsChanged(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;II)V"
        }
    .end annotation

    .line 619
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onScreenViewsChanged(Ljava/util/List;II)V

    .line 621
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 622
    invoke-virtual {p3}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getCurrentSeekBar()Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 623
    invoke-interface {p3}, Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    .line 624
    :cond_1
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->stateManager:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;

    invoke-virtual {p3}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->shouldSync()Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz v0, :cond_4

    if-ltz p2, :cond_4

    .line 625
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p1

    const/4 p2, -0x1

    if-eqz p1, :cond_2

    .line 626
    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    if-eq p1, p2, :cond_3

    .line 628
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 629
    iput p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->cachedSeekbarPosition:I

    goto :goto_2

    .line 631
    :cond_3
    sget-object p1, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->TAG:Ljava/lang/String;

    const-string p2, "Wasn\'t able to get a KRF Position for the screen in the middle of the page."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onThumbnailManagerReadyEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 355
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onThumbnailManagerReadyEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;)V

    .line 360
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->getPageFlipRecyclerView()Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/pageflip/PageFlipRecyclerView;->setThumbnailManager(Lcom/amazon/kindle/nln/IThumbnailManager;)V

    return-void
.end method

.method public onViewOptionsEvent(Lcom/amazon/kindle/krx/events/UIEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 701
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 702
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->getElement()Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 704
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFocusedPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 707
    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    .line 708
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(I)V

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 v0, 0x1

    .line 711
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFocusPageHolder(I)Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 712
    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 713
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getTransitionManager()Lcom/amazon/kindle/nln/NlnTransitionManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/kindle/nln/NlnTransitionManager;->setupTransitionOut(Landroid/view/View;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_2
    return-void
.end method

.method public populateCommandBar()V
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    if-eqz v0, :cond_0

    .line 759
    iget-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBar:Lcom/amazon/android/widget/CommandBar;

    invoke-virtual {v0, v1}, Lcom/amazon/android/widget/CommandBarItemController;->populateCommandBar(Lcom/amazon/android/widget/CommandBar;)V

    :cond_0
    return-void
.end method

.method public refreshCommandBarIcon(Ljava/lang/String;)V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBar:Lcom/amazon/android/widget/CommandBar;

    .line 599
    iget-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {v1, v0, p1}, Lcom/amazon/android/widget/CommandBarItemController;->refreshCommandBarIcon(Lcom/amazon/android/widget/CommandBar;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public refreshToggleBookmarkItem()V
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBar:Lcom/amazon/android/widget/CommandBar;

    .line 611
    iget-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->commandBarItemController:Lcom/amazon/android/widget/CommandBarItemController;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 613
    invoke-virtual {v1, v0}, Lcom/amazon/android/widget/CommandBarItemController;->refreshToggleBookmarkItem(Lcom/amazon/android/widget/CommandBar;)V

    :cond_0
    return-void
.end method

.method protected setupBookTitleBar(Landroid/view/ViewGroup;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 194
    sget v1, Lcom/amazon/kindle/krl/R$attr;->pfvBookInfoIcon:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 201
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 202
    invoke-static {p1, p2, v1}, Lcom/amazon/android/widget/TitleContainerUtil;->setupBookTitleBarPFV(Landroid/view/ViewGroup;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method protected showViewsForReaderMode(Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)V
    .locals 6

    .line 365
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 370
    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->DOUBLETIME:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 372
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const/16 v4, 0x8

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 374
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 377
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->contentView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 379
    sget v4, Lcom/amazon/kindle/krl/R$id;->title_container:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v0, :cond_3

    const/16 v5, 0x8

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 380
    sget v4, Lcom/amazon/kindle/krl/R$id;->location_container:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 383
    :cond_5
    iget-object p1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->breadcrumbManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    if-eqz p1, :cond_6

    .line 385
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->setBreadcrumbEnabled(Z)V

    :cond_6
    return-void
.end method

.method protected workaroundWindowsBeingTooTiny()V
    .locals 6

    .line 302
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 303
    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->isWindowSmallerThanMinHeight(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 304
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v2, :cond_2

    .line 306
    :goto_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 307
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 309
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/amazon/kindle/krl/R$id;->above_decorator:I

    if-eq v4, v5, :cond_1

    .line 310
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
