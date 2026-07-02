.class public final Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;
.super Ljava/lang/Object;
.source "CSBreadcrumbController.kt"


# instance fields
.field private final PROPERTY_NAME_ALPHA:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private breadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

.field private breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

.field private isBreadcrumbCurrentlyAnimating:Z

.field private isBreadcrumbTransitioningToVisible:Z

.field private isBreadcrumbVisible:Z

.field private pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

.field private rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V
    .locals 2

    const-string v0, "breadcrumbView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(CSBreadcrumbController::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->isBreadcrumbTransitioningToVisible:Z

    const-string v0, "alpha"

    .line 42
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->PROPERTY_NAME_ALPHA:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    .line 46
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    return-void
.end method

.method public static final synthetic access$getRootView$p(Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;)Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setBreadcrumbCurrentlyAnimating$p(Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->isBreadcrumbCurrentlyAnimating:Z

    return-void
.end method

.method private final getBreadcrumbLabel(I)Ljava/lang/String;
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 129
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    .line 130
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    invoke-static {p1, v2, v0, v1, v3}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->getPageLabelForPosition(ILcom/amazon/android/docviewer/IPageLabelProvider;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Z)Ljava/lang/String;

    move-result-object v2

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->isMostRecentPageReadWaypoint(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 139
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->kre_synccx_breadcrumb_most_recent_label:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.resources.getStr\u2026dcrumb_most_recent_label)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 140
    :cond_3
    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->breadcrumb_label_bare:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.resources.getStr\u2026ng.breadcrumb_label_bare)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 141
    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->breadcrumb_label:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.resources.getStr\u2026adcrumb_label, pageLabel)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_5
    const-string p1, ""

    return-object p1
.end method

.method private final layoutBreadCrumbView()Z
    .locals 7

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    .line 53
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->getBreadcrumbInfo()Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    move-result-object v2

    .line 56
    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 61
    iget-object v4, v2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    const-string v5, "breadcrumbInfo.position"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->getBreadcrumbLabel(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {v0, v4}, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;->setLabel(Ljava/lang/String;)V

    .line 65
    iget-object v2, v2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getSeekBarCoordinateValues(I)Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 67
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v4, v4, v5

    .line 69
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    iget v6, v2, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 71
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v6, v1

    int-to-float v1, v6

    sub-float/2addr v1, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 73
    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;->adjustArrowPosition(F)V

    sub-float/2addr v1, v4

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setY(F)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3
.end method

.method private final modifyVisibilityOfBreadCrumbView(ZZ)V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    if-eqz v0, :cond_3

    .line 86
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->isBreadcrumbTransitioningToVisible:Z

    if-eq v1, p1, :cond_3

    const/4 v1, 0x4

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifyVisibilityOfBreadCrumbView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->isBreadcrumbTransitioningToVisible:Z

    if-eqz p2, :cond_1

    .line 98
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->getBreadCrumbAnimator(Z)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 99
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 101
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    nop

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized getBreadCrumbAnimator(Z)Landroid/animation/Animator;
    .locals 14

    monitor-enter p0

    .line 188
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->isBreadcrumbVisible:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->isBreadcrumbCurrentlyAnimating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 189
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 191
    :try_start_1
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->isBreadcrumbCurrentlyAnimating:Z

    .line 192
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->isBreadcrumbVisible:Z

    .line 194
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    .line 195
    sget v5, Lcom/amazon/kindle/krl/R$integer;->breadcrumb_view_animation_duration:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    goto :goto_1

    :cond_2
    move-wide v5, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 196
    sget v7, Lcom/amazon/kindle/krl/R$integer;->breadcrumb_view_animation_start_delay:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v7, v2

    goto :goto_2

    :cond_3
    move-wide v7, v3

    .line 198
    :goto_2
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    if-eqz v2, :cond_6

    const/4 v1, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz p1, :cond_4

    .line 200
    iget-object v12, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    iget-object v13, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->PROPERTY_NAME_ALPHA:Ljava/lang/String;

    new-array v11, v11, [F

    aput v1, v11, v10

    aput v9, v11, v0

    invoke-static {v12, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_3

    .line 202
    :cond_4
    iget-object v12, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    iget-object v13, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->PROPERTY_NAME_ALPHA:Ljava/lang/String;

    new-array v11, v11, [F

    aput v9, v11, v10

    aput v1, v11, v0

    invoke-static {v12, v13, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_3
    move-object v9, v0

    const-string v0, "animator"

    .line 204
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 205
    invoke-virtual {v9, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    if-eqz p1, :cond_5

    .line 207
    invoke-virtual {v9, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 209
    :cond_5
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    new-instance v10, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController$getBreadCrumbAnimator$$inlined$let$lambda$1;

    move-object v0, v10

    move-object v1, v2

    move-object v2, p0

    move v3, p1

    move-wide v4, v5

    move-wide v6, v7

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController$getBreadCrumbAnimator$$inlined$let$lambda$1;-><init>(Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;ZJJ)V

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    monitor-exit p0

    return-object v9

    .line 227
    :cond_6
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getBreadcrumbInfo()Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;
    .locals 9

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 150
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 151
    :goto_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPositionObject()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    .line 153
    new-instance v4, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {v4, v2, v3}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 157
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getMRPRPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    const/4 v6, -0x1

    if-eqz v5, :cond_3

    .line 158
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v6, :cond_3

    .line 159
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v7, v5}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v1

    .line 164
    :goto_3
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getFirstNonMRPRWaypoint()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object v7, v1

    :goto_4
    if-eqz v7, :cond_5

    .line 165
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v6, :cond_5

    .line 166
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    goto :goto_5

    :cond_5
    move-object v0, v1

    .line 169
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mrprPosition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_6

    :cond_6
    move-object v7, v1

    :goto_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " waypointPosition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_7

    :cond_7
    move-object v7, v1

    :goto_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "startPosition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " endPosition: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 173
    new-instance v2, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {v2, v5, v5}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    invoke-virtual {v4, v2}, Lcom/amazon/android/docviewer/IntPositionRange;->contains(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 174
    new-instance v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    sget-object v1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;->AFTER:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    const/4 v2, 0x1

    invoke-direct {v0, v5, v1, v2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;Z)V

    move-object v1, v0

    goto :goto_8

    :cond_8
    if-eqz v0, :cond_9

    .line 175
    new-instance v2, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-direct {v2, v0, v0}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V

    invoke-virtual {v4, v2}, Lcom/amazon/android/docviewer/IntPositionRange;->contains(Lcom/amazon/android/docviewer/IPositionRange;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 177
    new-instance v1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    sget-object v2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;->AFTER:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;Z)V

    :cond_9
    :goto_8
    return-object v1
.end method

.method public final getOverlayAnimator(ZJ)Landroid/animation/Animator;
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    const-string v2, "alpha"

    if-eqz p1, :cond_0

    new-array p1, v1, [F

    .line 267
    fill-array-data p1, :array_0

    invoke-static {v0, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array p1, v1, [F

    .line 269
    fill-array-data p1, :array_1

    invoke-static {v0, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_0
    const-string v0, "breadcrumbAnimator"

    .line 271
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final hideBreadcrumbView()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->isBreadcrumbTransitioningToVisible:Z

    return-void
.end method

.method public final isTouchInsideBreadcrumb(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 251
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 252
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    :cond_0
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    .line 338
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    .line 339
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;->onDestroy()V

    .line 340
    :cond_1
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    .line 341
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    return-void
.end method

.method public final onLayoutChange(ZZZ)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->updateBreadcrumbView(ZZZ)V

    .line 293
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->cs_breadcrumb_right_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public final onOverlaysVisible()V
    .locals 2

    .line 313
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->getBreadcrumbInfo()Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 316
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->isBreadcrumbVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->isBreadcrumbCurrentlyAnimating:Z

    if-nez v0, :cond_2

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->hideBreadcrumbView()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onOverlaysWillBecomingVisible()V
    .locals 2

    .line 301
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->getBreadcrumbInfo()Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->isBreadcrumbTransitioningToVisible:Z

    goto :goto_0

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->hideBreadcrumbView()V

    :goto_0
    return-void
.end method

.method public final onPageLabelReadyEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$PageLabelReadyEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    .line 233
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ReadyEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    .line 235
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbInfo:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;

    if-eqz p1, :cond_1

    .line 236
    iget-object p1, p1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->position:Lcom/amazon/kindle/krx/reader/IPosition;

    const-string v0, "it.position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->getBreadcrumbLabel(I)Ljava/lang/String;

    move-result-object p1

    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;->setLabel(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final setBreadcrumbClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->breadcrumbView:Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final updateBreadcrumbView(ZZZ)V
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBreadcrumbView isDragging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldMakeThumbVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isThumbVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->rootView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->areOverlaysVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->layoutBreadCrumbView()Z

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->modifyVisibilityOfBreadCrumbView(ZZ)V

    :cond_1
    return-void

    .line 112
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->isBreadcrumbTransitioningToVisible:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->modifyVisibilityOfBreadCrumbView(ZZ)V

    :cond_3
    return-void
.end method
