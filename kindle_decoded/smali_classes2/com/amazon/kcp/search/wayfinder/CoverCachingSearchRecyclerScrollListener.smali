.class public Lcom/amazon/kcp/search/wayfinder/CoverCachingSearchRecyclerScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CoverCachingSearchRecyclerScrollListener.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;


# instance fields
.field private final adapter:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

.field private final coverCachingPolicyHelper:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

.field private final imageDimension:Lcom/amazon/kindle/util/drawing/Dimension;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/util/drawing/Dimension;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/CoverCachingSearchRecyclerScrollListener;->adapter:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    .line 34
    new-instance p1, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-direct {p1, p0, p2, p3}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;-><init>(Lcom/amazon/kcp/library/fragments/CoverCachingPolicyAdapterCallback;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/util/drawing/Dimension;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/CoverCachingSearchRecyclerScrollListener;->coverCachingPolicyHelper:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    .line 35
    iput-object p3, p0, Lcom/amazon/kcp/search/wayfinder/CoverCachingSearchRecyclerScrollListener;->imageDimension:Lcom/amazon/kindle/util/drawing/Dimension;

    return-void
.end method


# virtual methods
.method public getBookId(I)Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/CoverCachingSearchRecyclerScrollListener;->adapter:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getBookId(I)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/CoverCachingSearchRecyclerScrollListener;->adapter:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/CoverCachingSearchRecyclerScrollListener;->adapter:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    .line 46
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/CoverCachingSearchRecyclerScrollListener;->coverCachingPolicyHelper:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p1, v2}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->onScrollStateChange(IIIZ)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 40
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 41
    iget-object p2, p0, Lcom/amazon/kcp/search/wayfinder/CoverCachingSearchRecyclerScrollListener;->coverCachingPolicyHelper:Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lcom/amazon/kcp/library/fragments/CoverCachingPolicy;->onScroll(IIZ)V

    return-void
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
