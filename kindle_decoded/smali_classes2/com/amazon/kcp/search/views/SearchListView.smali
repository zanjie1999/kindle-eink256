.class public Lcom/amazon/kcp/search/views/SearchListView;
.super Landroid/widget/ListView;
.source "SearchListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/SearchListView;->createAdapter()Lcom/amazon/kcp/search/views/SearchResultsAdapter;

    move-result-object p1

    .line 24
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 25
    new-instance p2, Lcom/amazon/kcp/library/fragments/CoverCachingListScrollListener;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/util/drawing/Dimension;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    invoke-direct {p2, p1, v0, v1}, Lcom/amazon/kcp/library/fragments/CoverCachingListScrollListener;-><init>(Landroid/widget/Adapter;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/util/drawing/Dimension;)V

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private getScrollOffset()I
    .locals 2

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 73
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;

    .line 74
    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->clear()V

    return-void
.end method

.method protected createAdapter()Lcom/amazon/kcp/search/views/SearchResultsAdapter;
    .locals 2

    .line 93
    new-instance v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;

    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getVisibleStoreResultCount()I
    .locals 1

    .line 83
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->getVisibleStoreResultCount()I

    move-result v0

    return v0
.end method

.method public hasResults()Z
    .locals 1

    .line 106
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;

    .line 107
    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->getSearchResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 20
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/views/SearchListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 89
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setInteractionHandler(Lcom/amazon/kcp/search/SearchInteractionHandler;)V
    .locals 1

    .line 32
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->setInteractionHandler(Lcom/amazon/kcp/search/SearchInteractionHandler;)V

    return-void
.end method

.method public update(Lcom/amazon/kcp/search/SearchProvider;Z)V
    .locals 3

    .line 49
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchListView;->getScrollOffset()I

    move-result v1

    .line 53
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/search/views/SearchResultsAdapter;

    .line 54
    invoke-virtual {v2}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->clear()V

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {v2, p1, p2}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->update(Lcom/amazon/kcp/search/SearchProvider;Z)V

    .line 60
    :cond_0
    new-instance p1, Lcom/amazon/kcp/search/views/SearchListView$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/amazon/kcp/search/views/SearchListView$1;-><init>(Lcom/amazon/kcp/search/views/SearchListView;II)V

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
