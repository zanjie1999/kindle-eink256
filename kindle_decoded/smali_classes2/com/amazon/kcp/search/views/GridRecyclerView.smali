.class public Lcom/amazon/kcp/search/views/GridRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "GridRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;
    }
.end annotation


# static fields
.field private static DEFAULT_NUM_COLUMNS:I = 0x1


# instance fields
.field private spacingDecoration:Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/amazon/kcp/search/views/GridRecyclerView;->spacingDecoration:Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;

    .line 62
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/amazon/kcp/search/views/GridRecyclerView;->DEFAULT_NUM_COLUMNS:I

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public getNumColumns()I
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    return v0
.end method

.method public setNumColumns(I)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public setSpacing(II)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/search/views/GridRecyclerView;->spacingDecoration:Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 77
    :cond_0
    new-instance v0, Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;-><init>(Lcom/amazon/kcp/search/views/GridRecyclerView;II)V

    iput-object v0, p0, Lcom/amazon/kcp/search/views/GridRecyclerView;->spacingDecoration:Lcom/amazon/kcp/search/views/GridRecyclerView$ItemOffsetDecoration;

    .line 78
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
