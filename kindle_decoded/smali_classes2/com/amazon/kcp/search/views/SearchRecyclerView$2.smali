.class Lcom/amazon/kcp/search/views/SearchRecyclerView$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SearchRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/views/SearchRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/views/SearchRecyclerView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/views/SearchRecyclerView;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView$2;->this$0:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 75
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 76
    check-cast p1, Lcom/amazon/kcp/search/views/SearchRecyclerView;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 p2, 0x0

    .line 80
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->setUserScrolled(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->setUserScrolled(Ljava/lang/Boolean;)V

    :goto_0
    if-gtz p3, :cond_1

    return-void

    .line 98
    :cond_1
    invoke-static {p1}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->access$000(Lcom/amazon/kcp/search/views/SearchRecyclerView;)Lcom/amazon/kcp/search/SearchProvider;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->access$000(Lcom/amazon/kcp/search/views/SearchRecyclerView;)Lcom/amazon/kcp/search/SearchProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getStoreResults()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 100
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    .line 101
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    .line 102
    invoke-virtual {p3}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, p2

    const/16 p2, 0xa

    if-gt v1, p2, :cond_3

    .line 104
    invoke-virtual {p1}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->isNetworkAvailable()Z

    move-result p2

    if-nez p2, :cond_2

    .line 105
    sget-object p1, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->BLOCKED:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    invoke-virtual {p3, p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->setStoreFetchStatus(Lcom/amazon/kcp/search/views/StorePageFetchStatus;)V

    goto :goto_1

    .line 108
    :cond_2
    invoke-static {p1}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->access$000(Lcom/amazon/kcp/search/views/SearchRecyclerView;)Lcom/amazon/kcp/search/SearchProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->fetchMoreStoreResults()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 109
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView$2;->this$0:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    invoke-static {p1, v0}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->access$102(Lcom/amazon/kcp/search/views/SearchRecyclerView;Z)Z

    .line 110
    invoke-static {}, Lcom/amazon/kcp/search/SearchPMETHelper;->recordStoreAddMoreSearchStart()V

    .line 111
    sget-object p1, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    invoke-virtual {p3, p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->setStoreFetchStatus(Lcom/amazon/kcp/search/views/StorePageFetchStatus;)V

    :cond_3
    :goto_1
    return-void
.end method
