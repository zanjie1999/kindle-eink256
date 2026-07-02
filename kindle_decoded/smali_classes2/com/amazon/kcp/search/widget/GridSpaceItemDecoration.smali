.class public Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridSpaceItemDecoration.java"


# instance fields
.field private hasHorizontalEdge:Z

.field private hasVerticalEdge:Z

.field private horizontalSpace:I

.field private verticalSpace:I


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->verticalSpace:I

    .line 15
    iput v0, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->horizontalSpace:I

    .line 17
    iput-boolean v0, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->hasVerticalEdge:Z

    .line 19
    iput-boolean v0, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->hasHorizontalEdge:Z

    .line 22
    iput p1, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->verticalSpace:I

    .line 23
    iput p2, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->horizontalSpace:I

    .line 24
    iput-boolean p4, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->hasHorizontalEdge:Z

    .line 25
    iput-boolean p3, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->hasVerticalEdge:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 31
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 32
    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v1

    .line 33
    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result p4

    .line 34
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 35
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    .line 36
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v2

    .line 37
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x1

    if-ne v2, p3, :cond_6

    const/4 v2, 0x0

    if-gt p2, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 42
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    sub-int v5, v3, v1

    sub-int/2addr v0, v5

    if-lt p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 44
    :goto_1
    iget-boolean v0, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->hasVerticalEdge:Z

    if-eqz v0, :cond_2

    .line 45
    iget v0, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->verticalSpace:I

    mul-int v5, v5, v0

    div-int/2addr v5, v3

    sub-int/2addr p4, p3

    add-int/2addr v1, p4

    add-int/2addr v1, p3

    mul-int v0, v0, v1

    .line 46
    div-int/2addr v0, v3

    goto :goto_2

    .line 48
    :cond_2
    iget v0, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->verticalSpace:I

    mul-int v5, v0, v1

    div-int/2addr v5, v3

    add-int/2addr v1, p4

    sub-int/2addr v1, p3

    sub-int p4, v3, v1

    sub-int/2addr p4, p3

    mul-int v0, v0, p4

    .line 49
    div-int/2addr v0, v3

    :goto_2
    if-eqz v4, :cond_3

    .line 53
    iget-boolean p3, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->hasHorizontalEdge:Z

    if-eqz p3, :cond_3

    .line 54
    iget p3, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->horizontalSpace:I

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :goto_3
    if-eqz p2, :cond_4

    .line 58
    iget-boolean p2, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->hasHorizontalEdge:Z

    if-eqz p2, :cond_5

    .line 59
    iget v2, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->horizontalSpace:I

    goto :goto_4

    .line 62
    :cond_4
    iget v2, p0, Lcom/amazon/kcp/search/widget/GridSpaceItemDecoration;->horizontalSpace:I

    .line 64
    :cond_5
    :goto_4
    invoke-virtual {p1, v5, p3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_6
    return-void
.end method
