.class public Lcom/amazon/kcp/search/views/SearchRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SearchRecyclerView.java"


# instance fields
.field private fetchingMoreResults:Z

.field private provider:Lcom/amazon/kcp/search/SearchProvider;

.field private userScrolled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 37
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView;->fetchingMoreResults:Z

    .line 34
    iput-boolean p1, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView;->userScrolled:Z

    .line 39
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object p2

    .line 40
    new-instance v0, Lcom/amazon/kcp/search/views/SearchRecyclerView$1;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/search/views/SearchRecyclerView$1;-><init>(Lcom/amazon/kcp/search/views/SearchRecyclerView;Landroid/content/Context;)V

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->createAdapter(Lcom/amazon/kcp/cover/ICoverCacheManager;)Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    move-result-object v0

    .line 52
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->createAdapter(Lcom/amazon/kcp/cover/ICoverCacheManager;)Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    new-instance v1, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/search/views/StickyHeaderItemDecoration;-><init>(Landroidx/recyclerview/widget/RecyclerView;Z)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 v1, 0x1

    .line 55
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 56
    new-instance v1, Lcom/amazon/kcp/search/wayfinder/CoverCachingSearchRecyclerScrollListener;

    new-instance v2, Lcom/amazon/kindle/util/drawing/Dimension;

    invoke-direct {v2, p1, p1}, Lcom/amazon/kindle/util/drawing/Dimension;-><init>(II)V

    invoke-direct {v1, v0, p2, v2}, Lcom/amazon/kcp/search/wayfinder/CoverCachingSearchRecyclerScrollListener;-><init>(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/util/drawing/Dimension;)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->registerDataObserver()V

    .line 61
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    const-wide/16 v0, 0x69

    invoke-virtual {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 62
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    const-wide/16 v0, 0xb9

    invoke-virtual {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 69
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 72
    new-instance p1, Lcom/amazon/kcp/search/views/SearchRecyclerView$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/search/views/SearchRecyclerView$2;-><init>(Lcom/amazon/kcp/search/views/SearchRecyclerView;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 120
    invoke-static {}, Lcom/amazon/kcp/debug/WayFinderSearchLayoutDebugUtils;->isWayFinderSearchLayoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    new-instance p1, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 122
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 123
    new-instance p2, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p2, p1, p0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;-><init>(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/views/SearchRecyclerView;)Lcom/amazon/kcp/search/SearchProvider;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView;->provider:Lcom/amazon/kcp/search/SearchProvider;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kcp/search/views/SearchRecyclerView;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView;->fetchingMoreResults:Z

    return p1
.end method

.method static synthetic access$200(Lcom/amazon/kcp/search/views/SearchRecyclerView;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView;->userScrolled:Z

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView;->provider:Lcom/amazon/kcp/search/SearchProvider;

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView;->fetchingMoreResults:Z

    .line 199
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->clear()V

    .line 201
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->setUserScrolled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected createAdapter(Lcom/amazon/kcp/cover/ICoverCacheManager;)Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;
    .locals 4

    .line 218
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 219
    new-instance v1, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    .line 220
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v3}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    :goto_0
    invoke-direct {v1, v2, v0, p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/theme/Theme;Lcom/amazon/kcp/cover/ICoverCacheManager;)V

    return-object v1
.end method

.method public hasResults()Z
    .locals 3

    .line 186
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getLibraryResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getStoreResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasSuggestions()Z
    .locals 2

    .line 173
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getInlineSearchSuggestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected isNetworkAvailable()Z
    .locals 2

    .line 246
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->isWanConnected()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected registerDataObserver()V
    .locals 2

    .line 229
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    new-instance v1, Lcom/amazon/kcp/search/views/SearchRecyclerView$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/views/SearchRecyclerView$3;-><init>(Lcom/amazon/kcp/search/views/SearchRecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 207
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setInteractionHandler(Lcom/amazon/kcp/search/SearchInteractionHandler;)V
    .locals 1

    .line 131
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->setInteractionHandler(Lcom/amazon/kcp/search/SearchInteractionHandler;)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 213
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected setUserScrolled(Ljava/lang/Boolean;)V
    .locals 0

    .line 256
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView;->userScrolled:Z

    return-void
.end method

.method public update(Lcom/amazon/kcp/search/SearchProvider;ZZZZ)V
    .locals 7

    .line 152
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView;->provider:Lcom/amazon/kcp/search/SearchProvider;

    if-nez p1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->clear()V

    goto :goto_1

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    .line 157
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->isStoreSearchPending()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->NOT_LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->setStoreFetchStatus(Lcom/amazon/kcp/search/views/StorePageFetchStatus;)V

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 158
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->update(Lcom/amazon/kcp/search/SearchProvider;ZZZZ)V

    .line 160
    iget-boolean p2, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView;->fetchingMoreResults:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->isStoreSearchPending()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lcom/amazon/kcp/search/views/SearchRecyclerView;->fetchingMoreResults:Z

    .line 162
    invoke-static {}, Lcom/amazon/kcp/search/SearchPMETHelper;->recordStoreSearchAddMoreEnd()V

    :cond_2
    :goto_1
    return-void
.end method
