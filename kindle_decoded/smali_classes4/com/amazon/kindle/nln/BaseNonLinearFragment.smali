.class public abstract Lcom/amazon/kindle/nln/BaseNonLinearFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseNonLinearFragment.java"

# interfaces
.implements Lcom/amazon/kindle/nln/IOnScreenViewsChangedListener;
.implements Lcom/amazon/kindle/positionmarker/IMarkedPositionManager$IMarkedPositionsChangedListener;
.implements Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$IBreadcrumbListener;
.implements Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/BaseNonLinearFragment$ScrollStateNotifier;,
        Lcom/amazon/kindle/nln/BaseNonLinearFragment$ThumbnailPageClickedListener;
    }
.end annotation


# static fields
.field private static final SAVED_FOCUS_POSITION_KEY:Ljava/lang/String; = "FOCUS_POS_KEY"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapterDirty:Z

.field protected breadcrumbManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

.field protected contentView:Landroid/view/ViewGroup;

.field protected currentOrientation:I

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private focusPageHolders:[Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

.field private focusPagesDirty:Z

.field protected fragmentManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

.field private handler:Landroid/os/Handler;

.field private initialScrollPending:Z

.field protected isRTLContent:Z

.field protected isTransitioning:Z

.field protected jumpToWaypointTracker:Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

.field private lastVisiblePages:Lcom/amazon/kindle/nln/VisiblePagesData;

.field protected mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

.field private markedPositionManager:Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private onScreenScrollListener:Lcom/amazon/kindle/nln/ReportOnScreenScrollListener;

.field private pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

.field private pageRefreshNeeded:Z

.field protected recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected startPositionOnShow:Lcom/amazon/kindle/krx/reader/IPosition;

.field private thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

.field private transitionManager:Lcom/amazon/kindle/nln/NlnTransitionManager;

.field private visibleViewsChangedNotifier:Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    const-class v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 80
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    .line 86
    iput v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->currentOrientation:I

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 185
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 192
    iput-boolean v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isTransitioning:Z

    const/4 v2, 0x1

    .line 194
    iput-boolean v2, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->focusPagesDirty:Z

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    aput-object v0, v3, v1

    aput-object v0, v3, v2

    const/4 v2, 0x2

    aput-object v0, v3, v2

    .line 196
    iput-object v3, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->focusPageHolders:[Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    .line 216
    iput-boolean v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->pageRefreshNeeded:Z

    .line 218
    iput-boolean v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isRTLContent:Z

    .line 241
    iput-boolean v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->adapterDirty:Z

    return-void
.end method

.method private addMostRecentPageReadWaypointAcceptedMetric(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/IPositionRange;)V
    .locals 1

    .line 135
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 136
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 138
    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p2

    .line 137
    invoke-virtual {p1, v0, p2}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->isMostRecentPageReadWaypointInRange(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->addMostRecentPageReadWaypointAcceptedMetric()V

    :cond_0
    return-void
.end method

.method private getPageStatus(Landroid/view/View;)Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;
    .locals 6

    .line 878
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    .line 879
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    .line 881
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 882
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    sub-int v3, p1, v2

    const/4 v4, 0x0

    .line 884
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    .line 885
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    .line 890
    iget-boolean v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isRTLContent:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    move v5, v2

    move v2, p1

    move p1, v5

    :cond_0
    sub-int v0, v3, v2

    sub-int/2addr v0, p1

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 899
    sget v1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->pageOnscreenCutoff:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 900
    sget-object p1, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->ONSCREEN:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    return-object p1

    :cond_1
    if-le v2, p1, :cond_2

    .line 902
    sget-object p1, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->OFFSCREEN_START:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    return-object p1

    .line 904
    :cond_2
    sget-object p1, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->OFFSCREEN_END:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    return-object p1
.end method

.method private getRangeFromThumbnailHolder(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;)Lcom/amazon/android/docviewer/IPositionRange;
    .locals 0

    .line 870
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 872
    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private initScrollPosition()I
    .locals 5

    .line 446
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 453
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    const/4 v3, 0x0

    .line 455
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 457
    new-instance v3, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getFirstNonMRPRWaypoint()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->startPositionOnShow:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v0, :cond_2

    return v1

    .line 465
    :cond_2
    iget-object v4, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-nez v4, :cond_3

    return v1

    .line 470
    :cond_3
    invoke-virtual {v4, v0, v2, v3}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForStart(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v0

    .line 471
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return v0
.end method

.method private isValidPositionForCurrentReadingMode(I)Z
    .locals 3

    .line 1259
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1261
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookStartingPosition()I

    move-result v2

    if-gt v2, p1, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookFurthestPosition()I

    move-result v0

    if-lt v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private updateAdapterPositions()V
    .locals 4

    .line 1309
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-nez v0, :cond_0

    return-void

    .line 1314
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1316
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    const/4 v3, 0x0

    .line 1318
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1320
    new-instance v3, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-virtual {v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getFirstNonMRPRWaypoint()I

    move-result v1

    invoke-direct {v3, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 1323
    :cond_1
    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->updatePositions(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addCleanupRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .line 486
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getTransitionManager()Lcom/amazon/kindle/nln/NlnTransitionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/NlnTransitionManager;->addCleanupRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final animateOutForOther(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NlnTransitionChoreographer;)V
    .locals 1

    .line 1345
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getTransitionManager()Lcom/amazon/kindle/nln/NlnTransitionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/nln/NlnTransitionManager;->animateOutForOther(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NlnTransitionChoreographer;)V

    return-void
.end method

.method public commitToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 5

    .line 995
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-nez v0, :cond_0

    return-void

    .line 1000
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 1008
    instance-of v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_1

    .line 1009
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1010
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    .line 1011
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    const/4 v4, 0x0

    .line 1013
    invoke-virtual {v0, p1, v4}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I

    move-result v0

    if-lt v0, v3, :cond_1

    if-gt v0, v1, :cond_1

    .line 1016
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1018
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1022
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1024
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(I)V

    .line 1026
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getTransitionManager()Lcom/amazon/kindle/nln/NlnTransitionManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v0, v2, v1, p1}, Lcom/amazon/kindle/nln/NlnTransitionManager;->setupTransitionOut(Landroid/view/View;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method

.method protected createBreadcrumbManager(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$IBreadcrumbListener;Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;
    .locals 9

    .line 432
    new-instance v8, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;-><init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$IBreadcrumbListener;Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    return-object v8
.end method

.method protected abstract findFocusPages(Lcom/amazon/kindle/nln/VisiblePagesData;)V
.end method

.method protected getCallingActivityRectangles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1350
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ANIMATE_RECT"

    .line 1351
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1352
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 1355
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 1356
    check-cast v2, Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method protected abstract getContentViewId()I
.end method

.method public getCurrentPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->startPositionOnShow:Lcom/amazon/kindle/krx/reader/IPosition;

    return-object v0
.end method

.method protected getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method protected getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;
    .locals 1

    .line 438
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    return-object v0
.end method

.method protected getFocusPageHolder(I)Lcom/amazon/kindle/nln/PageThumbnailViewHolder;
    .locals 3

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 545
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->focusPagesDirty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->lastVisiblePages:Lcom/amazon/kindle/nln/VisiblePagesData;

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->findFocusPages(Lcom/amazon/kindle/nln/VisiblePagesData;)V

    const/4 v0, 0x0

    .line 547
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->focusPagesDirty:Z

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->focusPageHolders:[Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    aget-object p1, v0, p1

    return-object p1

    .line 541
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal position argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFocusedPage()Lcom/amazon/kindle/nln/IThumbnailPage;
    .locals 1

    const/4 v0, 0x1

    .line 495
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFocusedPage(I)Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object v0

    return-object v0
.end method

.method public getFocusedPage(I)Lcom/amazon/kindle/nln/IThumbnailPage;
    .locals 0

    .line 515
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFocusPageHolder(I)Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 519
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p1

    return-object p1
.end method

.method public getFocusedPageView(I)Landroid/view/View;
    .locals 0

    .line 531
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFocusPageHolder(I)Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 535
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getLayoutId()I
.end method

.method protected abstract getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end method

.method protected getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 2

    .line 1120
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 1121
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method

.method protected abstract getMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;
.end method

.method protected getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;
    .locals 2

    .line 259
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    return-object v0
.end method

.method protected final getTransitionManager()Lcom/amazon/kindle/nln/NlnTransitionManager;
    .locals 1

    .line 1367
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->transitionManager:Lcom/amazon/kindle/nln/NlnTransitionManager;

    if-nez v0, :cond_0

    .line 1368
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->newTransitionManager()Lcom/amazon/kindle/nln/NlnTransitionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->transitionManager:Lcom/amazon/kindle/nln/NlnTransitionManager;

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->transitionManager:Lcom/amazon/kindle/nln/NlnTransitionManager;

    return-object v0
.end method

.method protected internalOnKindleDocNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 1

    .line 1298
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isFragmentShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 1303
    iget-object p1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->visibleViewsChangedNotifier:Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->updateVisibleViews(Z)V

    .line 1304
    invoke-direct {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->updateAdapterPositions()V

    :cond_0
    return-void
.end method

.method protected isFragmentShown()Z
    .locals 1

    .line 1334
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract newBreadcrumbResourceProvider()Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;
.end method

.method protected abstract newTransitionManager()Lcom/amazon/kindle/nln/NlnTransitionManager;
.end method

.method public onBreadcrumbClicked(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V
    .locals 3

    .line 673
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-nez v0, :cond_0

    return-void

    .line 678
    :cond_0
    iget-object p1, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v1, 0x0

    .line 682
    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 684
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 686
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Breadcrumb outside of indexed range. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->rebuildAdapterAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result v0

    .line 688
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 690
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onNavigation(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 691
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/event/BreadcrumbPressEvent;

    sget-object v1, Lcom/amazon/kindle/event/BreadcrumbPressEvent$EventType;->PRESS:Lcom/amazon/kindle/event/BreadcrumbPressEvent$EventType;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/event/BreadcrumbPressEvent;-><init>(Lcom/amazon/kindle/event/BreadcrumbPressEvent$EventType;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 280
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 281
    iget v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->currentOrientation:I

    .line 282
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->currentOrientation:I

    .line 284
    iget-object p1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    .line 285
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFocusedPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 290
    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailManager;->getHintPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    .line 291
    invoke-interface {v1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 293
    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isValidPositionForCurrentReadingMode(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 295
    invoke-interface {p1, v1}, Lcom/amazon/kindle/nln/IThumbnailManager;->isHintPageEqualsFocusPage(Lcom/amazon/kindle/nln/IThumbnailPage;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 297
    :cond_2
    invoke-interface {v1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/nln/IThumbnailManager;->setFocusPositionHint(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 301
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailManager;->getHintPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 303
    invoke-interface {p1, v1}, Lcom/amazon/kindle/nln/IThumbnailManager;->updateHintPage(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 307
    :cond_4
    iget p1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->currentOrientation:I

    if-eq v0, p1, :cond_5

    .line 308
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onOrientationChanged()V

    .line 309
    invoke-virtual {p0, v2}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->setIsTransitioning(Z)V

    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 245
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "FRAGMENT_MANAGER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    iput-object p1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->fragmentManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    const-string v9, "BaseNonLinearFragment.onCreateView"

    const/4 v10, 0x1

    .line 336
    invoke-static {v9, v10}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v3

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v13

    const/4 v1, 0x0

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    if-eqz v13, :cond_1

    .line 344
    invoke-interface {v13, v8}, Lcom/amazon/kindle/nln/IThumbnailManager;->addThumbnailUpdateListener(Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;)V

    .line 347
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getLayoutId()I

    move-result v2

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual {v4, v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/view/ViewGroup;

    .line 349
    sget v2, Lcom/amazon/kindle/krl/R$id;->recycler_view:I

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 357
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->showTocHeaders()Z

    move-result v15

    .line 362
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v2

    iput-object v2, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    const-string v4, "FOCUS_POS_KEY"

    .line 367
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 369
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iput-object v0, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->startPositionOnShow:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 373
    :cond_2
    iget-object v0, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->startPositionOnShow:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v0, :cond_3

    .line 374
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iput-object v0, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->startPositionOnShow:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 377
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMarkedPositionManager()Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;

    move-result-object v0

    iput-object v0, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->markedPositionManager:Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;->BEV_THUMBNAIL:Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;->PFV_THUMBNAIL:Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;

    :goto_0
    move-object/from16 v20, v0

    .line 379
    new-instance v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    iget-object v2, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    iget-object v4, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->markedPositionManager:Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;

    new-instance v5, Lcom/amazon/kindle/nln/BaseNonLinearFragment$ThumbnailPageClickedListener;

    invoke-direct {v5, v8, v1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment$ThumbnailPageClickedListener;-><init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;Lcom/amazon/kindle/nln/BaseNonLinearFragment$1;)V

    iget-object v1, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->startPositionOnShow:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v21

    move-object v11, v0

    move-object v14, v3

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v1

    invoke-direct/range {v11 .. v21}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;-><init>(Landroid/content/Context;Lcom/amazon/kindle/nln/IThumbnailManager;Lcom/amazon/android/docviewer/KindleDocViewer;ZLcom/amazon/android/docviewer/IPageLabelProvider;Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;Landroid/view/View$OnClickListener;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    .line 383
    iput-object v0, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    .line 384
    iget-object v1, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->fragmentManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->getCurrentMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->setPageLoadingEnabled(Z)V

    .line 385
    iget-object v1, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->markedPositionManager:Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;

    invoke-interface {v1, v8}, Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;->addMarkedPositionsChangedListener(Lcom/amazon/kindle/positionmarker/IMarkedPositionManager$IMarkedPositionsChangedListener;)V

    .line 386
    new-instance v1, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;

    iget-object v2, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, v2, v8, v10}, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/kindle/nln/IOnScreenViewsChangedListener;I)V

    iput-object v1, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->visibleViewsChangedNotifier:Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getContentViewId()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->contentView:Landroid/view/ViewGroup;

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 392
    iget-object v2, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 395
    new-instance v1, Lcom/amazon/kindle/nln/ReportOnScreenScrollListener;

    iget-object v2, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->visibleViewsChangedNotifier:Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;

    invoke-direct {v1, v2}, Lcom/amazon/kindle/nln/ReportOnScreenScrollListener;-><init>(Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;)V

    iput-object v1, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onScreenScrollListener:Lcom/amazon/kindle/nln/ReportOnScreenScrollListener;

    .line 396
    iget-object v2, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 397
    iget-object v1, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/amazon/kindle/nln/BaseNonLinearFragment$ScrollStateNotifier;

    invoke-direct {v2, v8}, Lcom/amazon/kindle/nln/BaseNonLinearFragment$ScrollStateNotifier;-><init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 398
    iget-object v1, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 399
    iget-object v0, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->initScrollPosition()I

    .line 403
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isRTLContent:Z

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->newBreadcrumbResourceProvider()Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;

    move-result-object v5

    .line 405
    iget-boolean v0, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isRTLContent:Z

    invoke-interface {v5, v0}, Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;->setBreadcrumbResourceDirection(I)V

    .line 407
    iget-object v0, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isRTLContent:Z

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 409
    new-instance v11, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

    iget-object v0, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->visibleViewsChangedNotifier:Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;

    invoke-direct {v11, v0}, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;-><init>(Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;)V

    iput-object v11, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->jumpToWaypointTracker:Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

    .line 410
    iget-object v2, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v12

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v4, p0

    move-object v13, v6

    move-object v6, v11

    const/4 v11, 0x0

    move-object v7, v12

    .line 410
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->createBreadcrumbManager(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager$IBreadcrumbListener;Lcom/amazon/kindle/nln/breadcrumb/IBreadcrumbResourceProvider;Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    move-result-object v0

    iput-object v0, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->breadcrumbManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    .line 414
    iget-boolean v1, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isTransitioning:Z

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->setIsTransitioning(Z)V

    .line 416
    iget-boolean v0, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isTransitioning:Z

    xor-int/2addr v0, v10

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 417
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, v8, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->currentOrientation:I

    .line 421
    invoke-static {v9, v11}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object v13
.end method

.method public onDestroy()V
    .locals 1

    .line 744
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 745
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->transitionManager:Lcom/amazon/kindle/nln/NlnTransitionManager;

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 750
    iput-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->transitionManager:Lcom/amazon/kindle/nln/NlnTransitionManager;

    .line 751
    iput-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->visibleViewsChangedNotifier:Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;

    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .line 696
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 697
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 698
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->markedPositionManager:Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;

    if-eqz v0, :cond_0

    .line 699
    invoke-interface {v0, p0}, Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;->removeMarkedPositionsChangedListener(Lcom/amazon/kindle/positionmarker/IMarkedPositionManager$IMarkedPositionsChangedListener;)V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 703
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 704
    iput-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 707
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 709
    invoke-interface {v0, p0}, Lcom/amazon/kindle/nln/IThumbnailManager;->removeThumbnailUpdateListener(Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;)V

    .line 710
    invoke-interface {v0, v1}, Lcom/amazon/kindle/nln/IThumbnailManager;->setFocusPositionHint(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->lastVisiblePages:Lcom/amazon/kindle/nln/VisiblePagesData;

    if-eqz v0, :cond_3

    .line 715
    iput-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->lastVisiblePages:Lcom/amazon/kindle/nln/VisiblePagesData;

    .line 716
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/VisiblePagesData;->destroy()V

    :cond_3
    const/4 v0, 0x0

    .line 719
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->focusPageHolders:[Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 720
    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->breadcrumbManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    if-eqz v0, :cond_5

    .line 724
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->onDestroy()V

    .line 726
    :cond_5
    iput-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->breadcrumbManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    .line 728
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-eqz v0, :cond_6

    .line 729
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->invalidate()V

    .line 730
    iput-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    .line 733
    :cond_6
    iput-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->contentView:Landroid/view/ViewGroup;

    .line 735
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->jumpToWaypointTracker:Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

    if-eqz v0, :cond_7

    .line 737
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;->destroy()V

    .line 739
    :cond_7
    iput-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->jumpToWaypointTracker:Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

    return-void
.end method

.method protected onFirstLayout()V
    .locals 3

    .line 1035
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-nez v0, :cond_0

    return-void

    .line 1041
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->visibleViewsChangedNotifier:Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->updateVisibleViews(Z)V

    .line 1043
    iget-boolean v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->pageRefreshNeeded:Z

    if-eqz v1, :cond_1

    .line 1045
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->refreshPages()V

    const/4 v0, 0x0

    .line 1046
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->pageRefreshNeeded:Z

    .line 1050
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getTransitionManager()Lcom/amazon/kindle/nln/NlnTransitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->runPendingTransitionIn()V

    return-void
.end method

.method protected onFragmentShown()V
    .locals 4

    .line 627
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-nez v0, :cond_0

    return-void

    .line 632
    :cond_0
    iget-boolean v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->adapterDirty:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 634
    iput-boolean v2, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->adapterDirty:Z

    .line 635
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->startPositionOnShow:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v1, :cond_2

    .line 636
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 640
    :cond_1
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v3

    .line 641
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v1

    .line 640
    invoke-interface {v3, v1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->startPositionOnShow:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 643
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->startPositionOnShow:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->rebuildAdapterAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    .line 647
    :cond_3
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->initialScrollPending:Z

    if-eqz v0, :cond_4

    .line 648
    invoke-direct {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->initScrollPosition()I

    .line 649
    iput-boolean v2, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->initialScrollPending:Z

    .line 653
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 654
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/nln/BaseNonLinearFragment$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment$1;-><init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_5
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 568
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 574
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 575
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onFragmentShown()V

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getTransitionManager()Lcom/amazon/kindle/nln/NlnTransitionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnTransitionManager;->cleanupAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onKindleDocNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1273
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1274
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->internalOnKindleDocNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V

    goto :goto_0

    .line 1276
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/nln/BaseNonLinearFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment$3;-><init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onMarkedPositionsChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ">;)V"
        }
    .end annotation

    .line 1136
    new-instance v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kindle/nln/BaseNonLinearFragment$2;-><init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;Ljava/util/List;Ljava/util/List;)V

    .line 1179
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 1180
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1182
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method protected onNavigation(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    return-void
.end method

.method public onNlnModeEvent(Lcom/amazon/kindle/nln/NlnModeChangeEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 584
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->getType()Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;->START:Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    if-eq v0, v1, :cond_0

    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-nez v0, :cond_1

    return-void

    .line 595
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->getNewMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->setPageLoadingEnabled(Z)V

    .line 596
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->getNewMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 598
    iput-boolean v3, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->pageRefreshNeeded:Z

    :cond_3
    return-void
.end method

.method protected onOrientationChanged()V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->transitionManager:Lcom/amazon/kindle/nln/NlnTransitionManager;

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NlnTransitionManager;->onDestroy()V

    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->transitionManager:Lcom/amazon/kindle/nln/NlnTransitionManager;

    :cond_1
    return-void
.end method

.method protected onPageClicked(Landroid/view/View;)V
    .locals 6

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    .line 104
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 106
    iget-boolean v2, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isTransitioning:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 107
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->NLN_FRAGMENT_FULLPAGE_SHOW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 109
    iget-object v2, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->fragmentManager:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    invoke-virtual {v2}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->getCurrentMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->NAVIGATION_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->CLOSE_BEV:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v2, v3}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 114
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    .line 121
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getTransitionManager()Lcom/amazon/kindle/nln/NlnTransitionManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/amazon/kindle/nln/NlnTransitionManager;->setupTransitionOut(Landroid/view/View;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 122
    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(I)V

    .line 123
    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->addMostRecentPageReadWaypointAcceptedMetric(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/android/docviewer/IPositionRange;)V

    :cond_1
    return-void
.end method

.method public onPageLabelReadyEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$PageLabelReadyEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 1096
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 1097
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ReadyEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1102
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-nez p1, :cond_1

    return-void

    .line 1107
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    const/4 v0, 0x0

    .line 1110
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 269
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 271
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFocusedPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->startPositionOnShow:Lcom/amazon/kindle/krx/reader/IPosition;

    :goto_0
    if-eqz v0, :cond_1

    .line 274
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    const-string v1, "FOCUS_POS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onScreenViewsChanged(Ljava/util/List;II)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    .line 757
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v1, :cond_18

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_f

    .line 762
    :cond_0
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v10

    .line 763
    new-instance v3, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {v3, v10, v10}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 767
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    .line 768
    invoke-virtual {v4}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getFirstNonMRPRWaypoint()I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_0
    if-eq v4, v5, :cond_2

    .line 772
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    if-nez v11, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    .line 774
    :cond_3
    new-instance v1, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {v1, v11, v11}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 780
    :goto_2
    iget-object v4, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->breadcrumbManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    if-eqz v4, :cond_4

    .line 781
    invoke-virtual {v4}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->getLatestBreadcrumbInfo()Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 783
    iget-object v4, v4, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_5

    const/4 v5, 0x0

    goto :goto_4

    .line 786
    :cond_5
    new-instance v5, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {v5, v4, v4}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    :goto_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 788
    :goto_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v13, v6, :cond_e

    .line 789
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 790
    check-cast v6, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    .line 791
    invoke-direct {v0, v6}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getRangeFromThumbnailHolder(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v4

    if-nez v4, :cond_6

    goto/16 :goto_8

    :cond_6
    move-object/from16 v16, v15

    add-int/lit8 v15, v13, 0x1

    move-object/from16 v17, v12

    .line 801
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v15, v12, :cond_7

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    invoke-direct {v0, v12}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getRangeFromThumbnailHolder(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;)Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v12

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    :goto_6
    if-nez v7, :cond_9

    .line 803
    invoke-interface {v4, v3}, Lcom/amazon/android/docviewer/IPositionRange;->contains(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v15

    if-eqz v15, :cond_9

    if-eqz v12, :cond_8

    .line 804
    invoke-interface {v12, v3}, Lcom/amazon/android/docviewer/IPositionRange;->contains(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 806
    :cond_8
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, v7}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getPageStatus(Landroid/view/View;)Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    move-result-object v15

    move-object v7, v6

    goto :goto_7

    :cond_9
    move-object/from16 v15, v16

    :goto_7
    if-nez v8, :cond_b

    if-eqz v1, :cond_b

    .line 809
    invoke-interface {v4, v1}, Lcom/amazon/android/docviewer/IPositionRange;->contains(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v16

    if-eqz v16, :cond_b

    if-eqz v12, :cond_a

    .line 810
    invoke-interface {v12, v1}, Lcom/amazon/android/docviewer/IPositionRange;->contains(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v16

    if-nez v16, :cond_b

    .line 812
    :cond_a
    iget-object v8, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, v8}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getPageStatus(Landroid/view/View;)Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    move-result-object v14

    move-object v8, v6

    :cond_b
    if-nez v9, :cond_d

    if-eqz v5, :cond_d

    .line 816
    invoke-interface {v4, v5}, Lcom/amazon/android/docviewer/IPositionRange;->contains(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v12, :cond_c

    .line 817
    invoke-interface {v12, v5}, Lcom/amazon/android/docviewer/IPositionRange;->contains(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 819
    :cond_c
    iget-object v4, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, v4}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getPageStatus(Landroid/view/View;)Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    move-result-object v12

    move-object v9, v6

    goto :goto_8

    :cond_d
    move-object/from16 v12, v17

    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_e
    move-object/from16 v17, v12

    move-object/from16 v16, v15

    const/4 v4, 0x0

    .line 823
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    invoke-virtual {v1}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 824
    invoke-interface {v1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_14

    if-nez v7, :cond_11

    .line 835
    invoke-interface {v10, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_10

    sget-object v3, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->OFFSCREEN_END:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    goto :goto_a

    :cond_10
    sget-object v3, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->OFFSCREEN_START:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    :goto_a
    move-object v15, v3

    goto :goto_b

    :cond_11
    move-object/from16 v15, v16

    :goto_b
    if-eqz v11, :cond_15

    if-eqz v8, :cond_12

    if-nez v14, :cond_15

    .line 837
    :cond_12
    sget-boolean v3, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->shouldShowWaypointBreadcrumb:Z

    if-eqz v3, :cond_15

    .line 840
    invoke-interface {v11, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_13

    sget-object v1, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->OFFSCREEN_END:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    goto :goto_c

    :cond_13
    sget-object v1, Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;->OFFSCREEN_START:Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;

    :goto_c
    move-object v14, v1

    goto :goto_d

    .line 843
    :cond_14
    sget-object v1, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->TAG:Ljava/lang/String;

    const-string v3, "Our firstPageView does not have an end position."

    invoke-static {v1, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 849
    :cond_15
    :goto_d
    iget-object v1, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->lastVisiblePages:Lcom/amazon/kindle/nln/VisiblePagesData;

    if-nez v1, :cond_16

    .line 850
    new-instance v12, Lcom/amazon/kindle/nln/VisiblePagesData;

    add-int v1, p2, p3

    div-int/lit8 v3, v1, 0x2

    move-object v1, v12

    move-object/from16 v2, p1

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v15

    move-object v8, v14

    move-object/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kindle/nln/VisiblePagesData;-><init>(Ljava/util/List;ILcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;)V

    iput-object v12, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->lastVisiblePages:Lcom/amazon/kindle/nln/VisiblePagesData;

    goto :goto_e

    :cond_16
    add-int v3, p2, p3

    .line 854
    div-int/lit8 v3, v3, 0x2

    move-object/from16 v2, p1

    move-object v4, v7

    move-object v5, v8

    move-object v6, v9

    move-object v7, v15

    move-object v8, v14

    move-object/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Lcom/amazon/kindle/nln/VisiblePagesData;->updateData(Ljava/util/List;ILcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;Lcom/amazon/kindle/nln/VisiblePagesData$PageStatus;)V

    .line 859
    :goto_e
    iget-object v1, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->breadcrumbManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    if-eqz v1, :cond_17

    .line 860
    iget-object v2, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->lastVisiblePages:Lcom/amazon/kindle/nln/VisiblePagesData;

    invoke-virtual {v1, v2, v10, v11}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->onVisiblePagesChanged(Lcom/amazon/kindle/nln/VisiblePagesData;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_17
    const/4 v1, 0x1

    .line 864
    iput-boolean v1, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->focusPagesDirty:Z

    :cond_18
    :goto_f
    return-void
.end method

.method protected onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/nln/RecyclerViewScrollStatusChangedEvent;

    invoke-direct {v0, p2}, Lcom/amazon/kindle/nln/RecyclerViewScrollStatusChangedEvent;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 560
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 561
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onFragmentShown()V

    :cond_0
    return-void
.end method

.method public onThumbnailManagerDestroyed()V
    .locals 1

    const/4 v0, 0x0

    .line 1268
    iput-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    return-void
.end method

.method public onThumbnailManagerReadyEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ThumbnailManagerReadyEvent;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/nln/IThumbnailManager;->addThumbnailUpdateListener(Lcom/amazon/kindle/nln/IThumbnailManager$IThumbnailsUpdatedListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onThumbnailsUpdated()V
    .locals 8

    .line 1188
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-nez v0, :cond_0

    return-void

    .line 1193
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isFragmentShown()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1200
    iput-boolean v2, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->adapterDirty:Z

    .line 1201
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->invalidate()V

    goto/16 :goto_4

    .line 1207
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getFocusedPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object v1

    .line 1208
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1210
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->isShowingPlaceholders()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_8

    .line 1218
    iget-object v3, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-eqz v3, :cond_3

    .line 1219
    invoke-interface {v3}, Lcom/amazon/kindle/nln/IThumbnailManager;->getHintPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    .line 1220
    :cond_3
    invoke-interface {v1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 1222
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isValidPositionForCurrentReadingMode(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    .line 1223
    :goto_0
    iget-object v7, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-eqz v7, :cond_5

    .line 1224
    invoke-interface {v7, v1}, Lcom/amazon/kindle/nln/IThumbnailManager;->isHintPageEqualsFocusPage(Lcom/amazon/kindle/nln/IThumbnailPage;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-eqz v5, :cond_7

    if-eqz v6, :cond_6

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    if-nez v6, :cond_9

    .line 1233
    invoke-direct {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->updateAdapterPositions()V

    goto :goto_3

    :cond_7
    :goto_2
    move-object v5, v3

    goto :goto_3

    .line 1238
    :cond_8
    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    .line 1241
    :cond_9
    :goto_3
    invoke-virtual {v0, v5}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->rebuildAdapterAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    .line 1244
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->thumbnailManager:Lcom/amazon/kindle/nln/IThumbnailManager;

    if-eqz v0, :cond_a

    if-eqz v5, :cond_a

    .line 1245
    invoke-interface {v0, v5}, Lcom/amazon/kindle/nln/IThumbnailManager;->updateHintPage(Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public onTransitionStart(Lcom/amazon/kindle/nln/NlnTransitionChoreographer;)V
    .locals 1

    .line 1374
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getTransitionManager()Lcom/amazon/kindle/nln/NlnTransitionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/NlnTransitionManager;->onTransitionStart(Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V

    return-void
.end method

.method public scrollToPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)V
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-nez v0, :cond_0

    return-void

    .line 962
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 964
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getScrollToPositionListener()Lcom/amazon/android/docviewer/IScrollToPositionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 966
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IScrollToPositionListener;->willScrollTo(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 971
    invoke-virtual {v0, p1, v1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I

    move-result v1

    if-ltz v1, :cond_3

    if-eqz p2, :cond_2

    .line 974
    iget-object p2, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 976
    :cond_2
    iget-object p2, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 979
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find adapter index when scrolling to position "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 980
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->rebuildAdapterAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p2

    .line 981
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 984
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onNavigation(Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_4
    return-void
.end method

.method protected setIsTransitioning(Z)V
    .locals 1

    .line 224
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isTransitioning:Z

    .line 225
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->breadcrumbManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->setIsTransitioning(Z)V

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 617
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    if-nez p1, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getTransitionManager()Lcom/amazon/kindle/nln/NlnTransitionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnTransitionManager;->cleanupAnimation()V

    :cond_0
    return-void
.end method

.method public setupTransitionIn(Ljava/lang/Runnable;Lcom/amazon/kindle/nln/BaseNonLinearFragment;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V
    .locals 1

    .line 480
    iput-object p3, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->startPositionOnShow:Lcom/amazon/kindle/krx/reader/IPosition;

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->initialScrollPending:Z

    .line 482
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getTransitionManager()Lcom/amazon/kindle/nln/NlnTransitionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/kindle/nln/NlnTransitionManager;->setupTransitionIn(Ljava/lang/Runnable;Lcom/amazon/kindle/nln/BaseNonLinearFragment;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/nln/NonLinearNavigationMode;)V

    return-void
.end method

.method protected showTocHeaders()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateFocusPage(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;I)V
    .locals 5

    .line 915
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->focusPageHolders:[Lcom/amazon/kindle/nln/PageThumbnailViewHolder;

    aput-object p1, v0, p2

    .line 916
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_6

    if-eqz v0, :cond_6

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 921
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailPage()Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p1

    if-nez p1, :cond_0

    .line 923
    invoke-interface {v0, p2}, Lcom/amazon/kindle/nln/IThumbnailManager;->setFocusPositionHint(Lcom/amazon/kindle/krx/reader/IPosition;)V

    goto :goto_2

    .line 927
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailManager;->getHintPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    .line 928
    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 930
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->isValidPositionForCurrentReadingMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 932
    invoke-interface {v0, p1}, Lcom/amazon/kindle/nln/IThumbnailManager;->isHintPageEqualsFocusPage(Lcom/amazon/kindle/nln/IThumbnailPage;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz p2, :cond_3

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 934
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/nln/IThumbnailPage;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/nln/IThumbnailManager;->setFocusPositionHint(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 938
    :cond_4
    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailManager;->getHintPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 940
    invoke-interface {v0, p1}, Lcom/amazon/kindle/nln/IThumbnailManager;->updateHintPage(Lcom/amazon/kindle/krx/reader/IPosition;)V

    goto :goto_2

    .line 944
    :cond_5
    invoke-interface {v0, p2}, Lcom/amazon/kindle/nln/IThumbnailManager;->setFocusPositionHint(Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_6
    :goto_2
    return-void
.end method
