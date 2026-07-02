.class public Landroidx/recyclerview/widget/BirdsEyeLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "BirdsEyeLayoutManager.java"


# instance fields
.field private helper:Landroidx/recyclerview/widget/CenteringLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 15
    new-instance p2, Landroidx/recyclerview/widget/CenteringLayoutHelper;

    invoke-direct {p2, p1, p0}, Landroidx/recyclerview/widget/CenteringLayoutHelper;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/BirdsEyeLayoutManager;->helper:Landroidx/recyclerview/widget/CenteringLayoutHelper;

    return-void
.end method


# virtual methods
.method layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 7

    .line 27
    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 28
    iget v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    sub-int v1, v0, v1

    .line 29
    iget-object v2, p0, Landroidx/recyclerview/widget/BirdsEyeLayoutManager;->helper:Landroidx/recyclerview/widget/CenteringLayoutHelper;

    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/CenteringLayoutHelper;->shouldCenterLayoutChunk(Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;)Z

    move-result v2

    .line 30
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 31
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v5

    if-nez v5, :cond_0

    .line 32
    iput v4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 34
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 35
    iget p1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget p2, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    sub-int/2addr p1, p2

    .line 36
    iget v5, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    sub-int v5, p1, v5

    if-eq v3, p2, :cond_1

    .line 38
    iput v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v0

    .line 39
    iput v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    :cond_1
    if-gtz v1, :cond_2

    if-gez v5, :cond_4

    :cond_2
    if-ltz v1, :cond_3

    if-gtz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    .line 45
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 46
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 47
    iget-object v0, p0, Landroidx/recyclerview/widget/BirdsEyeLayoutManager;->helper:Landroidx/recyclerview/widget/CenteringLayoutHelper;

    invoke-virtual {v0, p3, p4, p2, p1}, Landroidx/recyclerview/widget/CenteringLayoutHelper;->centerLayoutChunk(Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;II)V

    :cond_5
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/BirdsEyeLayoutManager;->helper:Landroidx/recyclerview/widget/CenteringLayoutHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/CenteringLayoutHelper;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return-void
.end method
