.class public abstract Landroidx/recyclerview/widget/CenterLockSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "CenterLockSmoothScroller.java"


# instance fields
.field private final MS_PER_PX:F

.field private deltaToStartSkip:I

.field private deltaToStopSkip:I

.field private dx:I

.field private dy:I

.field private msPerPxThisScroll:F

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private skipToPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->skipToPos:I

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->msPerPxThisScroll:F

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->dx:I

    .line 23
    iput v0, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->dy:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->MS_PER_PX:F

    .line 31
    iput-object p2, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 0

    sub-int/2addr p4, p3

    .line 88
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    sub-int/2addr p2, p1

    .line 89
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    sub-int/2addr p3, p1

    return p3
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 2

    .line 101
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->msPerPxThisScroll:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 0

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onSeekTargetStep(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    .line 107
    iget p3, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->dx:I

    add-int/2addr p3, p1

    iput p3, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->dx:I

    .line 108
    iget p1, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->dy:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->dy:I

    .line 110
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->dy:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 111
    iget p2, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->skipToPos:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_4

    iget p2, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->deltaToStartSkip:I

    if-lt p1, p2, :cond_4

    iget p2, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->deltaToStopSkip:I

    if-ge p1, p2, :cond_4

    .line 113
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 114
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    .line 115
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 116
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result p4

    if-gt p2, p4, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result p4

    if-lt p1, p4, :cond_0

    .line 118
    iput p3, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->skipToPos:I

    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result p4

    if-ge p1, p4, :cond_1

    iget p4, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->skipToPos:I

    if-le p4, p1, :cond_2

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result p1

    if-le p2, p1, :cond_3

    iget p1, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->skipToPos:I

    if-lt p1, p2, :cond_3

    .line 123
    :cond_2
    iput p3, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->skipToPos:I

    return-void

    .line 128
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget p2, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->skipToPos:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 132
    iget-object p1, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 133
    iput p3, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->skipToPos:I

    :cond_4
    return-void
.end method

.method protected onStart()V
    .locals 9

    .line 36
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStart()V

    .line 37
    iget v0, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->MS_PER_PX:F

    iput v0, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->msPerPxThisScroll:F

    .line 40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    sub-int v3, v2, v1

    .line 43
    div-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v1

    .line 44
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v5

    invoke-static {v0, v5}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v5

    .line 45
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    if-eqz v2, :cond_3

    if-nez v6, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    .line 56
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    .line 59
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    :goto_0
    sub-int/2addr v0, v2

    .line 62
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    div-int/2addr v0, v3

    .line 63
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v2

    sub-int/2addr v2, v4

    mul-int v2, v2, v0

    .line 64
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v3

    int-to-long v5, v3

    .line 65
    sget-wide v7, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->maxJumpDuration:J

    cmp-long v3, v5, v7

    if-lez v3, :cond_3

    sub-long/2addr v5, v7

    long-to-float v3, v5

    .line 67
    iget v5, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->MS_PER_PX:F

    div-float/2addr v3, v5

    float-to-int v3, v3

    .line 68
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->deltaToStartSkip:I

    add-int/2addr v2, v3

    .line 69
    iput v2, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->deltaToStopSkip:I

    .line 70
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 71
    iget v1, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->deltaToStopSkip:I

    div-int/2addr v1, v0

    add-int/2addr v4, v1

    iput v4, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->skipToPos:I

    goto :goto_1

    .line 73
    :cond_2
    iget v1, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->deltaToStopSkip:I

    div-int/2addr v1, v0

    sub-int/2addr v4, v1

    iput v4, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->skipToPos:I

    :cond_3
    :goto_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 80
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStop()V

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->skipToPos:I

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->dx:I

    .line 83
    iput v0, p0, Landroidx/recyclerview/widget/CenterLockSmoothScroller;->dy:I

    return-void
.end method
