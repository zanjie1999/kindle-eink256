.class public final Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;
.super Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;
.source "ExpandableLibraryResultsView.kt"

# interfaces
.implements Lcom/amazon/kcp/search/views/LibraryResultsView;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final aspectRatio:F

.field private coverDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

.field private defaultDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

.field private final horizSpacingRatio:D

.field private final sidePadding:I

.field private final vertPadding:I

.field private final vertSpacingRatio:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/search/R$dimen;->search_screen_side_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->sidePadding:I

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/search/R$dimen;->expandable_grid_widget_vert_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->vertPadding:I

    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 23
    iput-wide v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->horizSpacingRatio:D

    .line 24
    iput-wide v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->vertSpacingRatio:D

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 25
    iput v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->aspectRatio:F

    .line 31
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/search/R$dimen;->library_grid_cover_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v1, v0

    .line 38
    iget v2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->aspectRatio:F

    mul-float v1, v1, v2

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    .line 39
    new-instance v2, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    iput-object v2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->defaultDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

    .line 41
    iput-object v2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->coverDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->getGridView()Lcom/amazon/kcp/search/views/GridRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x69

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->getGridView()Lcom/amazon/kcp/search/views/GridRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$1;-><init>(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 54
    iget v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->sidePadding:I

    iget v1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->vertPadding:I

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->coverDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

    iget v0, v0, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->horizSpacingRatio:D

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->coverDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

    iget v1, v1, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->vertSpacingRatio:D

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v1

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->setGridSpacing(II)V

    .line 60
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->getExpandBtn()Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/search/R$string;->library_expandable_button_content_description:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic access$updateGridForWidth(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->updateGridForWidth(I)V

    return-void
.end method

.method private final updateGridForWidth(I)V
    .locals 9

    int-to-double v0, p1

    .line 113
    iget-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->defaultDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

    iget p1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    int-to-double v2, p1

    div-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    const/4 v2, 0x1

    .line 115
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->setNumCols(I)V

    int-to-double v3, p1

    sub-int/2addr p1, v2

    int-to-double v5, p1

    .line 122
    iget-wide v7, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->horizSpacingRatio:D

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    div-double/2addr v0, v3

    .line 123
    new-instance p1, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v2

    iget v3, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->aspectRatio:F

    float-to-double v3, v3

    mul-double v0, v0, v3

    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    invoke-direct {p1, v2, v0}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    iput-object p1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->coverDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

    .line 125
    iget p1, p1, Lcom/amazon/kindle/util/drawing/Dimension;->width:I

    int-to-double v0, p1

    iget-wide v2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->horizSpacingRatio:D

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p1

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->coverDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

    iget v0, v0, Lcom/amazon/kindle/util/drawing/Dimension;->height:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->vertSpacingRatio:D

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->setGridSpacing(II)V

    .line 128
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->getAdapter()Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    move-result-object p1

    instance-of v0, p1, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->coverDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->setCoverDimensions(Lcom/amazon/kindle/util/drawing/Dimension;)V

    .line 137
    :cond_1
    new-instance p1, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$updateGridForWidth$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$updateGridForWidth$1;-><init>(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final collapseLibraryResults()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->getAdapter()Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->getExpanded()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->getAdapter()Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->setExpanded(Z)V

    :cond_0
    return-void
.end method

.method protected getExpandButtonText()Ljava/lang/String;
    .locals 2

    .line 145
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/search/R$string;->expandable_grid_view_button_no_count:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026rid_view_button_no_count)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOrCreateAdapter()Lcom/amazon/kcp/search/views/LibraryResultsAdapter;
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->getAdapter()Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->getGridView()Lcom/amazon/kcp/search/views/GridRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->Companion:Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$Companion;

    invoke-virtual {v3}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter$Companion;->getLIBRARY_RESULT_CAP()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    const/4 v1, 0x1

    .line 77
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->enableIterativeExpansion(Z)V

    .line 79
    iget-object v1, p0, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;->coverDimensions:Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsAdapter;->setCoverDimensions(Lcom/amazon/kindle/util/drawing/Dimension;)V

    .line 81
    new-instance v1, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$expandCompletedCallback$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$expandCompletedCallback$1;-><init>(Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;)V

    .line 87
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFOSDevice()Z

    move-result v2

    .line 88
    new-instance v3, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1;

    invoke-direct {v3, v2, v1}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView$getOrCreateAdapter$1;-><init>(ZLkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;->setExpandCompletedCallback(Lkotlin/jvm/functions/Function0;)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->setAdapter(Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->getAdapter()Lcom/amazon/kcp/search/views/expandable/ExpandableAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/amazon/kcp/search/views/LibraryResultsAdapter;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type com.amazon.kcp.search.views.LibraryResultsAdapter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
