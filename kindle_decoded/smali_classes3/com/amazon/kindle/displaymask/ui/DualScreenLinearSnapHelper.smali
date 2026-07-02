.class public final Lcom/amazon/kindle/displaymask/ui/DualScreenLinearSnapHelper;
.super Landroidx/recyclerview/widget/LinearSnapHelper;
.source "DualScreenPageFlipLayoutManager.kt"


# instance fields
.field private final disabledAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private final computeDistancePerChild(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/amazon/kindle/displaymask/ui/OrientationHelper;)F
    .locals 10

    .line 181
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    move-object v4, v3

    const v5, 0x7fffffff

    const/high16 v6, -0x80000000

    :goto_0
    if-ge v2, v0, :cond_4

    .line 187
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 188
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_1

    :cond_1
    if-ge v8, v5, :cond_2

    move-object v3, v7

    move v5, v8

    :cond_2
    if-le v8, v6, :cond_3

    move-object v4, v7

    move v6, v8

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_7

    if-nez v4, :cond_5

    goto :goto_2

    .line 204
    :cond_5
    invoke-virtual {p2, v3}, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, v4}, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    .line 205
    invoke-virtual {p2, v3}, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, v4}, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    invoke-static {v0, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    int-to-float p1, p2

    mul-float p1, p1, v1

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    int-to-float p2, v6

    div-float v1, p1, p2

    :cond_7
    :goto_2
    return v1
.end method

.method private final distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Lcom/amazon/kindle/displaymask/ui/OrientationHelper;)I
    .locals 1

    .line 154
    invoke-virtual {p3, p2}, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, p2}, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    .line 155
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p3}, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    invoke-virtual {p3}, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;->getTotalSpace()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p3}, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;->getEnd()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    :goto_0
    sub-int/2addr v0, p1

    return v0
.end method

.method private final estimateNextPositionDiffForFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/amazon/kindle/displaymask/ui/OrientationHelper;I)I
    .locals 3

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, p3, v0}, Landroidx/recyclerview/widget/SnapHelper;->calculateScrollDistance(II)[I

    move-result-object p3

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/displaymask/ui/DualScreenLinearSnapHelper;->computeDistancePerChild(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/amazon/kindle/displaymask/ui/OrientationHelper;)F

    move-result p1

    int-to-float p2, v0

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_0

    return v0

    .line 171
    :cond_0
    aget p2, p3, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v1, 0x1

    aget v2, p3, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p2, v2, :cond_1

    aget p2, p3, v0

    goto :goto_0

    :cond_1
    aget p2, p3, v1

    :goto_0
    int-to-float p2, p2

    div-float/2addr p2, p1

    .line 172
    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    return p1
.end method

.method private final getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/amazon/kindle/displaymask/ui/OrientationHelper;
    .locals 2

    .line 213
    new-instance v0, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;

    iget-object v1, p0, Lcom/amazon/kindle/displaymask/ui/DualScreenLinearSnapHelper;->disabledAreas:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .locals 3

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 60
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lcom/amazon/kindle/displaymask/ui/DualScreenLinearSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/amazon/kindle/displaymask/ui/OrientationHelper;

    move-result-object v1

    .line 61
    invoke-direct {p0, p1, p2, v1}, Lcom/amazon/kindle/displaymask/ui/DualScreenLinearSnapHelper;->distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Lcom/amazon/kindle/displaymask/ui/OrientationHelper;)I

    move-result p1

    aput p1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    :goto_0
    const/4 p1, 0x1

    aput v2, v0, p1

    return-object v0
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .locals 9

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 78
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/displaymask/ui/DualScreenLinearSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/amazon/kindle/displaymask/ui/OrientationHelper;

    move-result-object v2

    .line 80
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    invoke-virtual {v2}, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    invoke-virtual {v2}, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;->getTotalSpace()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v2}, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;->getEnd()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    :goto_0
    const v4, 0x7fffffff

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_3

    .line 88
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, "layoutManager.getChildAt(i)!!"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, v6}, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v2, v6}, Lcom/amazon/kindle/displaymask/ui/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v7, v3

    .line 90
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v4, :cond_2

    move-object v1, v6

    move v4, v7

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .locals 6

    const-string p3, "layoutManager"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    instance-of p3, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v0, -0x1

    if-nez p3, :cond_0

    return v0

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p3

    if-nez p3, :cond_1

    return v0

    .line 111
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/displaymask/ui/DualScreenLinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 113
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_2

    return v0

    .line 118
    :cond_2
    move-object v2, p1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    add-int/lit8 v3, p3, -0x1

    .line 122
    invoke-interface {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v4, "vectorProvider.computeSc\u2026 RecyclerView.NO_POSITION"

    .line 124
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 129
    invoke-direct {p0, p1}, Lcom/amazon/kindle/displaymask/ui/DualScreenLinearSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/amazon/kindle/displaymask/ui/OrientationHelper;

    move-result-object v4

    .line 128
    invoke-direct {p0, p1, v4, p2}, Lcom/amazon/kindle/displaymask/ui/DualScreenLinearSnapHelper;->estimateNextPositionDiffForFling(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/amazon/kindle/displaymask/ui/OrientationHelper;I)I

    move-result p1

    .line 130
    iget p2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v2, v5

    cmpg-float p2, p2, v2

    if-gez p2, :cond_4

    neg-int p1, p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_0
    if-nez p1, :cond_5

    return v0

    :cond_5
    add-int/2addr v1, p1

    if-gez v1, :cond_6

    goto :goto_1

    :cond_6
    move v5, v1

    :goto_1
    if-lt v5, p3, :cond_7

    goto :goto_2

    :cond_7
    move v3, v5

    :goto_2
    return v3

    :cond_8
    return v0
.end method
