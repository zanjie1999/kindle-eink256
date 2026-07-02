.class public Lcom/amazon/kcp/search/BookReaderSearchActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "BookReaderSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/BookReaderSearchActivity$SearchBarQueryListener;
    }
.end annotation


# static fields
.field private static final COUNT_KEY:Ljava/lang/String; = "count"

.field private static final DEFAULT_MAX_NUM_RESULTS:I = 0x1f4

.field private static final FINISH_DELAY_MS:I = 0x3e8

.field private static final INDEXING_COMPLETE_KEY:Ljava/lang/String; = "indexingComplete"

.field public static final MAX_NUM_RESULTS_KEY:Ljava/lang/String; = "maxResults"

.field private static final READER_SEARCH_TIMER:Ljava/lang/String; = "ReaderSearchTimer"

.field public static final RETURN_FROM_SEARCH:Ljava/lang/String; = "ReturnFromSearch"

.field private static final SEARCH_OPENED:Ljava/lang/String; = "SearchOpened"

.field private static final SEARCH_RESULTS_DISPLAYED:Ljava/lang/String; = "SearchResultsDisplayed"

.field private static final SEARCH_RESULT_SELECTED:Ljava/lang/String; = "SearchResultSelected"

.field private static final SEARCH_STARTED:Ljava/lang/String; = "SearchStarted"

.field private static final TAG:Ljava/lang/String;

.field private static final TARGET_KEY:Ljava/lang/String; = "target"

.field private static final TEXTBOOK_SEARCH_PAGE_TYPE:Ljava/lang/String; = "TextbookSearch"

.field private static final TIME_KEY:Ljava/lang/String; = "time"


# instance fields
.field private actionBar:Landroidx/appcompat/app/ActionBar;

.field private actionBarSearchView:Landroid/widget/SearchView;

.field private addedChapterHeaderKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected book:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private maxNumResults:I

.field protected progressBar:Landroid/widget/ProgressBar;

.field protected query:Ljava/lang/String;

.field private queryListener:Lcom/amazon/kcp/search/BookReaderSearchActivity$SearchBarQueryListener;

.field protected resultList:Landroid/widget/ListView;

.field protected resultsAdapter:Lcom/amazon/kcp/search/BookSearchResultsAdapter;

.field private final searchListener:Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;

.field private searchStartedTime:J

.field protected titleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    const/16 v0, 0x1f4

    .line 108
    iput v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->maxNumResults:I

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->searchStartedTime:J

    .line 113
    new-instance v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$SearchBarQueryListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/search/BookReaderSearchActivity$SearchBarQueryListener;-><init>(Lcom/amazon/kcp/search/BookReaderSearchActivity;Lcom/amazon/kcp/search/BookReaderSearchActivity$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->queryListener:Lcom/amazon/kcp/search/BookReaderSearchActivity$SearchBarQueryListener;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->addedChapterHeaderKeys:Ljava/util/Set;

    .line 119
    new-instance v0, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity$1;-><init>(Lcom/amazon/kcp/search/BookReaderSearchActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->searchListener:Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/BookReaderSearchActivity;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->maxNumResults:I

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/search/BookReaderSearchActivity;)Landroid/widget/SearchView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBarSearchView:Landroid/widget/SearchView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/search/BookReaderSearchActivity;)Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->searchListener:Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;

    return-object p0
.end method

.method private expandSearch()V
    .locals 3

    .line 773
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 774
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 776
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBarSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBarSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 781
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method private getQueryEndIndexInTitle(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 504
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->getQueryStartIndexInTitle(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private getQueryStartIndexInTitle(Ljava/lang/String;)I
    .locals 1

    const-string v0, "\""

    .line 517
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method protected addChapterHeader(Lcom/amazon/android/docviewer/ITOCItem;)V
    .locals 1

    .line 565
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->getChapterTitleKey(Lcom/amazon/android/docviewer/ITOCItem;)Ljava/lang/String;

    move-result-object p1

    .line 566
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->addedChapterHeaderKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addSearchResult(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 525
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->handleChapterResult(Lcom/amazon/android/docviewer/BookSearchResult;)V

    .line 527
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/BookSearchResultsAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->addResult(Lcom/amazon/android/docviewer/BookSearchResult;)V

    .line 530
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->SEARCH_IN_BOOK_TIME_TO_FIRST:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected animateProgressIndicator(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p1, 0x10a0000

    goto :goto_0

    :cond_0
    const p1, 0x10a0001

    .line 712
    :goto_0
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    const/4 v0, 0x1

    .line 713
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 714
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected containsChapterHeader(Lcom/amazon/android/docviewer/ITOCItem;)Z
    .locals 1

    .line 575
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->getChapterTitleKey(Lcom/amazon/android/docviewer/ITOCItem;)Ljava/lang/String;

    move-result-object p1

    .line 576
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->addedChapterHeaderKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected getChapterHeaderCount()I
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->addedChapterHeaderKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method protected getChapterTitleKey(Lcom/amazon/android/docviewer/ITOCItem;)Ljava/lang/String;
    .locals 2

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public gotoResultLocation(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 406
    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getPosition()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "target"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TextbookSearch"

    const-string v2, "SearchResultSelected"

    .line 408
    invoke-static {v1, v2, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 412
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IGoto;->gotoLocation()V

    .line 414
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->postGotoResultLocation()V

    return-void
.end method

.method protected handleChapterResult(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 4

    .line 534
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOCForSearch()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItemAtPosition(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 541
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->containsChapterHeader(Lcom/amazon/android/docviewer/ITOCItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->addChapterHeader(Lcom/amazon/android/docviewer/ITOCItem;)V

    .line 543
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/BookSearchResultsAdapter;

    new-instance v1, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, v3}, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->addResult(Lcom/amazon/android/docviewer/BookSearchResult;)V

    :cond_0
    return-void
.end method

.method protected initViewAndListener()V
    .locals 5

    .line 244
    sget v0, Lcom/amazon/kindle/krl/R$layout;->reader_search_screen:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 245
    sget v0, Lcom/amazon/kindle/krl/R$id;->sub_title_text_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->titleView:Landroid/widget/TextView;

    .line 248
    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0, v1}, Lcom/amazon/kcp/font/FontUtils;->setTypefaceIfNeeded(Landroid/widget/TextView;Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    .line 250
    sget v0, Lcom/amazon/kindle/krl/R$id;->title_progress_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 252
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->newResultsAdapter()Lcom/amazon/kcp/search/BookSearchResultsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/BookSearchResultsAdapter;

    .line 253
    sget v0, Lcom/amazon/kindle/krl/R$id;->list_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->resultList:Landroid/widget/ListView;

    .line 254
    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/BookSearchResultsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->resultList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 257
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->preSearchSetUp()V

    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBarSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "android:id/search_src_text"

    invoke-virtual {v1, v3, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0, v1}, Lcom/amazon/kcp/font/FontUtils;->setTypefaceIfNeeded(Landroid/widget/TextView;Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    .line 263
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookSearchController()Lcom/amazon/kcp/search/IBookSearchController;

    move-result-object v0

    .line 265
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->isSearching()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-interface {v0}, Lcom/amazon/kcp/search/IBookSearchController;->getMaxProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 270
    iget-object v2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-interface {v0}, Lcom/amazon/kcp/search/IBookSearchController;->getCurrentProgress()J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 271
    iget-object v2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-interface {v0}, Lcom/amazon/kcp/search/IBookSearchController;->getCurrentQuery()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->populateResultsFromCache(Ljava/lang/String;)Z

    .line 276
    iget-object v2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->searchListener:Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;

    invoke-interface {v0}, Lcom/amazon/kcp/search/IBookSearchController;->isIndexAvailable()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;->onSearchStarted(Lcom/amazon/kcp/search/IBookSearchController;Z)V

    const/4 v2, 0x1

    .line 277
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->animateProgressIndicator(Z)V

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->searchListener:Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;

    invoke-interface {v0, v2}, Lcom/amazon/kcp/search/IBookSearchController;->addBookSearchListener(Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;)V

    if-nez v1, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->startSearch()V

    :cond_2
    return-void
.end method

.method protected isSearching()Z
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookSearchController()Lcom/amazon/kcp/search/IBookSearchController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/search/IBookSearchController;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected newResultsAdapter()Lcom/amazon/kcp/search/BookSearchResultsAdapter;
    .locals 3

    .line 400
    new-instance v0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;

    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;-><init>(Lcom/amazon/kcp/search/BookReaderSearchActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Z)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 213
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 215
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->setRequestedOrientation(I)V

    .line 216
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBrightnessManager()Lcom/amazon/kindle/brightness/IBrightnessManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/brightness/IBrightnessManager;->applyScreenBrightness(Landroid/view/Window;)Z

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "maxResults"

    const/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->maxNumResults:I

    .line 220
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p1, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-nez p1, :cond_0

    .line 223
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 227
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 228
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->SEARCH_OPENED:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 229
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "TextbookSearch"

    const-string v0, "SearchOpened"

    .line 230
    invoke-static {p1, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    .line 235
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->initViewAndListener()V

    .line 237
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->SEARCH_OPENED:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 788
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_1

    .line 789
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$menu;->reader_search_actionbar_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 791
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 792
    :goto_0
    sget v2, Lcom/amazon/kindle/krl/R$id;->action_search:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    xor-int/2addr v0, v1

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 795
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookSearchController()Lcom/amazon/kcp/search/IBookSearchController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->searchListener:Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/search/IBookSearchController;->removeBookSearchListener(Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;)V

    .line 292
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    .line 293
    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 292
    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 294
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 330
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/BookSearchResult;

    .line 332
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->shouldNavigateToSearchItem(Lcom/amazon/android/docviewer/BookSearchResult;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->gotoResultLocation(Lcom/amazon/android/docviewer/BookSearchResult;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->addedChapterHeaderKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 301
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 304
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->stopSearch()V

    .line 307
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 309
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->startSearch()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 800
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 801
    iget-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookSearchController()Lcom/amazon/kcp/search/IBookSearchController;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->searchListener:Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/search/IBookSearchController;->removeBookSearchListener(Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;)V

    .line 802
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 804
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/amazon/kindle/krl/R$id;->action_search:I

    if-ne p1, v0, :cond_1

    .line 805
    invoke-direct {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->expandSearch()V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onSearchRequested()Z
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->expandSearch()V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->stopSearch()V

    .line 320
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->titleView:Landroid/widget/TextView;

    sget v2, Lcom/amazon/kindle/krl/R$string;->reader_search_stopped:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    :goto_0
    return v1
.end method

.method protected onSearchTerminated()V
    .locals 6

    .line 721
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReaderSearchTimer"

    const-string v2, "ReaderSearchActivityTimer"

    invoke-virtual {v0, v2, v1, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->searchStartedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 724
    iput-wide v2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->searchStartedTime:J

    .line 726
    iget-object v2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/BookSearchResultsAdapter;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->getResultCount()I

    move-result v2

    .line 728
    iget-object v3, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 729
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 731
    iget-object v4, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSearchIndexer()Lcom/amazon/kcp/search/IBookSearchIndexer;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSearchIndexer()Lcom/amazon/kcp/search/IBookSearchIndexer;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/kcp/search/IBookSearchIndexer;->isIndexAvailable(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "1"

    goto :goto_0

    :cond_0
    const-string v4, "0"

    :goto_0
    const-string v5, "indexingComplete"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "count"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TextbookSearch"

    const-string v1, "SearchResultsDisplayed"

    .line 734
    invoke-static {v0, v1, v3}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 737
    :cond_1
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->updateResultsCountText(I)V

    const/4 v0, 0x0

    .line 741
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->animateProgressIndicator(Z)V

    return-void
.end method

.method protected populateResultsFromCache(Ljava/lang/String;)Z
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookSearchController()Lcom/amazon/kcp/search/IBookSearchController;

    move-result-object v0

    .line 609
    invoke-interface {v0, p1}, Lcom/amazon/kcp/search/IBookSearchController;->getCachedSearchResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 612
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/BookSearchResultsAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->clear()V

    .line 613
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/BookSearchResult;

    .line 614
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->addSearchResult(Lcom/amazon/android/docviewer/BookSearchResult;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected postGotoResultLocation()V
    .locals 3

    .line 419
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 421
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 423
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookSearchController()Lcom/amazon/kcp/search/IBookSearchController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->searchListener:Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/search/IBookSearchController;->removeBookSearchListener(Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;)V

    .line 424
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected preSearchSetUp()V
    .locals 4

    .line 354
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 356
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 357
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 358
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 359
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    sget v1, Lcom/amazon/kindle/krl/R$layout;->reader_search_view:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 362
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBarSearchView:Landroid/widget/SearchView;

    .line 363
    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    const-string v0, "search"

    .line 365
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 366
    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBarSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 367
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBarSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 370
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->expandSearch()V

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 378
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBarSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->queryListener:Lcom/amazon/kcp/search/BookReaderSearchActivity$SearchBarQueryListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 381
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->actionBarSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/amazon/kcp/search/BookReaderSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity$2;-><init>(Lcom/amazon/kcp/search/BookReaderSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    return-void
.end method

.method public readyToDisplayResult()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public requiresRegistration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setOneResultText(Ljava/lang/String;)V
    .locals 3

    .line 465
    sget v0, Lcom/amazon/kindle/krl/R$string;->reader_search_result:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->setSearchTitleText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setResultsText(ILjava/lang/String;)V
    .locals 3

    .line 446
    sget v0, Lcom/amazon/kindle/krl/R$string;->reader_search_results:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->setSearchTitleText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setSearchTitleText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 476
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->setSearchTitleText(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected setSearchTitleText(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 486
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->getQueryStartIndexInTitle(Ljava/lang/String;)I

    move-result v0

    .line 487
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->getQueryEndIndexInTitle(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 489
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, p3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 490
    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    add-int/lit8 p2, p2, 0x1

    const/16 p1, 0x21

    .line 491
    invoke-virtual {p3, v1, v0, p2, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 492
    iget-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setSearchingText(Ljava/lang/String;)V
    .locals 3

    .line 436
    sget v0, Lcom/amazon/kindle/krl/R$string;->reader_searching:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 437
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->setSearchTitleText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setTooManyResultsText(ILjava/lang/String;)V
    .locals 3

    .line 456
    sget v0, Lcom/amazon/kindle/krl/R$string;->reader_search_results_too_many:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 457
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->setSearchTitleText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected shouldDisplayLocation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected shouldNavigateToSearchItem(Lcom/amazon/android/docviewer/BookSearchResult;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected startSearch()V
    .locals 4

    .line 626
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 627
    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "query"

    .line 632
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "search term: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->normalizeSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    .line 636
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    sget-object v0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->TAG:Ljava/lang/String;

    const-string v1, "The search term in the intent was not found!"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->search(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 647
    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(I)V

    .line 654
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/kcp/search/BookReaderSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity$3;-><init>(Lcom/amazon/kcp/search/BookReaderSearchActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    if-nez v0, :cond_3

    return-void

    .line 669
    :cond_3
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->SEARCH_IN_BOOK_TIME_TO_FIRST:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 671
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 672
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 674
    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSearchIndexer()Lcom/amazon/kcp/search/IBookSearchIndexer;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getSearchIndexer()Lcom/amazon/kcp/search/IBookSearchIndexer;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kcp/search/IBookSearchIndexer;->isIndexAvailable(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "1"

    goto :goto_0

    :cond_4
    const-string v1, "0"

    :goto_0
    const-string v2, "indexingComplete"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TextbookSearch"

    const-string v2, "SearchStarted"

    .line 675
    invoke-static {v1, v2, v0}, Lcom/amazon/metrics/ClickstreamMetrics;->recordEventWithMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 679
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->populateResultsFromCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 680
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->onSearchTerminated()V

    return-void

    .line 685
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amazon/kcp/search/AndroidSearchRecentSuggestionsProvider;->saveToSearchHistory(Landroid/content/Context;Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->updateViewsForSearchStart()V

    .line 689
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/BookSearchResultsAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->clear()V

    .line 693
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "ReaderSearchTimer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 694
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->searchStartedTime:J

    .line 696
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookSearchController()Lcom/amazon/kcp/search/IBookSearchController;

    move-result-object v0

    .line 697
    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/search/IBookSearchController;->startSearch(Ljava/lang/String;)V

    return-void

    .line 628
    :cond_7
    :goto_1
    sget-object v0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->TAG:Ljava/lang/String;

    const-string v1, "No current book or no search action added to intent for Reader Search!"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected stopSearch()V
    .locals 1

    .line 553
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookSearchController()Lcom/amazon/kcp/search/IBookSearchController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/search/IBookSearchController;->stopSearch()V

    :cond_0
    return-void
.end method

.method protected updateResultsCountText(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 746
    iget-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->setOneResultText(Ljava/lang/String;)V

    goto :goto_0

    .line 747
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->maxNumResults:I

    if-lt p1, v0, :cond_1

    .line 748
    iget-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->setTooManyResultsText(ILjava/lang/String;)V

    goto :goto_0

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->setResultsText(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected updateViewsForSearchStart()V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->query:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->setSearchingText(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 703
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->animateProgressIndicator(Z)V

    return-void
.end method

.method protected wasCanceled()Z
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookSearchController()Lcom/amazon/kcp/search/IBookSearchController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/search/IBookSearchController;->wasCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
