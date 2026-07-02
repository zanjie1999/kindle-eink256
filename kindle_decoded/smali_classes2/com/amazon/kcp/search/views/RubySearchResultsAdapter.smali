.class public Lcom/amazon/kcp/search/views/RubySearchResultsAdapter;
.super Lcom/amazon/kcp/search/views/SearchResultsAdapter;
.source "RubySearchResultsAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addStoreSection(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->storeSection:Lcom/amazon/kcp/search/SectionResult;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->add(Lcom/amazon/kcp/search/SearchResult;)V

    .line 28
    new-instance v0, Lcom/amazon/kcp/search/StoreGroupResult;

    new-instance v1, Lcom/amazon/kcp/search/views/SearchResultsAdapter$StoreResultClickHandler;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter$StoreResultClickHandler;-><init>(Lcom/amazon/kcp/search/views/SearchResultsAdapter;)V

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/search/StoreGroupResult;-><init>(Ljava/util/List;Lcom/amazon/kcp/search/StoreGroupResult$ClickHandler;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->storeGroupResult:Lcom/amazon/kcp/search/StoreGroupResult;

    .line 29
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter;->add(Lcom/amazon/kcp/search/SearchResult;)V

    return-void
.end method

.method protected createSectionResult(Lcom/amazon/kcp/search/SectionResult$SectionType;Ljava/lang/String;)Lcom/amazon/kcp/search/SectionResult;
    .locals 1

    .line 48
    new-instance v0, Lcom/amazon/kcp/search/RubySectionResult;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/search/RubySectionResult;-><init>(Lcom/amazon/kcp/search/SectionResult$SectionType;Ljava/lang/String;)V

    .line 49
    sget-object p2, Lcom/amazon/kcp/search/SectionResult$SectionType;->STORE:Lcom/amazon/kcp/search/SectionResult$SectionType;

    if-ne p1, p2, :cond_0

    .line 50
    new-instance p1, Lcom/amazon/kcp/search/views/SearchResultsAdapter$GoToStoreClickHandler;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/search/views/SearchResultsAdapter$GoToStoreClickHandler;-><init>(Lcom/amazon/kcp/search/views/SearchResultsAdapter;)V

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/SearchResult;->setClickHandler(Lcom/amazon/kcp/search/SearchResult$ClickHandler;)V

    :cond_0
    return-object v0
.end method

.method protected getLibrarySectionHeader()I
    .locals 1

    .line 36
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->ruby_search_results_library_header:I

    return v0
.end method

.method protected getStoreSectionHeader()I
    .locals 1

    .line 43
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->ruby_search_results_store_header:I

    return v0
.end method
