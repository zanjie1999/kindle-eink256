.class public Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;
.super Ljava/lang/Object;
.source "ReaderTextbookSearchClickstreamMetricManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static searchStartedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 104
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    return-object v0
.end method

.method private static isTextbook(Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 128
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static logSearchOpened()V
    .locals 2

    .line 30
    invoke-static {}, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->isTextbook(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TextbookSearch"

    const-string v1, "SearchOpened"

    .line 31
    invoke-static {v0, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logSearchResultSelected(Lcom/amazon/kindle/krx/search/ISearchResult;)V
    .locals 4

    .line 80
    invoke-static {}, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->isTextbook(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, -0x1

    .line 84
    instance-of v3, p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;

    if-eqz v3, :cond_0

    .line 85
    check-cast p0, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    goto :goto_0

    .line 86
    :cond_0
    instance-of v3, p0, Lcom/amazon/kcp/search/ReaderBookSearchResult;

    if-eqz v3, :cond_1

    .line 87
    check-cast p0, Lcom/amazon/kcp/search/ReaderBookSearchResult;

    invoke-virtual {p0}, Lcom/amazon/kcp/search/InBookContentSearchResult;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    :cond_1
    :goto_0
    if-ltz v2, :cond_2

    .line 91
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "target"

    .line 90
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p0, "TextbookSearch"

    const-string v0, "SearchResultSelected"

    .line 93
    invoke-static {p0, v0, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public static logSearchResultsDisplayed(I)V
    .locals 5

    .line 58
    invoke-static {}, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->isTextbook(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->searchStartedTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    .line 61
    sput-wide v3, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->searchStartedTime:J

    .line 63
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 65
    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->metricsIsIndexingComplete(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "indexingComplete"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "count"

    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "time"

    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "TextbookSearch"

    const-string v0, "SearchResultsDisplayed"

    .line 68
    invoke-static {p0, v0, v3}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static logSearchStarted()V
    .locals 3

    .line 40
    invoke-static {}, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->isTextbook(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->metricsIsIndexingComplete(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "indexingComplete"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TextbookSearch"

    const-string v2, "SearchStarted"

    .line 44
    invoke-static {v0, v2, v1}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->searchStartedTime:J

    :cond_0
    return-void
.end method

.method private static metricsIsIndexingComplete(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;
    .locals 1

    .line 116
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSearchIndexer()Lcom/amazon/kcp/search/IBookSearchIndexer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSearchIndexer()Lcom/amazon/kcp/search/IBookSearchIndexer;

    move-result-object v0

    .line 117
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    .line 116
    invoke-interface {v0, p0}, Lcom/amazon/kcp/search/IBookSearchIndexer;->isIndexAvailable(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method
