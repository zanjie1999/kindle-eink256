.class public Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "ReaderSearchActivity.java"

# interfaces
.implements Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ISearchActivityCloseRequestListener;


# static fields
.field private static final ACCESSIBILITY_RECENT_SEARCHES_AVAILABLE_DELAY:I = 0x1f4

.field private static final ANIM_SHADE_ALPHA_INVISIBLE:F = 0.0f

.field private static final ANIM_SHADE_ALPHA_VISIBLE:F = 0.65f

.field private static final ANIM_SHADE_DURATION:I = 0xfa

.field public static final INTENT_CACHE_KEY:Ljava/lang/String; = "cache_key"

.field private static final LAST_SEARCH_IN_BOOK_TIME_KEY:Ljava/lang/String; = "lastSearchInBookTimeKey"

.field public static final READER_SEARCH_ACTIVITY_SHARED_PREFERENCES:Ljava/lang/String; = "readerSearchActivitySharedPreferences"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoCompleteAdapter:Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;

.field private autoCompleteDataManager:Lcom/amazon/android/autocomplete/AutoCompleteDataManager;

.field private autoCompleteSuggestionItemClickListener:Lcom/amazon/kcp/search/OnSearchTermClickListener;

.field cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

.field private currentAdapter:Lcom/amazon/kcp/search/ReaderSearchAdapter;

.field private currentBook:Lcom/amazon/kindle/krx/content/IBook;

.field private currentBookId:Ljava/lang/String;

.field private final defaultContainerPadding:Landroid/graphics/Rect;

.field private dimView:Landroid/view/View;

.field private dimViewOnClickListener:Landroid/view/View$OnClickListener;

.field private hasNoRecentSearchTerms:Z

.field private isCacheSetText:Z

.field private isFirstTimeEntry:Z

.field private isRecentSearchClicked:Z

.field private isSuggestionClicked:Z

.field private lastSearchIsOverTHours:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private metricCharsTyped:Ljava/lang/Integer;

.field private metricFlagIsFocusFromXButton:Z

.field private metricFlagIsSearchFromSelection:Z

.field private metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

.field private mostRecentSearchTerm:Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;

.field private perfLoggedSearchOpened:Z

.field private preserveLastTimeEntry:Z

.field private recentSearchAdapter:Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;

.field private recentSearchDatabaseTermDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;",
            ">;"
        }
    .end annotation
.end field

.field private recentSearchDatabaseTermSource:Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;

.field private recentSearchEmptyView:Landroid/view/View;

.field private recentSearchHeaderView:Landroid/view/View;

.field private recentSearchHeaderViewOnTouchListener:Landroid/view/View$OnClickListener;

.field private recentSearchViewOnTouchListener:Lcom/amazon/kcp/search/OnSearchTermClickListener;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private searchFieldInput:Ljava/lang/String;

.field private searchResultContainer:Landroid/view/View;

.field private searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

.field private searchView:Landroidx/appcompat/widget/SearchView;

.field private searchViewFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private searchViewQueryTextListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

.field private wereSuggestionsAvailableOnSearch:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-class v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchDatabaseTermDataList:Ljava/util/List;

    .line 165
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->defaultContainerPadding:Landroid/graphics/Rect;

    .line 774
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$5;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchViewQueryTextListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    .line 852
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$6;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->autoCompleteSuggestionItemClickListener:Lcom/amazon/kcp/search/OnSearchTermClickListener;

    .line 875
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$7;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$7;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchViewFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 903
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$8;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$8;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->dimViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 913
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$9;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$9;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchViewOnTouchListener:Lcom/amazon/kcp/search/OnSearchTermClickListener;

    .line 943
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$10;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$10;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchHeaderViewOnTouchListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 953
    iput-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->perfLoggedSearchOpened:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricFlagIsFocusFromXButton:Z

    return p0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricFlagIsFocusFromXButton:Z

    return p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Ljava/lang/Integer;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricCharsTyped:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricCharsTyped:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricFlagIsSearchFromSelection:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricFlagIsSearchFromSelection:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchAdapter:Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->showSearchResults()V

    return-void
.end method

.method static synthetic access$1400(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->displayUpdatedRecentSearches()V

    return-void
.end method

.method static synthetic access$1500(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->autoCompleteAdapter:Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isSuggestionClicked:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isSuggestionClicked:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isRecentSearchClicked:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isRecentSearchClicked:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isCacheSetText:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isCacheSetText:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchFieldInput:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchFieldInput:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->performAutoComplete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/ReaderSearchAdapter;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentAdapter:Lcom/amazon/kcp/search/ReaderSearchAdapter;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->dimResults(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->wereSuggestionsAvailableOnSearch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/android/autocomplete/AutoCompleteDataManager;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->autoCompleteDataManager:Lcom/amazon/android/autocomplete/AutoCompleteDataManager;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Lcom/amazon/android/autocomplete/AutoCompleteDataManager;)Lcom/amazon/android/autocomplete/AutoCompleteDataManager;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->autoCompleteDataManager:Lcom/amazon/android/autocomplete/AutoCompleteDataManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchDatabaseTermSource:Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBookId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Ljava/util/List;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchDatabaseTermDataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->showRecentSearchViews(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)Landroid/view/View;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->dimView:Landroid/view/View;

    return-object p0
.end method

.method public static clearCache()V
    .locals 0

    .line 182
    invoke-static {}, Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;->clearCaches()V

    return-void
.end method

.method private dimResults(Z)V
    .locals 5

    .line 699
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->dimView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 700
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    if-eqz p1, :cond_0

    const v1, 0x3f266666    # 0.65f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 702
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->dimView:Landroid/view/View;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    const-string v0, "alpha"

    invoke-static {v2, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 703
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 704
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 705
    new-instance v1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$4;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 723
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    if-nez p1, :cond_1

    .line 725
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    if-eqz p1, :cond_1

    .line 726
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method

.method private displayUpdatedRecentSearches()V
    .locals 2

    .line 735
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchDatabaseTermSource:Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;

    .line 736
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBookId:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->getSearchTermsForBookId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchDatabaseTermDataList:Ljava/util/List;

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 743
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->showRecentSearch()V

    :cond_1
    return-void
.end method

.method private getSearchAdapters(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/search/ISearchAdapter;",
            ">;"
        }
    .end annotation

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 542
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 545
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSearchManager()Lcom/amazon/kindle/krx/search/IReaderSearchManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/search/IReaderSearchManager;->getSearchProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    move-result-object v1

    .line 547
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    .line 548
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/search/ISearchAdapter;

    if-eqz v1, :cond_0

    .line 550
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private hideRecentSearchViews()V
    .locals 2

    .line 1074
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 1075
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1080
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private logPerfSearchOpened(Lcom/amazon/kindle/krx/content/IBook;Z)V
    .locals 1

    .line 964
    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->perfLoggedSearchOpened:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 965
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->SEARCH_OPENED:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    .line 969
    iput-boolean p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->perfLoggedSearchOpened:Z

    :cond_0
    return-void
.end method

.method private performAutoComplete(Ljava/lang/String;)V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->autoCompleteAdapter:Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 758
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AUTO_COMPLETE_SHOW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 759
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->autoCompleteAdapter:Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->performAutoComplete(Ljava/lang/String;)V

    .line 762
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->autoCompleteAdapter:Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 763
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->wereSuggestionsAvailableOnSearch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 765
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->wereSuggestionsAvailableOnSearch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 768
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->showAutoComplete()V

    .line 770
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AUTO_COMPLETE_SHOW:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private preserveEnteredQuery()V
    .locals 2

    .line 1007
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchAdapter:Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_0

    .line 1010
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1011
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->setQuery(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private saveLastSearchInBookTime()V
    .locals 4

    .line 1212
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/EventSettingsController;

    move-result-object v0

    .line 1213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/EventSettingsController;->setLastSearchTime(J)V

    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving last search performed time in shared preferences with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    invoke-virtual {v0}, Lcom/amazon/kcp/application/EventSettingsController;->getLastSearchTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private setNewRecyclerViewAdapter(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 3

    .line 1177
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->getSearchAdapters(Lcom/amazon/kindle/krx/content/IBook;)Ljava/util/List;

    move-result-object v0

    .line 1178
    new-instance v1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    invoke-direct {v1, v0, p0, v2, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    iput-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    .line 1179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/search/ISearchAdapter;

    .line 1180
    invoke-interface {v0}, Lcom/amazon/kindle/krx/search/ISearchAdapter;->prepareForSearch()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSearchQuery(Landroid/content/Intent;)V
    .locals 5

    .line 392
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_2

    const-string v0, "query"

    .line 393
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 396
    iput-boolean v3, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isCacheSetText:Z

    .line 397
    iput-boolean v3, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricFlagIsSearchFromSelection:Z

    .line 398
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 399
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 400
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    goto :goto_1

    .line 401
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getQuery()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getQuery()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 402
    iput-boolean v3, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isCacheSetText:Z

    .line 403
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 404
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    :cond_2
    :goto_1
    return-void
.end method

.method private setupActionBar(Landroidx/appcompat/app/ActionBar;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 599
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 v0, 0x1

    .line 600
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 601
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setupAutoComplete()V
    .locals 4

    .line 1222
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 1223
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1224
    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1225
    invoke-static {}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteUtils;->isAutoCompleteEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1226
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteUtils;->bookSupportsAutoComplete(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1227
    new-instance v2, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;

    iget-object v3, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {v2, v3}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;-><init>(Lcom/amazon/kindle/krx/content/IBook;)V

    iput-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->autoCompleteAdapter:Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;

    .line 1228
    iget-object v3, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->autoCompleteSuggestionItemClickListener:Lcom/amazon/kcp/search/OnSearchTermClickListener;

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;->setOnSearchTermClickListener(Lcom/amazon/kcp/search/OnSearchTermClickListener;)V

    .line 1229
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v2

    new-instance v3, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;

    invoke-direct {v3, p0, v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$13;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private setupRecentSearch()V
    .locals 5

    .line 1252
    sget v0, Lcom/amazon/kindle/krl/R$id;->recent_search_terms_empty_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchEmptyView:Landroid/view/View;

    .line 1253
    sget v0, Lcom/amazon/kindle/krl/R$id;->recent_search_terms_header_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchHeaderView:Landroid/view/View;

    .line 1255
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isRecentSearchTermsEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1256
    invoke-static {}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->getInstance()Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchDatabaseTermSource:Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;

    .line 1257
    new-instance v0, Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;-><init>(Lcom/amazon/kindle/krx/content/IBook;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchAdapter:Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;

    .line 1259
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBookId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchDatabaseTermSource:Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->getSearchTermsForBookId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchDatabaseTermDataList:Ljava/util/List;

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchDatabaseTermDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1265
    iput-boolean v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->hasNoRecentSearchTerms:Z

    goto :goto_0

    .line 1267
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchDatabaseTermDataList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->mostRecentSearchTerm:Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;

    .line 1269
    invoke-virtual {v0}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isOverTHours(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->lastSearchIsOverTHours:Z

    .line 1273
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 1274
    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->mostRecentSearchTerm:Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;->getTerm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_2

    if-eqz v0, :cond_5

    .line 1275
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 1286
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getRecyclerViewAdapter()Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    .line 1287
    invoke-virtual {v2}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    .line 1288
    invoke-virtual {v2}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getRecyclerViewAdapter()Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getItemCount()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    .line 1289
    invoke-virtual {v2}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getRecyclerViewAdapter()Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->isSearchFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1290
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1292
    iput-boolean v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isFirstTimeEntry:Z

    .line 1293
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->setQuery(Ljava/lang/String;)V

    goto :goto_2

    .line 1298
    :cond_3
    iput-boolean v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->preserveLastTimeEntry:Z

    goto :goto_2

    .line 1303
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->mostRecentSearchTerm:Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;->getTerm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->setQuery(Ljava/lang/String;)V

    goto :goto_2

    .line 1277
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->preserveLastTimeEntry:Z

    goto :goto_2

    .line 1307
    :cond_6
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->hideRecentSearchViews()V

    :goto_2
    return-void
.end method

.method private setupRecentSearchDisplay()V
    .locals 5

    .line 331
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchAdapter:Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;

    .line 332
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchDatabaseTermSource:Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;

    .line 333
    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->mostRecentSearchTerm:Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;

    if-eqz v0, :cond_4

    .line 335
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setupRecentSearchHeaderView()V

    .line 337
    iget-object v3, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchViewOnTouchListener:Lcom/amazon/kcp/search/OnSearchTermClickListener;

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;->setOnSearchTermClickListener(Lcom/amazon/kcp/search/OnSearchTermClickListener;)V

    .line 339
    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->lastSearchIsOverTHours:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isFirstTimeEntry:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->preserveLastTimeEntry:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->hasNoRecentSearchTerms:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBookId:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 355
    invoke-virtual {v2}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;->getTerm()Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-virtual {v1}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->getCurrentTimeStamp()J

    move-result-wide v3

    .line 355
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->insertUpdateTerm(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 359
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->showSearchResults()V

    goto :goto_1

    .line 362
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->showRecentSearch()V

    goto :goto_1

    .line 340
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->hasNoRecentSearchTerms:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBookId:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 344
    invoke-virtual {v2}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermData;->getTerm()Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-virtual {v1}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->getCurrentTimeStamp()J

    move-result-wide v3

    .line 344
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/amazon/kcp/search/recentsearch/RecentSearchDatabaseTermSource;->insertUpdateTerm(Ljava/lang/String;Ljava/lang/String;J)Z

    .line 349
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->showRecentSearch()V

    :cond_4
    :goto_1
    return-void
.end method

.method private setupRecentSearchHeaderView()V
    .locals 2

    .line 648
    sget v0, Lcom/amazon/kindle/krl/R$id;->recent_search_terms_header_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 651
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchHeaderViewOnTouchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    sget v1, Lcom/amazon/kindle/krl/R$id;->clear_recent_history:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-nez v0, :cond_1

    return-void

    .line 658
    :cond_1
    new-instance v1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$3;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupRecyclerViewAdapter(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getRecyclerViewAdapter()Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchAdapter:Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->lastSearchIsOverTHours:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->preserveLastTimeEntry:Z

    if-eqz v0, :cond_2

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getSearchMetricsDelegate()Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    .line 287
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setNewRecyclerViewAdapter(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    goto/16 :goto_1

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getRecyclerViewAdapter()Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getSearchMetricsDelegate()Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    .line 292
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 293
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchAdapter:Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;

    if-eqz v0, :cond_4

    .line 296
    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isFirstTimeEntry:Z

    if-nez v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->updateSectionsWithDynamicSearchResults(Ljava/lang/String;)V

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->isSearchFinished()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 303
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setNewRecyclerViewAdapter(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 306
    iput-boolean v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isFirstTimeEntry:Z

    goto :goto_1

    .line 309
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->updateSectionsWithDynamicSearchResults(Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->reset()V

    .line 263
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    .line 264
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    new-instance v3, Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder;

    const-class v4, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    .line 265
    invoke-static {v4}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-direct {v3, v4}, Lcom/amazon/kcp/util/fastmetrics/search/DefaultSearchFastMetricsRecorder;-><init>(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;)V

    invoke-direct {v0, v2, v3}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;-><init>(Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;Lcom/amazon/kcp/util/fastmetrics/search/SearchFastMetricsRecorder;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    .line 268
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setNewRecyclerViewAdapter(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 269
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->setRecyclerViewAdapter(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;)V

    .line 270
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->setBook(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 272
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->setSearchMetricsDelegate(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;)V

    .line 276
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchAdapter:Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;

    if-eqz p1, :cond_6

    .line 278
    iput-boolean v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isFirstTimeEntry:Z

    .line 313
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    if-eqz p1, :cond_7

    .line 314
    invoke-virtual {p1, p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->setActivityCloseRequestListener(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter$ISearchActivityCloseRequestListener;)V

    .line 316
    :cond_7
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->startNewContext()V

    return-void
.end method

.method private setupResultsDimView()V
    .locals 2

    .line 637
    sget v0, Lcom/amazon/kindle/krl/R$id;->results_dim_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->dimView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 639
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 640
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->dimView:Landroid/view/View;

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->dimViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private setupResultsRecyclerView()V
    .locals 2

    .line 611
    sget v0, Lcom/amazon/kindle/krl/R$id;->results_recycler_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 614
    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 615
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v1}, Lcom/amazon/kindle/utils/RTLUtils;->getLayoutDirection(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 616
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v1}, Lcom/amazon/kindle/utils/RTLUtils;->getTextDirection(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTextDirection(I)V

    const/4 v1, 0x1

    .line 617
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 618
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 619
    new-instance v1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$2;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private setupSearchView(Landroidx/appcompat/widget/SearchView;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 568
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchViewQueryTextListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 569
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchViewFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7fffffff

    .line 571
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 572
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getImeOptions()I

    move-result v0

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    const/4 v0, 0x0

    .line 573
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 574
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 576
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v1, "search"

    .line 577
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 578
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 579
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 582
    sget v0, Landroidx/appcompat/R$id;->search_src_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 583
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1, v2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x2000000

    .line 585
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    :cond_0
    return-void
.end method

.method private showAutoComplete()V
    .locals 2

    .line 1107
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->autoCompleteAdapter:Lcom/amazon/kcp/search/autocomplete/AutoCompleteAdapter;

    if-nez v0, :cond_0

    return-void

    .line 1110
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->switchAdapters(Lcom/amazon/kcp/search/ReaderSearchAdapter;)V

    .line 1111
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->hideRecentSearchViews()V

    .line 1112
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->dimView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 1113
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showRecentSearch()V
    .locals 4

    .line 1123
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchAdapter:Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;

    if-nez v0, :cond_0

    return-void

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchDatabaseTermDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1129
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchAdapter:Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchDatabaseTermDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;->setRecentSearchTerms(Ljava/util/List;)V

    .line 1130
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchAdapter:Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->switchAdapters(Lcom/amazon/kcp/search/ReaderSearchAdapter;)V

    const/4 v0, 0x1

    .line 1132
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->showRecentSearchViews(Z)V

    .line 1137
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 1138
    new-instance v1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$12;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$12;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1152
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->RECENT_SEARCH_LIST_VISIBLE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchDatabaseTermDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->recordMetricsForRecentSearchAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1154
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->showRecentSearchViews(Z)V

    .line 1156
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->RECENT_SEARCH_EMPTY_STATE_VISIBLE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->recordMetricsForRecentSearchAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;Ljava/lang/Integer;)V

    .line 1159
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->dimView:Landroid/view/View;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    .line 1160
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private showRecentSearchViews(Z)V
    .locals 4

    .line 1093
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 1094
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1098
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    .line 1099
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private showSearchResults()V
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    if-eqz v0, :cond_0

    .line 1062
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->switchAdapters(Lcom/amazon/kcp/search/ReaderSearchAdapter;)V

    .line 1063
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->hideRecentSearchViews()V

    .line 1065
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_RESULTS_VISIBLE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recordMetricsForAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V

    :cond_0
    return-void
.end method

.method private switchAdapters(Lcom/amazon/kcp/search/ReaderSearchAdapter;)V
    .locals 2

    .line 1034
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 1035
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentAdapter:Lcom/amazon/kcp/search/ReaderSearchAdapter;

    if-eq p1, v1, :cond_2

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 1037
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1038
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1040
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentAdapter:Lcom/amazon/kcp/search/ReaderSearchAdapter;

    if-eqz v1, :cond_0

    .line 1041
    invoke-virtual {v1, p0}, Lcom/amazon/kcp/search/ReaderSearchAdapter;->getDividerItemDecoration(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1043
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1047
    :cond_0
    invoke-virtual {p1, p0}, Lcom/amazon/kcp/search/ReaderSearchAdapter;->getDividerItemDecoration(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1049
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1052
    :cond_1
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentAdapter:Lcom/amazon/kcp/search/ReaderSearchAdapter;

    const/4 p1, 0x0

    .line 1053
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method cleanCacheResults()V
    .locals 2

    .line 1199
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->cancelSearch()V

    .line 1202
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->resetSearch()V

    .line 1204
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->setRecyclerViewAdapter(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;)V

    :cond_0
    return-void
.end method

.method public isOverTHours(J)Z
    .locals 3

    .line 1022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 1023
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$integer;->recent_search_expire_time_hours:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0xe10

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBackPressed()V
    .locals 1

    .line 411
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->OS_BACK_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recordMetricsForAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V

    .line 412
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->preserveEnteredQuery()V

    .line 414
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->didStartSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->isSearchFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->cancelSearch()V

    .line 417
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 518
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 519
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 520
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->defaultContainerPadding:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lcom/amazon/kcp/util/ViewUtils;->setHorizontalSafePadding(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    if-eqz p1, :cond_1

    .line 524
    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->updateSectionStartPositions()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 187
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 190
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz p1, :cond_2

    .line 194
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 195
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBookId:Ljava/lang/String;

    goto :goto_1

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 197
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBookId:Ljava/lang/String;

    .line 201
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->logPerfSearchOpened(Lcom/amazon/kindle/krx/content/IBook;Z)V

    .line 203
    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/ui/ColorModeUtil;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p1

    .line 205
    sget v1, Lcom/amazon/kindle/krl/R$layout;->reader_search_activity:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const/4 v1, 0x0

    .line 207
    iput-boolean v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricFlagIsSearchFromSelection:Z

    .line 208
    iput-boolean v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricFlagIsFocusFromXButton:Z

    .line 210
    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricCharsTyped:Ljava/lang/Integer;

    .line 211
    iput-boolean v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isSuggestionClicked:Z

    .line 212
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->wereSuggestionsAvailableOnSearch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cache_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;->getCacheWithKey(Ljava/lang/String;)Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    .line 216
    sget v0, Lcom/amazon/kindle/krl/R$id;->search_result_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 218
    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->defaultContainerPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->defaultContainerPadding:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/ViewUtils;->setHorizontalSafePadding(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 222
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setupResultsRecyclerView()V

    .line 223
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setupRecentSearch()V

    .line 224
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setupRecyclerViewAdapter(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 226
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    .line 227
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setupActionBar(Landroidx/appcompat/app/ActionBar;)V

    .line 229
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setupResultsDimView()V

    .line 231
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    .line 232
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 233
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getScrollPosition()I

    move-result p1

    if-lez p1, :cond_4

    .line 234
    iget-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getScrollPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 238
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setupRecentSearchDisplay()V

    .line 240
    invoke-static {}, Lcom/amazon/kcp/search/enhancedsearch/ReaderTextbookSearchClickstreamMetricManager;->logSearchOpened()V

    .line 242
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setupAutoComplete()V

    .line 243
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->saveLastSearchInBookTime()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 447
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$menu;->reader_search_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 449
    sget v0, Lcom/amazon/kindle/krl/R$id;->search:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 450
    invoke-static {v0}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 451
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setupSearchView(Landroidx/appcompat/widget/SearchView;)V

    .line 453
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setSearchQuery(Landroid/content/Intent;)V

    .line 457
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_0

    .line 458
    sget v1, Lcom/amazon/kindle/krl/R$id;->search_close_btn:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 459
    new-instance v1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$1;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recentSearchAdapter:Lcom/amazon/kcp/search/recentsearch/RecentSearchAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_2

    .line 494
    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->lastSearchIsOverTHours:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isFirstTimeEntry:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->preserveLastTimeEntry:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->hasNoRecentSearchTerms:Z

    if-eqz v0, :cond_2

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 499
    :cond_2
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 377
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 379
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 380
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->setSearchQuery(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 504
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 505
    sget-object p1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->GUI_UP_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->recordMetricsForAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V

    .line 507
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->preserveEnteredQuery()V

    .line 509
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 513
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 370
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 372
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->currentBook:Lcom/amazon/kindle/krx/content/IBook;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->logPerfSearchOpened(Lcom/amazon/kindle/krx/content/IBook;Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 434
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStop()V

    .line 436
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->metricsDelegate:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;->endContext()V

    .line 438
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    iget-object v1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->setScrollPosition(I)V

    .line 440
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->cancelSearch()V

    :cond_0
    return-void
.end method

.method recordMetricsForAction(Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V
    .locals 2

    .line 981
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->searchResultsAdapter:Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    if-eqz v0, :cond_0

    .line 982
    new-instance v1, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity$11;-><init>(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;->postOnAdapterThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestActivityClose()V
    .locals 0

    .line 689
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method setCacheAdapter(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;)V
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->getRecyclerViewAdapter()Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->cache:Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;->setRecyclerViewAdapter(Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchResultsAdapter;)V

    :cond_0
    return-void
.end method

.method public setRecentSearchClicked(Z)V
    .locals 0

    .line 426
    iput-boolean p1, p0, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->isRecentSearchClicked:Z

    if-eqz p1, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/amazon/kcp/search/enhancedsearch/ReaderSearchActivity;->showRecentSearch()V

    :cond_0
    return-void
.end method
