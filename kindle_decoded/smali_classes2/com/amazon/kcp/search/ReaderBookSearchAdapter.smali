.class public Lcom/amazon/kcp/search/ReaderBookSearchAdapter;
.super Ljava/lang/Object;
.source "ReaderBookSearchAdapter.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/ISearchAdapter;


# static fields
.field private static final METRICS_METADATA_KEY_RESULTS:Ljava/lang/String; = "RESULTS"

.field private static final METRICS_METADATA_KEY_SUBSECTION_HEADERS:Ljava/lang/String; = "SUBSECTION_HEADERS"

.field private static final READER_BOOK_SEARCH_ADAPTER_KEY:Ljava/lang/String; = "BOOK"


# instance fields
.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/kcp/search/ReaderBookSearchAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method


# virtual methods
.method public allowExtraResultToReplaceExpander()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public areSearchResultsDynamic()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createSearchTask(Ljava/lang/String;)Lcom/amazon/kindle/krx/search/ISearchTask;
    .locals 2

    .line 62
    new-instance v0, Lcom/amazon/kcp/search/ReaderBookSearchTask;

    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderBookSearchAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {v0, v1, p1}, Lcom/amazon/kcp/search/ReaderBookSearchTask;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAdapterSpecificMetricsMetadata(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/ISearchResult;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/search/ISearchResult;

    .line 130
    instance-of v3, v2, Lcom/amazon/kcp/search/ReaderBookSearchResult;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_1
    instance-of v2, v2, Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "SUBSECTION_HEADERS"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "RESULTS"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "BOOK"

    return-object v0
.end method

.method public getMaximumSearchResultsBeforeExpander()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 56
    sget v0, Lcom/amazon/kindle/krl/R$string;->book_search_provider_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeForResult(Lcom/amazon/kindle/krx/search/ISearchResult;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onResultClicked(Lcom/amazon/kindle/krx/search/ISearchResult;)Z
    .locals 3

    .line 82
    check-cast p1, Lcom/amazon/kcp/search/ReaderBookSearchResult;

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderBookSearchAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setSearchResults(Ljava/util/List;)V

    .line 85
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p1}, Lcom/amazon/kcp/search/InBookContentSearchResult;->getPositionRange()Lcom/amazon/android/docviewer/IPositionRange;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPositionRange;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    const-string v2, "SearchResultClick"

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V

    :cond_1
    return v1
.end method

.method public prepareForSearch()V
    .locals 0

    return-void
.end method

.method public viewForSearchResult(Lcom/amazon/kindle/krx/search/ISearchResult;Landroid/view/View;Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
    .locals 1

    .line 68
    check-cast p1, Lcom/amazon/kcp/search/ReaderBookSearchResult;

    .line 69
    check-cast p2, Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    .line 71
    invoke-virtual {p1}, Lcom/amazon/kcp/search/ReaderBookSearchResult;->getSnippet()Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    move-result-object p4

    .line 72
    invoke-virtual {p1}, Lcom/amazon/kcp/search/ReaderBookSearchResult;->getLocationLabel()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSearchManager()Lcom/amazon/kindle/krx/search/IReaderSearchManager;

    move-result-object v0

    .line 75
    invoke-interface {v0, p3, p2}, Lcom/amazon/kindle/krx/search/IReaderSearchManager;->createSimpleResultViewBuilder(Landroid/content/Context;Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    move-result-object p2

    .line 77
    invoke-interface {p2, p4}, Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;->setBody(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;->setFooters(Ljava/util/List;)Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/search/ISimpleSearchResultViewBuilder;->build()Lcom/amazon/kindle/krx/search/AbstractSimpleSearchResultView;

    move-result-object p1

    return-object p1
.end method
