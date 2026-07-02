.class public Landroidx/recyclerview/widget/PageFlipLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "PageFlipLayoutManager.java"


# instance fields
.field private helper:Landroidx/recyclerview/widget/CenteringLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 17
    new-instance v0, Landroidx/recyclerview/widget/CenteringLayoutHelper;

    invoke-direct {v0, p1, p0}, Landroidx/recyclerview/widget/CenteringLayoutHelper;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/PageFlipLayoutManager;->helper:Landroidx/recyclerview/widget/CenteringLayoutHelper;

    return-void
.end method

.method private isShowingPlaceholders()Z
    .locals 3

    .line 40
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 42
    :goto_0
    instance-of v2, v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    :cond_1
    if-eqz v1, :cond_2

    .line 43
    invoke-virtual {v1}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->isShowingPlaceholders()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/PageFlipLayoutManager;->isShowingPlaceholders()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p2, v1}, Landroidx/recyclerview/widget/PageFlipLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 31
    :cond_0
    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/PageFlipLayoutManager;->helper:Landroidx/recyclerview/widget/CenteringLayoutHelper;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/CenteringLayoutHelper;->shouldCenterLayoutChunk(Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;)Z

    move-result v0

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 35
    iget-object p1, p0, Landroidx/recyclerview/widget/PageFlipLayoutManager;->helper:Landroidx/recyclerview/widget/CenteringLayoutHelper;

    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p1, p3, p4, p2, p2}, Landroidx/recyclerview/widget/CenteringLayoutHelper;->centerLayoutChunk(Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;II)V

    :cond_2
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/PageFlipLayoutManager;->helper:Landroidx/recyclerview/widget/CenteringLayoutHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/CenteringLayoutHelper;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    return-void
.end method
