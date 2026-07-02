.class public Landroidx/recyclerview/widget/CenteringLayoutHelper;
.super Ljava/lang/Object;
.source "CenteringLayoutHelper.java"


# instance fields
.field private lm:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Landroidx/recyclerview/widget/CenteringLayoutHelper;->lm:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method

.method static synthetic access$000(Landroidx/recyclerview/widget/CenteringLayoutHelper;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 12
    iget-object p0, p0, Landroidx/recyclerview/widget/CenteringLayoutHelper;->lm:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method


# virtual methods
.method public centerLayoutChunk(Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;II)V
    .locals 7

    .line 53
    iget-object v0, p0, Landroidx/recyclerview/widget/CenteringLayoutHelper;->lm:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int v0, v0, p1

    :goto_0
    if-gt p3, p4, :cond_2

    .line 56
    iget-object p1, p0, Landroidx/recyclerview/widget/CenteringLayoutHelper;->lm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v1

    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 62
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 64
    iget-object v5, p0, Landroidx/recyclerview/widget/CenteringLayoutHelper;->lm:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v5, v5, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    add-int/2addr v4, v0

    add-int/2addr v3, v0

    goto :goto_1

    :cond_0
    add-int/2addr p1, v0

    add-int/2addr v1, v0

    :goto_1
    move v5, v1

    move v6, v4

    move v4, v3

    move v3, p1

    .line 71
    iget-object v1, p0, Landroidx/recyclerview/widget/CenteringLayoutHelper;->lm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/CenteringLayoutHelper;->lm:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;

    iget p3, p1, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    add-int/2addr p3, v0

    iput p3, p1, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 79
    iget p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr p1, p3

    iput p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    return-void
.end method

.method public shouldCenterLayoutChunk(Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;)Z
    .locals 3

    .line 39
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    if-nez v0, :cond_0

    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget-object v2, p0, Landroidx/recyclerview/widget/CenteringLayoutHelper;->lm:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 41
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    .line 20
    new-instance p2, Landroidx/recyclerview/widget/CenteringLayoutHelper$1;

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0, p1}, Landroidx/recyclerview/widget/CenteringLayoutHelper$1;-><init>(Landroidx/recyclerview/widget/CenteringLayoutHelper;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 28
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 29
    iget-object p1, p0, Landroidx/recyclerview/widget/CenteringLayoutHelper;->lm:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
