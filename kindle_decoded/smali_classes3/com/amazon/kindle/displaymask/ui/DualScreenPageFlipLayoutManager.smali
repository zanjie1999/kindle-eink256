.class public final Lcom/amazon/kindle/displaymask/ui/DualScreenPageFlipLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "DualScreenPageFlipLayoutManager.kt"


# instance fields
.field private final snapHelper:Lcom/amazon/kindle/displaymask/ui/DualScreenLinearSnapHelper;


# virtual methods
.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/displaymask/ui/DualScreenPageFlipLayoutManager;->snapHelper:Lcom/amazon/kindle/displaymask/ui/DualScreenLinearSnapHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 37
    iget-object p1, p0, Lcom/amazon/kindle/displaymask/ui/DualScreenPageFlipLayoutManager;->snapHelper:Lcom/amazon/kindle/displaymask/ui/DualScreenLinearSnapHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance p2, Lcom/amazon/kindle/displaymask/ui/DualScreenPageFlipLayoutManager$smoothScrollToPosition$linearSmoothScroller$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, p1, v0, p1}, Lcom/amazon/kindle/displaymask/ui/DualScreenPageFlipLayoutManager$smoothScrollToPosition$linearSmoothScroller$1;-><init>(Lcom/amazon/kindle/displaymask/ui/DualScreenPageFlipLayoutManager;Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 46
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 47
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
