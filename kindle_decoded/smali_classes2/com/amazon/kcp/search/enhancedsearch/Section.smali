.class Lcom/amazon/kcp/search/enhancedsearch/Section;
.super Ljava/lang/Object;
.source "Section.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/IOnSearchListener;


# static fields
.field private static final FIRST_ROW_INDEX:I = 0x1

.field private static final HEADER_INDEX:I = 0x0

.field private static final MAX_RESULTS_PER_SECTION:I = 0x2710

.field private static final NO_SUBSECTION_HEADER:I = -0x1


# instance fields
.field private currentSubsectionHeaderLevel:I

.field private final customViewTypeOffset:I

.field private didStartSearch:Z

.field private isExpanded:Z

.field private isSearchFinished:Z

.field private metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

.field private metricsFlagSearchStatus:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

.field private final recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/ISearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private final searchAdapter:Lcom/amazon/kindle/krx/search/ISearchAdapter;

.field private searchTask:Lcom/amazon/kindle/krx/search/ISearchTask;

.field private startPosition:I

.field private subsectionHeaderCount:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;Lcom/amazon/kindle/krx/search/ISearchAdapter;ILcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    .line 63
    iput-object p2, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->searchAdapter:Lcom/amazon/kindle/krx/search/ISearchAdapter;

    .line 64
    iput p3, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->customViewTypeOffset:I

    .line 65
    iput-object p4, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->rows:Ljava/util/List;

    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->didStartSearch:Z

    .line 69
    sget-object p2, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->NOT_STARTED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    iput-object p2, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->metricsFlagSearchStatus:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    .line 71
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->reset(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/enhancedsearch/Section;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->rows:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/amazon/kcp/search/enhancedsearch/Section;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->didStartSearch:Z

    return p1
.end method

.method static synthetic access$102(Lcom/amazon/kcp/search/enhancedsearch/Section;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->isExpanded:Z

    return p1
.end method

.method static synthetic access$202(Lcom/amazon/kcp/search/enhancedsearch/Section;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->isSearchFinished:Z

    return p1
.end method

.method static synthetic access$302(Lcom/amazon/kcp/search/enhancedsearch/Section;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->startPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/amazon/kcp/search/enhancedsearch/Section;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->currentSubsectionHeaderLevel:I

    return p0
.end method

.method static synthetic access$402(Lcom/amazon/kcp/search/enhancedsearch/Section;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->currentSubsectionHeaderLevel:I

    return p1
.end method

.method static synthetic access$408(Lcom/amazon/kcp/search/enhancedsearch/Section;)I
    .locals 2

    .line 22
    iget v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->currentSubsectionHeaderLevel:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->currentSubsectionHeaderLevel:I

    return v0
.end method

.method static synthetic access$410(Lcom/amazon/kcp/search/enhancedsearch/Section;)I
    .locals 2

    .line 22
    iget v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->currentSubsectionHeaderLevel:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->currentSubsectionHeaderLevel:I

    return v0
.end method

.method static synthetic access$502(Lcom/amazon/kcp/search/enhancedsearch/Section;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->subsectionHeaderCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/amazon/kcp/search/enhancedsearch/Section;)I
    .locals 2

    .line 22
    iget v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->subsectionHeaderCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->subsectionHeaderCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/search/enhancedsearch/Section;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/search/enhancedsearch/Section;Lcom/amazon/kindle/krx/search/ISearchResult;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->postNewResult(Lcom/amazon/kindle/krx/search/ISearchResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/kcp/search/enhancedsearch/Section;)Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->metricsFlagSearchStatus:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kcp/search/enhancedsearch/Section;)Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    return-object p0
.end method

.method private getRow(I)Lcom/amazon/kindle/krx/search/ISearchResult;
    .locals 1

    .line 253
    iget v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->startPosition:I

    sub-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->rows:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/search/ISearchResult;

    return-object p1

    .line 256
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Trying to access a header like it is a row."

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private hasExpander()Z
    .locals 5

    .line 219
    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->isExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getResultCount()I

    move-result v0

    .line 224
    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->searchAdapter:Lcom/amazon/kindle/krx/search/ISearchAdapter;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/search/ISearchAdapter;->getMaximumSearchResultsBeforeExpander()I

    move-result v2

    const/4 v3, 0x1

    if-gt v0, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    return v1

    .line 231
    :cond_2
    iget-object v4, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->searchAdapter:Lcom/amazon/kindle/krx/search/ISearchAdapter;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/search/ISearchAdapter;->allowExtraResultToReplaceExpander()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/2addr v2, v3

    if-ne v0, v2, :cond_3

    return v1

    :cond_3
    return v3
.end method

.method private postNewResult(Lcom/amazon/kindle/krx/search/ISearchResult;)V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    iget p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->startPosition:I

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    .line 503
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->containsPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->updateSectionStartPositions()V

    .line 505
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_0
    return-void
.end method

.method private recordMetricsForExpanderClicked(I)V
    .locals 8

    .line 394
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->EXPANDER_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    .line 396
    invoke-virtual {v2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getSectionsResultCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    .line 397
    invoke-virtual {v3}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getMetricsSearchStatus()Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    move-result-object v3

    .line 398
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getSearchAdapter()Lcom/amazon/kindle/krx/search/ISearchAdapter;

    move-result-object v4

    .line 399
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getStartPosition()I

    move-result v5

    sub-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 394
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->recordMetricsForAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;Ljava/lang/Integer;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;Lcom/amazon/kindle/krx/search/ISearchAdapter;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 403
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->EXPANDER_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->recordMetricStateMetadataForSections(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V

    return-void
.end method

.method private recordMetricsForResultClicked(I)V
    .locals 5

    .line 383
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    .line 384
    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getSectionsResultCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    .line 385
    invoke-virtual {v2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getMetricsSearchStatus()Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    move-result-object v2

    .line 386
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getSearchAdapter()Lcom/amazon/kindle/krx/search/ISearchAdapter;

    move-result-object v3

    .line 387
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getStartPosition()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 383
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->recordMetricsForResultClicked(Ljava/lang/Integer;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;Lcom/amazon/kindle/krx/search/ISearchAdapter;Ljava/lang/Integer;)V

    .line 389
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->RESULT_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->recordMetricStateMetadataForSections(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V

    return-void
.end method


# virtual methods
.method public areSearchResultsDynamic()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->searchAdapter:Lcom/amazon/kindle/krx/search/ISearchAdapter;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/search/ISearchAdapter;->areSearchResultsDynamic()Z

    move-result v0

    return v0
.end method

.method cancelSearch()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->searchTask:Lcom/amazon/kindle/krx/search/ISearchTask;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Lcom/amazon/kindle/krx/search/ISearchTask;->cancelSearch()V

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->isSearchFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->INTERRUPTED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->metricsFlagSearchStatus:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    :cond_1
    return-void
.end method

.method containsPosition(I)Z
    .locals 2

    .line 177
    iget v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->startPosition:I

    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 178
    iget v1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->startPosition:I

    if-gt v1, p1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method didStartSearch()Z
    .locals 1

    .line 413
    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->didStartSearch:Z

    return v0
.end method

.method getAdapterSpecificMetricsMetadata()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->searchAdapter:Lcom/amazon/kindle/krx/search/ISearchAdapter;

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/search/ISearchAdapter;->getAdapterSpecificMetricsMetadata(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getMetricsFlagSearchStatus()Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->metricsFlagSearchStatus:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    return-object v0
.end method

.method public getResult(I)Lcom/amazon/kindle/krx/search/ISearchResult;
    .locals 1

    .line 272
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getRow(I)Lcom/amazon/kindle/krx/search/ISearchResult;

    move-result-object p1

    .line 274
    instance-of v0, p1, Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;

    if-nez v0, :cond_0

    return-object p1

    .line 275
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Trying to access a subsection header like a result"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getResultCount()I
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->subsectionHeaderCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRowCount()I
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 315
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->hasExpander()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->searchAdapter:Lcom/amazon/kindle/krx/search/ISearchAdapter;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/search/ISearchAdapter;->getMaximumSearchResultsBeforeExpander()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getSearchAdapter()Lcom/amazon/kindle/krx/search/ISearchAdapter;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->searchAdapter:Lcom/amazon/kindle/krx/search/ISearchAdapter;

    return-object v0
.end method

.method public getStartPosition()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->startPosition:I

    return v0
.end method

.method public getSubsectionHeader(I)Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;
    .locals 1

    .line 295
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getRow(I)Lcom/amazon/kindle/krx/search/ISearchResult;

    move-result-object p1

    .line 297
    instance-of v0, p1, Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;

    if-eqz v0, :cond_0

    .line 298
    check-cast p1, Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;

    return-object p1

    .line 300
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Trying to access a result like a subsection header"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getViewType(I)I
    .locals 3

    .line 192
    iget v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->startPosition:I

    sub-int v0, p1, v0

    .line 193
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getRowCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->hasExpander()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    .line 201
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getRow(I)Lcom/amazon/kindle/krx/search/ISearchResult;

    move-result-object v0

    .line 202
    instance-of v0, v0, Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    .line 205
    :cond_2
    iget v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->customViewTypeOffset:I

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->searchAdapter:Lcom/amazon/kindle/krx/search/ISearchAdapter;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getResult(I)Lcom/amazon/kindle/krx/search/ISearchResult;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/search/ISearchAdapter;->getViewTypeForResult(Lcom/amazon/kindle/krx/search/ISearchResult;)I

    move-result p1

    add-int v2, v0, p1

    :goto_0
    return v2
.end method

.method isSearchFinished()Z
    .locals 1

    .line 422
    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->isSearchFinished:Z

    return v0
.end method

.method public onBeginSearchResultGroup(Lcom/amazon/kindle/krx/search/ISearchResultGroup;)V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    new-instance v1, Lcom/amazon/kcp/search/enhancedsearch/Section$4;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section$4;-><init>(Lcom/amazon/kcp/search/enhancedsearch/Section;Lcom/amazon/kindle/krx/search/ISearchResultGroup;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->postOnAdapterThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method onClickAtPosition(I)V
    .locals 3

    .line 350
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 371
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getResult(I)Lcom/amazon/kindle/krx/search/ISearchResult;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->searchAdapter:Lcom/amazon/kindle/krx/search/ISearchAdapter;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/search/ISearchAdapter;->onResultClicked(Lcom/amazon/kindle/krx/search/ISearchResult;)Z

    move-result v1

    .line 373
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->recordMetricsForResultClicked(I)V

    .line 374
    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->logSearchResultSelected(Lcom/amazon/kindle/krx/search/ISearchResult;)V

    if-eqz v1, :cond_2

    .line 376
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->notifyCloseActivity()V

    goto :goto_1

    .line 353
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->recordMetricsForExpanderClicked(I)V

    .line 354
    iput-boolean v1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->isExpanded:Z

    .line 355
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getStartPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getRowCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    new-instance v1, Lcom/amazon/kcp/search/enhancedsearch/Section$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section$2;-><init>(Lcom/amazon/kcp/search/enhancedsearch/Section;I)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->postOnAdapterThread(Ljava/lang/Runnable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 364
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->updateSectionStartPositions()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onEndSearchResultGroup()V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    new-instance v1, Lcom/amazon/kcp/search/enhancedsearch/Section$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/enhancedsearch/Section$5;-><init>(Lcom/amazon/kcp/search/enhancedsearch/Section;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->postOnAdapterThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSearchFinished(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 468
    sget-object p1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->INTERRUPTED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->COMPLETE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->metricsFlagSearchStatus:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    .line 471
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/Section$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/enhancedsearch/Section$6;-><init>(Lcom/amazon/kcp/search/enhancedsearch/Section;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->postOnAdapterThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSearchResult(Lcom/amazon/kindle/krx/search/ISearchResult;)V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    new-instance v1, Lcom/amazon/kcp/search/enhancedsearch/Section$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section$3;-><init>(Lcom/amazon/kcp/search/enhancedsearch/Section;Lcom/amazon/kindle/krx/search/ISearchResult;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->postOnAdapterThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method performSearch(Ljava/lang/String;)V
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->didStartSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->isSearchFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->cancelSearch()V

    :cond_0
    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->didStartSearch:Z

    .line 151
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->IN_PROGRESS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->metricsFlagSearchStatus:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    .line 152
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->searchAdapter:Lcom/amazon/kindle/krx/search/ISearchAdapter;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/search/ISearchAdapter;->createSearchTask(Ljava/lang/String;)Lcom/amazon/kindle/krx/search/ISearchTask;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->searchTask:Lcom/amazon/kindle/krx/search/ISearchTask;

    .line 153
    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/search/ISearchTask;->performSearch(Lcom/amazon/kindle/krx/search/IOnSearchListener;)V

    return-void
.end method

.method reset(Z)V
    .locals 2

    .line 82
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->NOT_STARTED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->metricsFlagSearchStatus:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->recyclerViewAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    new-instance v1, Lcom/amazon/kcp/search/enhancedsearch/Section$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section$1;-><init>(Lcom/amazon/kcp/search/enhancedsearch/Section;Z)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->postOnAdapterThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setStartPosition(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/amazon/kcp/search/enhancedsearch/Section;->startPosition:I

    return-void
.end method
