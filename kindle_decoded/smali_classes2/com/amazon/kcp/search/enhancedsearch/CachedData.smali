.class Lcom/amazon/kcp/search/enhancedsearch/CachedData;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"


# instance fields
.field private book:Lcom/amazon/kindle/krx/content/IBook;

.field private metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

.field private query:Ljava/lang/String;

.field private recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

.field private scrollPosition:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1384
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->reset()V

    return-void
.end method


# virtual methods
.method getBook()Lcom/amazon/kindle/krx/content/IBook;
    .locals 1

    .line 1399
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-object v0
.end method

.method getQuery()Ljava/lang/String;
    .locals 1

    .line 1407
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->query:Ljava/lang/String;

    return-object v0
.end method

.method getRecyclerViewAdapter()Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;
    .locals 1

    .line 1423
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    return-object v0
.end method

.method getScrollPosition()I
    .locals 1

    .line 1415
    iget v0, p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->scrollPosition:I

    return v0
.end method

.method getSearchMetricsDelegate()Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;
    .locals 1

    .line 1431
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    return-object v0
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1391
    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->book:Lcom/amazon/kindle/krx/content/IBook;

    .line 1392
    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->query:Ljava/lang/String;

    .line 1393
    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    const/4 v1, 0x0

    .line 1394
    iput v1, p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->scrollPosition:I

    .line 1395
    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    return-void
.end method

.method setBook(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 1403
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method

.method setQuery(Ljava/lang/String;)V
    .locals 0

    .line 1411
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->query:Ljava/lang/String;

    return-void
.end method

.method setRecyclerViewAdapter(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;)V
    .locals 0

    .line 1427
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    return-void
.end method

.method setScrollPosition(I)V
    .locals 0

    .line 1419
    iput p1, p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->scrollPosition:I

    return-void
.end method

.method setSearchMetricsDelegate(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;)V
    .locals 0

    .line 1435
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    return-void
.end method
