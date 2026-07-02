.class public Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;
.super Lcom/amazon/kcp/search/ReaderSearchAdapter;
.source "ReaderSearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ISearchActivityCloseRequestListener;,
        Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;,
        Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$EmptyAdapterViewHolder;,
        Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionExpanderViewHolder;,
        Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ResultLoaderViewHolder;,
        Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SubSectionHeaderViewHolder;,
        Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionHeaderViewHolder;,
        Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ResultViewHolder;,
        Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/search/ReaderSearchAdapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPES_PER_SECTION:I = 0x3e8


# instance fields
.field private closeRequestListener:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ISearchActivityCloseRequestListener;

.field private final colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

.field private didStartSearch:Z

.field private divider:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;

.field private final mainThreadHandler:Landroid/os/Handler;

.field private metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

.field private perfLoggedFirstResult:Z

.field private final sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/enhancedsearch/Section;",
            ">;"
        }
    .end annotation
.end field

.field subSectionHeaderIndentSize:I

.field subSectionHeaderInitialPadding:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/ISearchAdapter;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;",
            "Lcom/amazon/kindle/krx/ui/ColorMode;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderSearchAdapter;-><init>()V

    const/4 v0, 0x0

    .line 986
    iput-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->perfLoggedFirstResult:Z

    .line 94
    iput-object p3, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->mainThreadHandler:Landroid/os/Handler;

    .line 97
    iput-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->didStartSearch:Z

    .line 99
    iput-object p4, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    .line 101
    new-instance p4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p4, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p4, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->sections:Ljava/util/List;

    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/kindle/krx/search/ISearchAdapter;

    add-int/lit16 v0, v0, 0x3e8

    .line 104
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->sections:Ljava/util/List;

    new-instance v2, Lcom/amazon/kcp/search/enhancedsearch/Section;

    invoke-direct {v2, p0, p4, v0, p3}, Lcom/amazon/kcp/search/enhancedsearch/Section;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;Lcom/amazon/kindle/krx/search/ISearchAdapter;ILcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->setSubsectionDimensions(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;I)Lcom/amazon/kcp/search/enhancedsearch/Section;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getSectionContainingPosition(I)Lcom/amazon/kcp/search/enhancedsearch/Section;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ISearchActivityCloseRequestListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->closeRequestListener:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ISearchActivityCloseRequestListener;

    return-object p0
.end method

.method private getSectionContainingPosition(I)Lcom/amazon/kcp/search/enhancedsearch/Section;
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/enhancedsearch/Section;

    .line 397
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->containsPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 402
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find Section for Position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSubSectionHeaderIndentationForLevel(ILandroid/content/Context;)I
    .locals 0

    .line 527
    iget p2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->subSectionHeaderIndentSize:I

    mul-int p1, p1, p2

    iget p2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->subSectionHeaderInitialPadding:I

    add-int/2addr p1, p2

    return p1
.end method

.method private getViewForResultAtPosition(ILandroid/view/View;Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 598
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getSectionContainingPosition(I)Lcom/amazon/kcp/search/enhancedsearch/Section;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getSearchAdapter()Lcom/amazon/kindle/krx/search/ISearchAdapter;

    move-result-object v0

    .line 600
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getResultForPosition(I)Lcom/amazon/kindle/krx/search/ISearchResult;

    move-result-object p1

    .line 602
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/amazon/kindle/krx/search/ISearchAdapter;->viewForSearchResult(Lcom/amazon/kindle/krx/search/ISearchResult;Landroid/view/View;Landroid/content/Context;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private isClickableViewType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private logSearchStartMetrics()V
    .locals 4

    .line 176
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 179
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->SEARCH_IN_BOOK_TIME_TO_FIRST:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 179
    invoke-static {v1, v2, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->SEARCH_IN_BOOK_TIME_TO_LAST:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v1, v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->logSearchStarted()V

    .line 186
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReaderSearchTimer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    return-void
.end method

.method private onBindViewHolderResult(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ResultViewHolder;I)V
    .locals 3

    .line 565
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 566
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 567
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 569
    invoke-direct {p0, p2, v1, v2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getViewForResultAtPosition(ILandroid/view/View;Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    if-eq v1, p2, :cond_0

    .line 573
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 574
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 577
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$string;->reader_search_list_click_item:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 578
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;->setOnClickDescription(Ljava/lang/String;)V

    return-void
.end method

.method private onBindViewHolderSectionHeader(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionHeaderViewHolder;I)V
    .locals 4

    .line 503
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 505
    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getSectionContainingPosition(I)Lcom/amazon/kcp/search/enhancedsearch/Section;

    move-result-object p2

    .line 506
    invoke-virtual {p2}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getSearchAdapter()Lcom/amazon/kindle/krx/search/ISearchAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/search/ISearchAdapter;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-virtual {p2}, Lcom/amazon/kcp/search/enhancedsearch/Section;->isSearchFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    sget v2, Lcom/amazon/kindle/krl/R$string;->search_section_title_with_count:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    .line 510
    invoke-virtual {p2}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getResultCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 513
    :cond_0
    iget-object p1, p1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionHeaderViewHolder;->titleLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onBindViewHolderSubSectionHeader(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SubSectionHeaderViewHolder;I)V
    .locals 3

    .line 542
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 543
    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getSectionContainingPosition(I)Lcom/amazon/kcp/search/enhancedsearch/Section;

    move-result-object v1

    .line 544
    invoke-virtual {v1, p2}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getSubsectionHeader(I)Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;

    move-result-object p2

    .line 546
    iget-object v1, p1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SubSectionHeaderViewHolder;->titleLabel:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    invoke-virtual {p2}, Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;->getLevel()I

    move-result p2

    invoke-direct {p0, p2, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getSubSectionHeaderIndentationForLevel(ILandroid/content/Context;)I

    move-result p2

    .line 549
    iget-object v0, p1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SubSectionHeaderViewHolder;->titleLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SubSectionHeaderViewHolder;->titleLabel:Landroid/widget/TextView;

    .line 550
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    iget-object p1, p1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SubSectionHeaderViewHolder;->titleLabel:Landroid/widget/TextView;

    .line 551
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result p1

    .line 549
    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method private onCreateViewHolderEmpty(Landroid/view/ViewGroup;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$EmptyAdapterViewHolder;
    .locals 3

    .line 486
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 487
    sget v1, Lcom/amazon/kindle/krl/R$layout;->reader_search_list_no_results:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 489
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$EmptyAdapterViewHolder;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$EmptyAdapterViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private onCreateViewHolderResult(Landroid/view/ViewGroup;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ResultViewHolder;
    .locals 3

    .line 478
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 479
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    new-instance p1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ResultViewHolder;

    invoke-direct {p1, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ResultViewHolder;-><init>(Landroid/widget/LinearLayout;)V

    return-object p1
.end method

.method private onCreateViewHolderSectionExpander(Landroid/view/ViewGroup;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionExpanderViewHolder;
    .locals 3

    .line 463
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 464
    sget v1, Lcom/amazon/kindle/krl/R$layout;->reader_search_list_expander:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 466
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionExpanderViewHolder;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionExpanderViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private onCreateViewHolderSectionHeader(Landroid/view/ViewGroup;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionHeaderViewHolder;
    .locals 3

    .line 416
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 417
    sget v1, Lcom/amazon/kindle/krl/R$layout;->reader_search_list_section_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 418
    new-instance v1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionHeaderViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    invoke-direct {v1, v0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionHeaderViewHolder;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method private onCreateViewHolderSectionLoading(Landroid/view/ViewGroup;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ResultLoaderViewHolder;
    .locals 3

    .line 448
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 449
    sget v1, Lcom/amazon/kindle/krl/R$layout;->reader_search_list_spinner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 451
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ResultLoaderViewHolder;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ResultLoaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private onCreateViewHolderSubSectionHeader(Landroid/view/ViewGroup;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SubSectionHeaderViewHolder;
    .locals 3

    .line 432
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 433
    sget v1, Lcom/amazon/kindle/krl/R$layout;->reader_search_list_subsection_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 434
    new-instance v1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SubSectionHeaderViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    invoke-direct {v1, v0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SubSectionHeaderViewHolder;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method private updateRecentSearches(Ljava/lang/String;)V
    .locals 4

    .line 158
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 160
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->getInstance()Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 162
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 163
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v1}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->getCurrentTimeStamp()J

    move-result-wide v2

    .line 163
    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->insertUpdateTerm(Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_1

    .line 165
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 166
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v1}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->getCurrentTimeStamp()J

    move-result-wide v2

    .line 166
    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->insertUpdateTerm(Ljava/lang/String;Ljava/lang/String;J)Z

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public cancelSearch()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/enhancedsearch/Section;

    .line 194
    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->cancelSearch()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->didStartSearch:Z

    return-void
.end method

.method public didStartSearch()Z
    .locals 1

    .line 624
    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->didStartSearch:Z

    return v0
.end method

.method public bridge synthetic getDividerItemDecoration(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getDividerItemDecoration(Landroid/content/Context;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;

    move-result-object p1

    return-object p1
.end method

.method public getDividerItemDecoration(Landroid/content/Context;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->divider:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->divider:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->divider:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DividerItemDecoration;

    return-object p1
.end method

.method getHandler()Landroid/os/Handler;
    .locals 2

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/search/enhancedsearch/Section;

    .line 327
    invoke-virtual {v2}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getRowCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 330
    invoke-virtual {v2}, Lcom/amazon/kcp/search/enhancedsearch/Section;->isSearchFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->didStartSearch:Z

    if-eqz v0, :cond_3

    .line 336
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->isSearchFinished()Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 352
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->isSearchFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getSectionsResultCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    .line 358
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getSectionContainingPosition(I)Lcom/amazon/kcp/search/enhancedsearch/Section;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getViewType(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method getMetricsSearchStatus()Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;
    .locals 3

    .line 966
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/enhancedsearch/Section;

    .line 968
    sget-object v2, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$3;->$SwitchMap$com$amazon$kcp$search$enhancedsearch$SearchMetricsDelegate$SearchStatus:[I

    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getMetricsFlagSearchStatus()Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 974
    :cond_0
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->NOT_STARTED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    return-object v0

    .line 972
    :cond_1
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->IN_PROGRESS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    return-object v0

    .line 970
    :cond_2
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->INTERRUPTED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    return-object v0

    .line 979
    :cond_3
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;->COMPLETE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    return-object v0
.end method

.method getResultForPosition(I)Lcom/amazon/kindle/krx/search/ISearchResult;
    .locals 1

    .line 615
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getSectionContainingPosition(I)Lcom/amazon/kcp/search/enhancedsearch/Section;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getResult(I)Lcom/amazon/kindle/krx/search/ISearchResult;

    move-result-object p1

    return-object p1
.end method

.method public getSectionsResultCount()I
    .locals 3

    .line 648
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/search/enhancedsearch/Section;

    .line 649
    invoke-virtual {v2}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getResultCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isSearchFinished()Z
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/enhancedsearch/Section;

    .line 634
    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->isSearchFinished()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method logPerfMarkerReceivedResult()V
    .locals 3

    .line 989
    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->perfLoggedFirstResult:Z

    if-nez v0, :cond_1

    .line 990
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 991
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 993
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->SEARCH_IN_BOOK_TIME_TO_FIRST:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 994
    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    .line 995
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 993
    invoke-static {v1, v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    .line 996
    iput-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->perfLoggedFirstResult:Z

    :cond_1
    return-void
.end method

.method logPerfMarkerSectionFinished()V
    .locals 3

    .line 1002
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->isSearchFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1003
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1004
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1006
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->SEARCH_IN_BOOK_TIME_TO_LAST:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 1007
    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 1006
    invoke-static {v1, v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1011
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getSectionsResultCount()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->logSearchResultsDisplayed(I)V

    .line 1012
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReaderSearchTimer"

    const-string v2, "ReaderSearchActivityTimer"

    invoke-virtual {v0, v2, v1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method notifyCloseActivity()V
    .locals 1

    .line 685
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$2;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->postOnAdapterThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 302
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 317
    check-cast p1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ResultViewHolder;

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->onBindViewHolderResult(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ResultViewHolder;I)V

    goto :goto_0

    .line 313
    :cond_0
    check-cast p1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SubSectionHeaderViewHolder;

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->onBindViewHolderSubSectionHeader(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SubSectionHeaderViewHolder;I)V

    goto :goto_0

    .line 309
    :cond_1
    check-cast p1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionHeaderViewHolder;

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->onBindViewHolderSectionHeader(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionHeaderViewHolder;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 278
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->onCreateViewHolderResult(Landroid/view/ViewGroup;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ResultViewHolder;

    move-result-object p1

    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->onCreateViewHolderEmpty(Landroid/view/ViewGroup;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$EmptyAdapterViewHolder;

    move-result-object p1

    goto :goto_0

    .line 272
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->onCreateViewHolderSubSectionHeader(Landroid/view/ViewGroup;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SubSectionHeaderViewHolder;

    move-result-object p1

    goto :goto_0

    .line 275
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->onCreateViewHolderSectionLoading(Landroid/view/ViewGroup;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ResultLoaderViewHolder;

    move-result-object p1

    goto :goto_0

    .line 266
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->onCreateViewHolderSectionExpander(Landroid/view/ViewGroup;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionExpanderViewHolder;

    move-result-object p1

    goto :goto_0

    .line 269
    :cond_4
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->onCreateViewHolderSectionHeader(Landroid/view/ViewGroup;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$SectionHeaderViewHolder;

    move-result-object p1

    .line 282
    :goto_0
    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->isClickableViewType(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 283
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$1;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$DescribableViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-object p1
.end method

.method public performSearch(Ljava/lang/String;)V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->cancelSearch()V

    .line 137
    invoke-virtual {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->resetSearch()V

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->didStartSearch:Z

    .line 140
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->logSearchStartMetrics()V

    .line 143
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isRecentSearchTermsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->updateRecentSearches(Ljava/lang/String;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/enhancedsearch/Section;

    .line 148
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->performSearch(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method postOnAdapterThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method recordMetricStateMetadataForSections(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V
    .locals 5

    .line 950
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/enhancedsearch/Section;

    .line 951
    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getSearchAdapter()Lcom/amazon/kindle/krx/search/ISearchAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/search/ISearchAdapter;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getResultCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 952
    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getMetricsFlagSearchStatus()Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;

    move-result-object v1

    .line 951
    invoke-virtual {v2, p1, v3, v4, v1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->recordProviderStateForAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;Ljava/lang/String;Ljava/lang/Integer;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$SearchStatus;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method resetSearch()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/enhancedsearch/Section;

    .line 204
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/search/enhancedsearch/Section;->reset(Z)V

    goto :goto_0

    .line 206
    :cond_0
    iput-boolean v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->perfLoggedFirstResult:Z

    return-void
.end method

.method public setActivityCloseRequestListener(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ISearchActivityCloseRequestListener;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->closeRequestListener:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ISearchActivityCloseRequestListener;

    return-void
.end method

.method setSubsectionDimensions(Landroid/content/Context;)V
    .locals 2

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->reader_search_list_item_padding_horiz:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->subSectionHeaderInitialPadding:I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->reader_search_list_subsection_indentation:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->subSectionHeaderIndentSize:I

    return-void
.end method

.method updateSectionStartPositions()V
    .locals 3

    .line 662
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/search/enhancedsearch/Section;

    .line 663
    invoke-virtual {v2, v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->setStartPosition(I)V

    .line 664
    invoke-virtual {v2}, Lcom/amazon/kcp/search/enhancedsearch/Section;->getRowCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateSectionsWithDynamicSearchResults(Ljava/lang/String;)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/enhancedsearch/Section;

    .line 247
    invoke-virtual {v1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->areSearchResultsDynamic()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 249
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/search/enhancedsearch/Section;->reset(Z)V

    .line 250
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/search/enhancedsearch/Section;->performSearch(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
