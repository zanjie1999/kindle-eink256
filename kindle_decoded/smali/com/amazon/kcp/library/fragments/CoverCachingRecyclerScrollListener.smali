.class public Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CoverCachingRecyclerScrollListener.kt"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;


# instance fields
.field private final adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/AbstractRecyclerAdapter<",
            "**>;"
        }
    .end annotation
.end field

.field private final coverCachingPolicyHelper:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/AbstractRecyclerAdapter;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/util/drawing/Dimension;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/AbstractRecyclerAdapter<",
            "**>;",
            "Lcom/amazon/kcp/cover/ICoverCacheManager;",
            "Lcom/amazon/kindle/util/drawing/Dimension;",
            ")V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageDimension"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    .line 19
    new-instance p1, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-direct {p1, p0, p2, p3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;-><init>(Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/util/drawing/Dimension;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;->coverCachingPolicyHelper:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    return-void
.end method


# virtual methods
.method protected final getAdapter()Lcom/amazon/kcp/library/AbstractRecyclerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kcp/library/AbstractRecyclerAdapter<",
            "**>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    return-object v0
.end method

.method public getBookId(I)Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 42
    instance-of v0, p1, Lcom/amazon/kcp/library/ICoverCacheable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/library/ICoverCacheable;

    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getCount()I
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    instance-of v1, v0, Lcom/amazon/kcp/library/FastRecyclerAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazon/kcp/library/FastRecyclerAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;->adapter:Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;->coverCachingPolicyHelper:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    invoke-virtual {v0, p2, v1, p1}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->onScrollStateChange(III)V

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string/jumbo p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 23
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/CoverCachingRecyclerScrollListener;->coverCachingPolicyHelper:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->onScroll(II)V

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scrollStateFling()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public scrollStateIdle()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public scrollStateTouchScroll()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
