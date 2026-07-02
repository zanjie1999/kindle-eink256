.class public Lcom/amazon/kcp/search/SearchActivity;
.super Lcom/amazon/kcp/library/BaseLibraryActivity;
.source "SearchActivity.java"

# interfaces
.implements Lcom/amazon/kcp/search/SearchProvider$Listener;
.implements Lcom/amazon/kcp/search/SearchInteractionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;,
        Lcom/amazon/kcp/search/SearchActivity$ContentChangeCallback;,
        Lcom/amazon/kcp/search/SearchActivity$SearchQueryWatcher;,
        Lcom/amazon/kcp/search/SearchActivity$SearchAction;
    }
.end annotation


# static fields
.field protected static final ASSOCIATE_SEARCH:Ljava/lang/String; = "associate.tag"

.field private static final BUNDLE_COMPLETED_KINDLE_URL_PROTOCOL_SEARCH:Ljava/lang/String; = "kindle_url_protocol_search_completed"

.field private static final BUNDLE_LAST_ACTION:Ljava/lang/String; = "last_action"

.field private static final BUNDLE_SEARCH_INFO:Ljava/lang/String; = "search_info"

.field protected static final CORGI_SEARCH:Ljava/lang/String; = "corgi!"

.field protected static final DEBUG_SEARCH:Ljava/lang/String; = ":debug"

.field protected static final ENCOURAGEMENT_SEARCH:Ljava/lang/String; = "encourage.me!"

.field protected static final METRIC_TIMEOUT_IN_MILLISECONDS:J = 0xbb8L

.field protected static final REFORMULATION_TIMEOUT_IN_MILLISECONDS:J = 0xea60L

.field private static final SEARCH_CLIENT_ID:Ljava/lang/String; = "search"

.field private static final SEARCH_METRIC_NAME:Ljava/lang/String; = "Search"

.field protected static final STORE_QUERY_MIN_LENGTH_CJK:I = 0x1

.field protected static final STORE_QUERY_MIN_LENGTH_DEFAULT:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected clearedSearchTime:J

.field private completedKindleURLProtocolSearch:Z

.field private contentListener:Lcom/amazon/kcp/library/LibraryContentListener;

.field protected filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

.field private filterSortStateChangeListener:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;

.field private lastAction:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

.field protected libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

.field protected librarySearchMetrics:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

.field protected librarySearchTimeData:Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;

.field protected listView:Lcom/amazon/kcp/search/views/SearchListView;

.field private final listViewOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field protected noResultsView:Landroid/widget/TextView;

.field protected previousTabName:Ljava/lang/String;

.field protected recyclerView:Lcom/amazon/kcp/search/views/SearchRecyclerView;

.field private final searchBarOnHoverListener:Landroid/view/View$OnHoverListener;

.field private final searchBarOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected searchInput:Landroid/widget/EditText;

.field protected searchMetricsLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;",
            ">;"
        }
    .end annotation
.end field

.field protected searchProvider:Lcom/amazon/kcp/search/SearchProvider;

.field protected searchProviderLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/search/SearchProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final searchQueryWatcher:Lcom/amazon/kcp/search/SearchActivity$SearchQueryWatcher;

.field protected searchTimeRecords:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;",
            ">;"
        }
    .end annotation
.end field

.field private shouldShowLibraryResults:Z

.field private shouldShowStoreResults:Z

.field private shouldShowSuggestions:Z

.field private storeResultBookIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 255
    const-class v0, Lcom/amazon/kcp/search/SearchActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/SearchActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 139
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseLibraryActivity;-><init>()V

    const-string v0, "NO_TAB"

    .line 262
    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->previousTabName:Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProviderLookup:Ljava/util/Map;

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchMetricsLookup:Ljava/util/Map;

    .line 288
    sget-object v0, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->UNKNOWN:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->lastAction:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    .line 290
    new-instance v0, Lcom/amazon/kcp/search/SearchActivity$SearchQueryWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/search/SearchActivity$SearchQueryWatcher;-><init>(Lcom/amazon/kcp/search/SearchActivity;Lcom/amazon/kcp/search/SearchActivity$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchQueryWatcher:Lcom/amazon/kcp/search/SearchActivity$SearchQueryWatcher;

    .line 291
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->storeResultBookIds:Ljava/util/Set;

    .line 305
    new-instance v0, Lcom/amazon/kcp/search/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/SearchActivity$1;-><init>(Lcom/amazon/kcp/search/SearchActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->listViewOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 314
    new-instance v0, Lcom/amazon/kcp/search/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/SearchActivity$2;-><init>(Lcom/amazon/kcp/search/SearchActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchBarOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 330
    new-instance v0, Lcom/amazon/kcp/search/SearchActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/SearchActivity$3;-><init>(Lcom/amazon/kcp/search/SearchActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchBarOnHoverListener:Landroid/view/View$OnHoverListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/SearchActivity;)Z
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchAsYouTypeRemovalEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 139
    sget-object v0, Lcom/amazon/kcp/search/SearchActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/search/SearchActivity;)Z
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSpellCorrectionFeatureEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/search/SearchActivity;Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->handleSpecialQuery(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/search/SearchActivity;Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->recordSearchMetric(Ljava/lang/String;)V

    return-void
.end method

.method private clearStoreCovers()V
    .locals 3

    .line 1307
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1309
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->storeResultBookIds:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/cover/ICoverImageService;->deleteCovers(Ljava/util/Collection;)V

    .line 1312
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1314
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->storeResultBookIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1315
    invoke-interface {v0, v2}, Lcom/amazon/kcp/cover/ICoverCacheManager;->clearCache(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private downloadBook(Lcom/amazon/kindle/model/content/IListableBook;)V
    .locals 8

    .line 1421
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$LIBRARY;

    const-string v1, "search"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$LIBRARY;-><init>(Ljava/lang/String;)V

    .line 1423
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v2

    .line 1424
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v6, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->startExperiences(Lcom/amazon/kindle/model/content/IBookID;ZLjava/lang/String;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    const-string v1, "BookDownloadTransientScreen"

    .line 1427
    invoke-direct {p0, v1}, Lcom/amazon/kcp/search/SearchActivity;->recordSearchMetric(Ljava/lang/String;)V

    .line 1428
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/amazon/kcp/library/ILibraryController;->downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    .line 1429
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/library/TransientActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1430
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadingBookAsin"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1431
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v1

    const-string v2, "DownloadingBookIsSample"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1432
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTodoTypeFromBookType(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DownloadingDocumentType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private getCXUpdateContentLayoutId()I
    .locals 1

    .line 1553
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchStoreFilterSortEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->wayfinder_search_screen_with_filter_sort:I

    return v0

    .line 1556
    :cond_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->wayfinder_search_screen:I

    return v0
.end method

.method private goToStore()V
    .locals 2

    .line 1486
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kindle/utils/StoreOpeners;->createSearchResultsOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    const-string v1, "kin_red_lib_0"

    .line 1487
    invoke-interface {v0, v1}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 1488
    invoke-interface {v0}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method private handleOnStartActivityWithQuery()V
    .locals 1

    .line 1287
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz v0, :cond_1

    .line 1289
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isInlineSearchSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->areSuggestionsPending()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->getSuggestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->refreshSearchSuggestions()V

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->isSearchPending()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->hasResults()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->refreshSearch()V

    :cond_1
    return-void
.end method

.method private handleSpecialQuery(Ljava/lang/String;)V
    .locals 3

    .line 1253
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1257
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "corgi!"

    .line 1258
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1260
    sget-boolean p1, Lcom/amazon/kcp/sounds/PageTurnSound;->BAXTER_MODE:Z

    xor-int/2addr p1, v2

    sput-boolean p1, Lcom/amazon/kcp/sounds/PageTurnSound;->BAXTER_MODE:Z

    if-eqz p1, :cond_1

    const-string p1, "Corgi mode activated."

    goto :goto_0

    :cond_1
    const-string p1, "Corgi mode deactivated."

    .line 1263
    :goto_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_2
    const-string v0, "encourage.me!"

    .line 1264
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1266
    sget-boolean p1, Lcom/amazon/kcp/sounds/PageTurnSound;->ENCOURAGEMENT_MODE:Z

    xor-int/2addr p1, v2

    sput-boolean p1, Lcom/amazon/kcp/sounds/PageTurnSound;->ENCOURAGEMENT_MODE:Z

    if-eqz p1, :cond_3

    const-string p1, "Encouragement mode activated."

    goto :goto_1

    :cond_3
    const-string p1, "Encouragement mode deactivated."

    .line 1269
    :goto_1
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    const-string v0, "associate.tag"

    .line 1270
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1272
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssociateInformationProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_5
    const-string v0, ":debug"

    .line 1273
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1274
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/amazon/kcp/debug/DebugActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1275
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private hasResultsOnScreen()Z
    .locals 1

    .line 1612
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->recyclerView:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    if-eqz v0, :cond_0

    .line 1613
    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->hasResults()Z

    move-result v0

    return v0

    .line 1614
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->listView:Lcom/amazon/kcp/search/views/SearchListView;

    if-eqz v0, :cond_1

    .line 1615
    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/SearchListView;->hasResults()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hasSearchSuggestionsOnScreen()Z
    .locals 1

    .line 1603
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->recyclerView:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1607
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->hasSuggestions()Z

    move-result v0

    return v0
.end method

.method private isInlineSearchSuggestionsEnabled()Z
    .locals 1

    .line 1516
    sget-object v0, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;

    invoke-static {}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->isCacheInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNewSearchForSearchMetrics()Z
    .locals 6

    .line 1347
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->lastAction:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    sget-object v1, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->SEARCH_CLEARED:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchMetrics:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->getHasHadClickOutcome()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1357
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->lastAction:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    sget-object v1, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->SEARCH_COMMITTED:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->SUGGESTION_CLICKED:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 1365
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchAsYouTypeRemovalEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1367
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_3

    move-wide v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->getSearchTimestamp()J

    move-result-wide v0

    :goto_0
    cmp-long v5, v0, v3

    if-eqz v5, :cond_4

    .line 1368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v0, 0xbb8

    cmp-long v5, v3, v0

    if-lez v5, :cond_4

    return v2

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    :goto_1
    return v2
.end method

.method private isReformulationAction()Z
    .locals 7

    .line 1536
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 1537
    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->getSearchTimestamp()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->lastAction:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    sget-object v3, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->SEARCH_CLEARED:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    if-ne v0, v3, :cond_1

    iget-wide v3, p0, Lcom/amazon/kcp/search/SearchActivity;->clearedSearchTime:J

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 1540
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 1542
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchMetrics:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->getHasHadClickOutcome()Z

    move-result v0

    if-nez v0, :cond_2

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    const-wide/32 v0, 0xea60

    cmp-long v2, v5, v0

    if-gez v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private isSearchAsYouTypeRemovalEnabled()Z
    .locals 1

    .line 1565
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isInlineSearchSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->isWayFinderSearchAsYouTypeRemovalEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSearchFallbackDetectionMetricsPublishEnabed()Z
    .locals 1

    .line 1526
    invoke-static {}, Lcom/amazon/kcp/debug/WayFinderSearchFallbackDetectionMetricsPublishDebugUtils;->isWayFinderSearchFallbackDetectionMetricsPublishEnabled()Z

    move-result v0

    return v0
.end method

.method private isSearchStoreFilterSortEnabled()Z
    .locals 1

    .line 1560
    invoke-static {}, Lcom/amazon/kcp/debug/WayfinderSearchFilterSortDebugUtils;->isSearchStoreFilterSortEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    invoke-static {}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSpellCorrectionFeatureEnabled()Z
    .locals 1

    .line 1506
    invoke-static {}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateEnabled()Z

    move-result v0

    return v0
.end method

.method private isToStartANewSearch()Z
    .locals 3

    .line 1325
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchAsYouTypeRemovalEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1329
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1335
    :cond_0
    sget-object v0, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->QUERY_EDITED:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    iget-object v2, p0, Lcom/amazon/kcp/search/SearchActivity;->lastAction:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->UNKNOWN:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    iget-object v2, p0, Lcom/amazon/kcp/search/SearchActivity;->lastAction:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private openBook(Lcom/amazon/kindle/model/content/IListableBook;)V
    .locals 7

    .line 1402
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    .line 1403
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v4, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "search"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->startExperiences(Lcom/amazon/kindle/model/content/IBookID;ZLjava/lang/String;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    const-string v0, "LocalBookOpened"

    .line 1406
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->recordSearchMetric(Ljava/lang/String;)V

    .line 1407
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    check-cast p1, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/ILibraryService;->getLocalBook(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    .line 1408
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    new-instance v3, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;

    invoke-direct {v3}, Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;-><init>()V

    sget-object v4, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    const/4 v5, 0x1

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kcp/reader/IReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;)V

    return-void
.end method

.method private openSeries(Lcom/amazon/kindle/model/content/IListableBook;)V
    .locals 3

    .line 1384
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/LibraryContextMetricsRecorder;->recordLaunchSeriesFromSearch()V

    .line 1385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1386
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bookId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    sget-object p1, Lcom/amazon/kindle/krx/library/LibraryView;->SERIES_DETAIL:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.amazon.kindle.LAUNCH_LIBRARY_VIEW"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    .line 1391
    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/ILibraryController;->newLibraryScreenletIntent(Landroid/os/Bundle;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object v0

    .line 1392
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/kcp/oob/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1393
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryController;->getLibraryTabId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TabId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ScreenletIntent"

    .line 1394
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1395
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openStoreItem(Lcom/amazon/kcp/search/store/StoreContentMetadata;Ljava/lang/String;)V
    .locals 1

    .line 1495
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->UNKNOWN:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-static {p0, p1, v0}, Lcom/amazon/kindle/utils/StoreOpeners;->createBookDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 1496
    invoke-interface {p1, p2}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 1497
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method private recordSearchMetric(Ljava/lang/String;)V
    .locals 2

    .line 1479
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "SearchActivity"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resetFilterSortState()V
    .locals 2

    .line 1242
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortStateChangeListener:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->removeStateChangeListener(Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;)V

    .line 1243
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->resetAllSelections()V

    .line 1244
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortStateChangeListener:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->addStateChangeListener(Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;)V

    return-void
.end method

.method private setNoResultsViewStartPoint(F)V
    .locals 1

    .line 1594
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->noResultsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->noResultsView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setY(F)V

    :cond_0
    return-void
.end method

.method private setPreSelectedFilterAndSort()V
    .locals 3

    .line 1038
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->getStoreFilterItemIds()Ljava/util/List;

    move-result-object v0

    .line 1040
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/SearchProvider;->getStoreSortTypeId()Ljava/lang/String;

    move-result-object v1

    .line 1042
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1043
    iget-object v2, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->setPreselectedFilters(Ljava/util/List;)V

    .line 1046
    :cond_0
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->setPreselectedSort(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected clearExistingSearch()V
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/search/SearchProvider;->removeListener(Lcom/amazon/kcp/search/SearchProvider$Listener;)V

    const/4 v0, 0x0

    .line 727
    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    :cond_0
    return-void
.end method

.method protected clearResults()V
    .locals 3

    .line 938
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 945
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->getSearchTimestamp()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/amazon/kcp/search/SearchActivity;->clearedSearchTime:J

    .line 947
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchAsYouTypeRemovalEnabled()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 952
    sget-object v0, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->QUERY_EDITED:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    iget-object v2, p0, Lcom/amazon/kcp/search/SearchActivity;->lastAction:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 953
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->clearExistingSearch()V

    .line 954
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchMetricsLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 955
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProviderLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 956
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->clearStoreCovers()V

    .line 957
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/search/SearchActivity;->updateSearchText(Ljava/lang/String;)V

    .line 958
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->updateViews()V

    return-void

    :cond_2
    const/4 v0, -0x1

    .line 962
    sget-object v2, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->CLEAR_RESULTS:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {p0, v0, v2}, Lcom/amazon/kcp/search/SearchActivity;->logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;)V

    .line 964
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->clearExistingSearch()V

    .line 965
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchMetricsLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 966
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProviderLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 967
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->clearStoreCovers()V

    .line 968
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/search/SearchActivity;->updateSearchText(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->updateViews()V

    .line 971
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchTimeRecords:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LibrarySearchTimeRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchTimeRecords:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 973
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchTimeRecords:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 975
    :cond_3
    sget-object v0, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->SEARCH_CLEARED:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->setLastAction(Lcom/amazon/kcp/search/SearchActivity$SearchAction;)V

    return-void
.end method

.method protected createSearchProvider(Ljava/lang/String;)Lcom/amazon/kcp/search/SearchProvider;
    .locals 1

    .line 818
    new-instance v0, Lcom/amazon/kcp/search/SearchProvider;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/search/SearchProvider;-><init>(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0, p0}, Lcom/amazon/kcp/search/SearchProvider;->addListener(Lcom/amazon/kcp/search/SearchProvider$Listener;)V

    return-object v0
.end method

.method protected doSearch(Ljava/lang/String;ZZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 732
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/search/SearchActivity;->doSearch(Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method protected doSearch(Ljava/lang/String;ZZZZ)V
    .locals 7

    .line 750
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchAsYouTypeRemovalEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->clearExistingSearch()V

    .line 756
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->updateViews()V

    return-void

    .line 761
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchAsYouTypeRemovalEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 765
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isToStartANewSearch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 766
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->clearExistingSearch()V

    .line 767
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->createSearchProvider(Ljava/lang/String;)Lcom/amazon/kcp/search/SearchProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    goto :goto_0

    .line 769
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/SearchProvider;->setQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 772
    :cond_3
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->createSearchProvider(Ljava/lang/String;)Lcom/amazon/kcp/search/SearchProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    .line 775
    :goto_0
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchTimeData:Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;

    .line 776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->setQueryEnteredTime(J)V

    .line 777
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProviderLookup:Ljava/util/Map;

    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchMetricsLookup:Ljava/util/Map;

    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchMetrics:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_5

    .line 781
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->isNetworkAvailable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 782
    invoke-static {}, Lcom/amazon/kcp/search/SearchPMETHelper;->recordSearchSuggestionStart()V

    .line 784
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->fetchSearchSuggestions()V

    .line 787
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/search/SearchPMETHelper;->recordLibrarySearchStart()V

    if-eqz p2, :cond_6

    .line 788
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->isNetworkAvailable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 789
    invoke-static {}, Lcom/amazon/kcp/search/SearchPMETHelper;->recordStoreSearchStart()V

    .line 792
    :cond_6
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchTimeData:Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->setStartSearchTime(J)V

    .line 794
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    if-eqz p1, :cond_7

    .line 795
    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->getSelectedFilterIds()Ljava/util/List;

    move-result-object v5

    .line 796
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->getSelectedSortTypeId()Ljava/lang/String;

    move-result-object v6

    .line 797
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    .line 799
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getStoreResultsPageSize()I

    move-result v2

    move v1, p2

    move v3, p3

    move v4, p5

    .line 797
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kcp/search/SearchProvider;->executeSearchWithStoreFilterSortOptions(ZIZZLjava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 806
    :cond_7
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    .line 808
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getStoreResultsPageSize()I

    move-result p4

    .line 806
    invoke-virtual {p1, p2, p4, p3, p5}, Lcom/amazon/kcp/search/SearchProvider;->executeSearch(ZIZZ)V

    .line 813
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->updateViews()V

    return-void
.end method

.method protected executeSuggestionsForSearchBarTouch()V
    .locals 1

    .line 1198
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isInlineSearchSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->fetchSearchSuggestions()V

    :cond_0
    return-void
.end method

.method protected getListLayoutId()I
    .locals 1

    .line 670
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->search_screen:I

    return v0
.end method

.method protected getQuery()Ljava/lang/String;
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->getQuery()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getSearchActionBar()I
    .locals 1

    .line 677
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->search_action_bar:I

    return v0
.end method

.method protected getStoreResultsPageSize()I
    .locals 1

    .line 1193
    invoke-static {}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    :goto_0
    return v0
.end method

.method protected isNetworkAvailable()Z
    .locals 2

    .line 1237
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    .line 1238
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

.method protected launchBookViaOneClick(ILcom/amazon/kindle/model/content/IListableBook;ILandroid/view/View;)Z
    .locals 7

    .line 1438
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;->isOneTapBookOpenSearchEnabled(Lcom/amazon/kcp/application/Marketplace;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1439
    const-class v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    .line 1440
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 1441
    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1442
    new-instance v0, Lcom/amazon/kcp/search/SearchActivity$5;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/amazon/kcp/search/SearchActivity$5;-><init>(Lcom/amazon/kcp/search/SearchActivity;ILcom/amazon/kindle/model/content/IListableBook;I)V

    .line 1462
    new-instance v6, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;

    invoke-direct {v6}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;-><init>()V

    .line 1463
    sget-object p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->ENTRY_POINT:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    invoke-virtual {v6, p1, v0}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;->addMetrics(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;)V

    .line 1464
    sget-object p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->DOWNLOAD:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    invoke-virtual {v6, p1, v0}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;->addMetrics(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;)V

    .line 1469
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->cover_image:I

    invoke-virtual {p4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1470
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/BookOpenLocationMetrics;->reportBookOpenedFromSearch()V

    if-nez p1, :cond_0

    move-object v4, p4

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    const-string v5, "search"

    move-object v3, p0

    .line 1471
    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;->open(Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected logMetricsOnFilterSortSelection()V
    .locals 2

    .line 1179
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isReformulationAction()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 1180
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->REFORMULATED:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/search/SearchActivity;->logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;)V

    .line 1181
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchMetrics:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->getSearchSessionId()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;-><init>(Ljava/util/UUID;)V

    goto :goto_0

    .line 1183
    :cond_0
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->SEARCH_AGAIN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/search/SearchActivity;->logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;)V

    .line 1184
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;-><init>()V

    .line 1186
    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchMetrics:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    return-void
.end method

.method protected logMetricsOnSearchSuggestionSelection(II)V
    .locals 2

    .line 1149
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->SEARCH_SUGGESTION_CLICKED:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/search/SearchActivity;->logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;)V

    .line 1150
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->logMetricsOnSearchTextChange()V

    .line 1157
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchAsYouTypeRemovalEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    goto :goto_0

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProviderLookup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/search/SearchProvider;

    :goto_0
    if-eqz p1, :cond_1

    .line 1166
    new-instance v0, Lcom/amazon/kcp/search/metrics/SearchSuggestionSelectionMetrics;

    .line 1167
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getQuery()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p2, p2, 0x1

    .line 1169
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getSuggestions()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lcom/amazon/kcp/search/metrics/SearchSuggestionSelectionMetrics;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 1170
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchMetrics:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setSearchSuggestionMetrics(Lcom/amazon/kcp/search/metrics/SearchSuggestionSelectionMetrics;)V

    :cond_1
    return-void
.end method

.method protected logMetricsOnSearchTextChange()V
    .locals 3

    .line 1124
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isNewSearchForSearchMetrics()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1126
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isReformulationAction()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 1127
    sget-object v2, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->REFORMULATED:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->SEARCH_AGAIN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/search/SearchActivity;->logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;)V

    if-eqz v0, :cond_1

    .line 1131
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchMetrics:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    .line 1132
    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->getSearchSessionId()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;-><init>(Ljava/util/UUID;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchMetrics:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    :cond_2
    return-void
.end method

.method protected logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;)V
    .locals 1

    const/4 v0, -0x1

    .line 1057
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/search/SearchActivity;->logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;I)V

    return-void
.end method

.method protected logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;I)V
    .locals 4

    .line 1073
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchMetrics:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->previousTabName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setAppTab(Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->listView:Lcom/amazon/kcp/search/views/SearchListView;

    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/SearchListView;->getVisibleStoreResultCount()I

    move-result v0

    .line 1078
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchMetrics:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setStoreResultsMaxShown(I)V

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProviderLookup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/SearchProvider;

    :goto_0
    if-ne p1, v0, :cond_2

    .line 1085
    iget-object v2, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchMetrics:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/search/SearchActivity;->searchMetricsLookup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    :goto_1
    if-eqz v2, :cond_4

    if-ne p3, v0, :cond_3

    .line 1090
    invoke-virtual {v2, p2, v1}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->handleOutcome(Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;Lcom/amazon/kcp/search/SearchProvider;)V

    goto :goto_2

    .line 1092
    :cond_3
    invoke-virtual {v2, p2, v1, p3}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->handleOutcome(Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;Lcom/amazon/kcp/search/SearchProvider;I)V

    goto :goto_2

    .line 1095
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LibrarySearchMetrics not found when logging outcome for searchId "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1100
    :goto_2
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchFallbackDetectionMetricsPublishEnabed()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->REFORMULATED:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 1101
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->SEARCH_AGAIN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 1102
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->CLEAR_RESULTS:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 1103
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->STORE_PAGE_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 1104
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->EXIT_SEARCH:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    .line 1105
    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1106
    :cond_5
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->getMetricEmitName()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/amazon/kcp/search/SearchActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kcp/search/SearchPMETHelper;->publishOccuranceMetrics(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public onComplete(Ljava/lang/String;)V
    .locals 3

    .line 529
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 536
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getStoreResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/store/StoreContentMetadata;

    .line 537
    new-instance v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v1, v0, v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 538
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->storeResultBookIds:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 541
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->updateViews()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 360
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 362
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/IAndroidLibraryController;

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

    const/4 v0, 0x0

    .line 363
    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    .line 365
    new-instance v1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    invoke-direct {v1}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchMetrics:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    .line 367
    new-instance v1, Lcom/amazon/kcp/library/LibraryActionBarHelper;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/LibraryActionBarHelper;-><init>(Landroid/app/Activity;)V

    .line 368
    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryActionBarHelper;->setDisplayHomeAsUpEnabled()V

    .line 370
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->search_header:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 372
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 374
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 375
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getSearchActionBar()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/ActionBar;->setCustomView(I)V

    .line 379
    :cond_0
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->search_query:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    .line 380
    iget-object v3, p0, Lcom/amazon/kcp/search/SearchActivity;->searchQueryWatcher:Lcom/amazon/kcp/search/SearchActivity$SearchQueryWatcher;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 381
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    new-instance v3, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/search/SearchActivity$SearchInputActionListener;-><init>(Lcom/amazon/kcp/search/SearchActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 382
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/amazon/kcp/search/SearchActivity;->searchBarOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 383
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/amazon/kcp/search/SearchActivity;->searchBarOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 385
    invoke-static {}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->getCXUpdateContentLayoutId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 387
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->search_recycler_view:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/views/SearchRecyclerView;

    iput-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->recyclerView:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    .line 388
    iget-object v3, p0, Lcom/amazon/kcp/search/SearchActivity;->listViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 389
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->recyclerView:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    invoke-virtual {v1, p0}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->setInteractionHandler(Lcom/amazon/kcp/search/SearchInteractionHandler;)V

    .line 390
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->recyclerView:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getListLayoutId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 393
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->list:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/views/SearchListView;

    iput-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->listView:Lcom/amazon/kcp/search/views/SearchListView;

    .line 394
    iget-object v3, p0, Lcom/amazon/kcp/search/SearchActivity;->listViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 395
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->listView:Lcom/amazon/kcp/search/views/SearchListView;

    invoke-virtual {v1, p0}, Lcom/amazon/kcp/search/views/SearchListView;->setInteractionHandler(Lcom/amazon/kcp/search/SearchInteractionHandler;)V

    .line 397
    :goto_0
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->no_results:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->noResultsView:Landroid/widget/TextView;

    .line 399
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->setUpFilterSortBarManager()V

    .line 401
    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchTimeData:Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;

    if-eqz p1, :cond_2

    const-string v0, "kindle_url_protocol_search_completed"

    .line 403
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/search/SearchActivity;->completedKindleURLProtocolSearch:Z

    .line 404
    invoke-static {}, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->values()[Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    move-result-object v0

    const-string v1, "last_action"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->setLastAction(Lcom/amazon/kcp/search/SearchActivity$SearchAction;)V

    const-string v0, "search_info"

    .line 405
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/search/SearchProvider;

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz p1, :cond_2

    .line 407
    invoke-virtual {p1, p0}, Lcom/amazon/kcp/search/SearchProvider;->addListener(Lcom/amazon/kcp/search/SearchProvider$Listener;)V

    .line 408
    new-instance p1, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;

    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchTimeData:Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;

    .line 410
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->setPreSelectedFilterAndSort()V

    .line 413
    :cond_2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchTimeRecords:Ljava/util/LinkedHashMap;

    .line 414
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    const-string p1, "Search"

    .line 415
    invoke-static {p1}, Lcom/amazon/kcp/util/fastmetrics/OutOfBookNavBarsFastMetrics;->reportNavBarTap(Ljava/lang/String;)V

    .line 416
    sget-object p1, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;

    invoke-static {}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->recordWeblabTrigger()V

    .line 417
    invoke-static {}, Lcom/amazon/kcp/debug/WayfinderSearchFilterSortDebugUtils;->recordTrigger()V

    .line 418
    invoke-static {}, Lcom/amazon/kcp/debug/WayFinderSearchLayoutDebugUtils;->recordExperimentWeblabTrigger()V

    .line 421
    iput-boolean v2, p0, Lcom/amazon/kcp/search/SearchActivity;->shouldShowLibraryResults:Z

    .line 422
    iput-boolean v2, p0, Lcom/amazon/kcp/search/SearchActivity;->shouldShowStoreResults:Z

    .line 423
    iput-boolean v2, p0, Lcom/amazon/kcp/search/SearchActivity;->shouldShowSuggestions:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 491
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 493
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->EXIT_SEARCH:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/search/SearchActivity;->logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;)V

    .line 494
    invoke-static {}, Lcom/amazon/kcp/search/SearchPMETHelper;->cleanTimers()V

    .line 496
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->clearExistingSearch()V

    .line 497
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->clearStoreCovers()V

    .line 498
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchMetricsLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 499
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProviderLookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onGoToStoreSelected(I)V
    .locals 1

    .line 651
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->STORE_SEE_MORE:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/search/SearchActivity;->logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;)V

    .line 652
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kcp/search/SearchClickEvent;

    invoke-direct {v0}, Lcom/amazon/kcp/search/SearchClickEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 653
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->goToStore()V

    return-void
.end method

.method public onLibraryItemSelected(ILcom/amazon/kindle/model/content/IListableBook;ILandroid/view/View;)V
    .locals 3

    add-int/lit8 v0, p3, 0x1

    .line 596
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v2, Lcom/amazon/kcp/search/SearchClickEvent;

    invoke-direct {v2}, Lcom/amazon/kcp/search/SearchClickEvent;-><init>()V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 598
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    sget-object p3, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_SERIES_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {p0, p1, p3, v0}, Lcom/amazon/kcp/search/SearchActivity;->logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;I)V

    .line 601
    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/SearchActivity;->openSeries(Lcom/amazon/kindle/model/content/IListableBook;)V

    goto :goto_0

    .line 605
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/search/SearchActivity;->launchBookViaOneClick(ILcom/amazon/kindle/model/content/IListableBook;ILandroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 607
    :cond_1
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->isLocal()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 608
    sget-object p3, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_BOOK_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {p0, p1, p3, v0}, Lcom/amazon/kcp/search/SearchActivity;->logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;I)V

    .line 609
    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/SearchActivity;->openBook(Lcom/amazon/kindle/model/content/IListableBook;)V

    goto :goto_0

    .line 612
    :cond_2
    move-object p3, p2

    check-cast p3, Lcom/amazon/kindle/content/ContentMetadata;

    .line 613
    invoke-virtual {p3}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p4

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p4, v1, :cond_5

    invoke-virtual {p3}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p3

    sget-object p4, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne p3, p4, :cond_3

    goto :goto_0

    .line 615
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->isNetworkAvailable()Z

    move-result p3

    if-nez p3, :cond_4

    .line 616
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "ConnectionError"

    invoke-interface {p1, p3, p2}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 618
    :cond_4
    sget-object p3, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->LIBRARY_BOOK_DOWNLOAD:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {p0, p1, p3, v0}, Lcom/amazon/kcp/search/SearchActivity;->logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;I)V

    .line 619
    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/SearchActivity;->downloadBook(Lcom/amazon/kindle/model/content/IListableBook;)V

    .line 623
    :cond_5
    :goto_0
    sget-object p1, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->LIBRARY_RESULT_CLICKED:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->setLastAction(Lcom/amazon/kcp/search/SearchActivity$SearchAction;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 659
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 663
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResultsAvailable(Ljava/lang/String;)V
    .locals 4

    .line 505
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 512
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->isLibrarySearchPending()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchTimeData:Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->getSearchResultReturnedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 513
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchTimeData:Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->setSearchResultReturnedTime(J)V

    .line 516
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->updateViews()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 446
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 447
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/cover/ICoverCacheManager;->resumeUpdates()V

    .line 449
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 450
    iget-boolean v1, p0, Lcom/amazon/kcp/search/SearchActivity;->completedKindleURLProtocolSearch:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "searchTerms"

    .line 451
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->search_query:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 456
    iput-boolean v0, p0, Lcom/amazon/kcp/search/SearchActivity;->completedKindleURLProtocolSearch:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 479
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 481
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->lastAction:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "last_action"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz v0, :cond_0

    const-string v1, "search_info"

    .line 483
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 486
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/search/SearchActivity;->completedKindleURLProtocolSearch:Z

    const-string v1, "kindle_url_protocol_search_completed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onSearchTextChanged(Ljava/lang/String;)V
    .locals 4

    .line 684
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 688
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->logMetricsOnSearchTextChange()V

    .line 691
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isCjkText(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 696
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    if-eqz v3, :cond_2

    .line 697
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->resetFilterSortState()V

    .line 700
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchAsYouTypeRemovalEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 701
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isToStartANewSearch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 702
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->createSearchProvider(Ljava/lang/String;)Lcom/amazon/kcp/search/SearchProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    goto :goto_1

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/SearchProvider;->setQuery(Ljava/lang/String;)V

    .line 707
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isInlineSearchSuggestionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 708
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->fetchSearchSuggestions()V

    .line 709
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->updateViews()V

    goto :goto_3

    .line 712
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    if-lt v0, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 713
    :goto_2
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isInlineSearchSuggestionsEnabled()Z

    move-result v0

    .line 712
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/amazon/kcp/search/SearchActivity;->doSearch(Ljava/lang/String;ZZZ)V

    .line 715
    :cond_6
    :goto_3
    sget-object p1, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->QUERY_EDITED:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->setLastAction(Lcom/amazon/kcp/search/SearchActivity$SearchAction;)V

    return-void
.end method

.method public onSpellCorrectionRejected(ILcom/amazon/kcp/search/store/model/SpellCorrectionInfo;)V
    .locals 1

    .line 584
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->SPELL_CORRECTION_REJECTED:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/search/SearchActivity;->logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;)V

    .line 585
    new-instance p1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchMetrics:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->getSearchSessionId()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;-><init>(Ljava/util/UUID;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchMetrics:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    .line 587
    invoke-virtual {p2}, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->getAlternateQuery()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p2}, Lcom/amazon/kcp/search/SearchActivity;->doSearch(Ljava/lang/String;ZZZ)V

    .line 588
    sget-object p1, Lcom/amazon/kcp/search/SearchActivity;->TAG:Ljava/lang/String;

    const-string p2, "Searching for Alternative query"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    sget-object p1, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->SPELL_CORRECTION_REFUSED:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->setLastAction(Lcom/amazon/kcp/search/SearchActivity$SearchAction;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 428
    invoke-super {p0}, Lcom/amazon/kcp/library/BaseLibraryActivity;->onStart()V

    .line 431
    sget-object v0, Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;->INSTANCE:Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;->init()V

    .line 433
    new-instance v0, Lcom/amazon/kcp/library/LibraryContentListener;

    new-instance v1, Lcom/amazon/kcp/search/SearchActivity$ContentChangeCallback;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/SearchActivity$ContentChangeCallback;-><init>(Lcom/amazon/kcp/search/SearchActivity;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/LibraryContentListener;-><init>(Lcom/amazon/kcp/library/PausableListener$Callback;Z)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->contentListener:Lcom/amazon/kcp/library/LibraryContentListener;

    .line 434
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->contentListener:Lcom/amazon/kcp/library/LibraryContentListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz v0, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->handleOnStartActivityWithQuery()V

    :cond_0
    const/4 v0, 0x1

    .line 441
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->updateViews(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 464
    invoke-super {p0}, Lcom/amazon/kcp/library/BaseLibraryActivity;->onStop()V

    .line 465
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->contentListener:Lcom/amazon/kcp/library/LibraryContentListener;

    if-eqz v0, :cond_0

    .line 466
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->contentListener:Lcom/amazon/kcp/library/LibraryContentListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchTimeRecords:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LibrarySearchTimeRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchTimeRecords:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchTimeRecords:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 474
    :cond_1
    sget-object v0, Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;->INSTANCE:Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchLRUCoverCacheUtils;->reset()V

    return-void
.end method

.method public onStoreItemSelected(ILcom/amazon/kcp/search/store/StoreContentMetadata;I)V
    .locals 1

    add-int/lit8 p3, p3, 0x1

    .line 631
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->STORE_PAGE_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {p0, p1, v0, p3}, Lcom/amazon/kcp/search/SearchActivity;->logOutcome(ILcom/amazon/kcp/search/metrics/LibrarySearchOutcome;I)V

    .line 633
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance p3, Lcom/amazon/kcp/search/SearchClickEvent;

    invoke-direct {p3}, Lcom/amazon/kcp/search/SearchClickEvent;-><init>()V

    invoke-interface {p1, p3}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    const-string p1, "kin_red_store_0"

    .line 635
    invoke-static {p0, p1}, Lcom/amazon/kcp/search/RefUtil;->getRefMarkerIfAny(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 636
    invoke-direct {p0, p2, p1}, Lcom/amazon/kcp/search/SearchActivity;->openStoreItem(Lcom/amazon/kcp/search/store/StoreContentMetadata;Ljava/lang/String;)V

    .line 639
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "selectedOption"

    const-string p3, "StoreResult"

    .line 640
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 643
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    const-string p3, "Search"

    const-string v0, "OutOfBookSearchResultSelected"

    invoke-interface {p2, p3, v0, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 646
    :cond_0
    sget-object p1, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->STORE_RESULT_CLICKED:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->setLastAction(Lcom/amazon/kcp/search/SearchActivity$SearchAction;)V

    return-void
.end method

.method public onSuggestionSelected(ILjava/lang/String;I)V
    .locals 6

    .line 555
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kcp/search/SearchActivity;->logMetricsOnSearchSuggestionSelection(II)V

    .line 557
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/search/SearchActivity;->updateSearchText(Ljava/lang/String;)V

    .line 561
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchAsYouTypeRemovalEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->recyclerView:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 562
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->setShouldShowSuggestions(Z)V

    const/4 p1, 0x1

    .line 563
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->setShouldShowLibraryResults(Z)V

    .line 564
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->setShouldShowStoreResults(Z)V

    :cond_0
    const/4 v2, 0x1

    .line 573
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSpellCorrectionFeatureEnabled()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/search/SearchActivity;->doSearch(Ljava/lang/String;ZZZZ)V

    .line 575
    sget-object p1, Lcom/amazon/kcp/search/SearchActivity;->TAG:Ljava/lang/String;

    const-string p2, "Making search call with spell correction enabled after suggestion is clicked for query"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 577
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/amazon/android/util/UIUtils;->closeSoftKeyboard(Landroid/view/View;)V

    .line 578
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance p2, Lcom/amazon/kcp/search/SearchClickEvent;

    invoke-direct {p2}, Lcom/amazon/kcp/search/SearchClickEvent;-><init>()V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 579
    sget-object p1, Lcom/amazon/kcp/search/SearchActivity$SearchAction;->SUGGESTION_CLICKED:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->setLastAction(Lcom/amazon/kcp/search/SearchActivity$SearchAction;)V

    return-void
.end method

.method public onSuggestionsAvailable(Ljava/lang/String;)V
    .locals 1

    .line 520
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->updateViews()V

    return-void
.end method

.method protected performActionsForSearchBarTouch()V
    .locals 2

    .line 1212
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchAsYouTypeRemovalEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1214
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->executeSuggestionsForSearchBarTouch()V

    return-void

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1220
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isInlineSearchSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1221
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/SearchProvider;->fetchSearchSuggestions()V

    .line 1223
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 1224
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->recyclerView:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    if-eqz v0, :cond_3

    .line 1225
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/search/SearchActivity;->setShouldShowSuggestions(Z)V

    const/4 v0, 0x0

    .line 1226
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->setShouldShowLibraryResults(Z)V

    .line 1227
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->setShouldShowStoreResults(Z)V

    .line 1229
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->updateViews()V

    return-void
.end method

.method protected setFilterSortBarVisibility(I)V
    .locals 3

    .line 1569
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->search_top_tool_bar_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_2

    .line 1570
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->recyclerView:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1575
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1576
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->recyclerView:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    .line 1582
    invoke-virtual {v1, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 1583
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->setNoResultsViewStartPoint(F)V

    .line 1584
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->dismissMenus()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 1587
    new-instance p1, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;

    invoke-direct {p1}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 1588
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getY()F

    move-result p1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->setNoResultsViewStartPoint(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected setLastAction(Lcom/amazon/kcp/search/SearchActivity$SearchAction;)V
    .locals 0

    .line 1115
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->lastAction:Lcom/amazon/kcp/search/SearchActivity$SearchAction;

    return-void
.end method

.method protected setShouldShowLibraryResults(Z)V
    .locals 0

    .line 1633
    iput-boolean p1, p0, Lcom/amazon/kcp/search/SearchActivity;->shouldShowLibraryResults:Z

    return-void
.end method

.method protected setShouldShowStoreResults(Z)V
    .locals 0

    .line 1641
    iput-boolean p1, p0, Lcom/amazon/kcp/search/SearchActivity;->shouldShowStoreResults:Z

    return-void
.end method

.method protected setShouldShowSuggestions(Z)V
    .locals 0

    .line 1625
    iput-boolean p1, p0, Lcom/amazon/kcp/search/SearchActivity;->shouldShowSuggestions:Z

    return-void
.end method

.method protected setUpFilterSortBarManager()V
    .locals 2

    .line 997
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchStoreFilterSortEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1002
    :cond_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->sort_filter_bar_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 1010
    :cond_1
    new-instance v1, Lcom/amazon/kcp/search/SearchActivity$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/SearchActivity$4;-><init>(Lcom/amazon/kcp/search/SearchActivity;)V

    iput-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortStateChangeListener:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;

    .line 1028
    new-instance v1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    .line 1029
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortStateChangeListener:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->addStateChangeListener(Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;)V

    return-void
.end method

.method protected updateSearchText(Ljava/lang/String;)V
    .locals 2

    .line 984
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchQueryWatcher:Lcom/amazon/kcp/search/SearchActivity$SearchQueryWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 985
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 986
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchQueryWatcher:Lcom/amazon/kcp/search/SearchActivity$SearchQueryWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 987
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 990
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    if-eqz p1, :cond_0

    .line 991
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->resetFilterSortState()V

    :cond_0
    return-void
.end method

.method protected updateViews()V
    .locals 1

    const/4 v0, 0x0

    .line 827
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->updateViews(Z)V

    return-void
.end method

.method protected updateViews(Z)V
    .locals 14

    .line 837
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 838
    iget-object v3, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/amazon/kcp/search/SearchProvider;->isSearchPending()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 839
    iget-object v4, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/amazon/kcp/search/SearchProvider;->hasLibraryResults()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 840
    iget-object v5, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/amazon/kcp/search/SearchProvider;->hasStoreResults()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-eqz v0, :cond_5

    .line 842
    iget-object v6, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/amazon/kcp/search/SearchProvider;->getSuggestions()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    if-eqz v0, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-nez v6, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    .line 847
    :goto_6
    iget-object v4, p0, Lcom/amazon/kcp/search/SearchActivity;->noResultsView:Landroid/widget/TextView;

    const/16 v6, 0x8

    if-eqz v0, :cond_7

    const/4 v7, 0x0

    goto :goto_7

    :cond_7
    const/16 v7, 0x8

    :goto_7
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 850
    iget-object v4, p0, Lcom/amazon/kcp/search/SearchActivity;->recyclerView:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/amazon/kcp/search/SearchActivity;->listView:Lcom/amazon/kcp/search/views/SearchListView;

    :cond_8
    if-eqz v0, :cond_9

    const/16 v7, 0x8

    goto :goto_8

    :cond_9
    const/4 v7, 0x0

    .line 851
    :goto_8
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_b

    .line 855
    iget-object v8, p0, Lcom/amazon/kcp/search/SearchActivity;->recyclerView:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    if-eqz v8, :cond_a

    .line 856
    iget-object v9, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    iget-boolean v11, p0, Lcom/amazon/kcp/search/SearchActivity;->shouldShowSuggestions:Z

    iget-boolean v12, p0, Lcom/amazon/kcp/search/SearchActivity;->shouldShowLibraryResults:Z

    iget-boolean v13, p0, Lcom/amazon/kcp/search/SearchActivity;->shouldShowStoreResults:Z

    move v10, p1

    invoke-virtual/range {v8 .. v13}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->update(Lcom/amazon/kcp/search/SearchProvider;ZZZZ)V

    goto :goto_9

    .line 859
    :cond_a
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->listView:Lcom/amazon/kcp/search/views/SearchListView;

    iget-object v4, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {v0, v4, p1}, Lcom/amazon/kcp/search/views/SearchListView;->update(Lcom/amazon/kcp/search/SearchProvider;Z)V

    goto :goto_9

    .line 864
    :cond_b
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->recyclerView:Lcom/amazon/kcp/search/views/SearchRecyclerView;

    if-eqz p1, :cond_c

    .line 865
    invoke-virtual {p1}, Lcom/amazon/kcp/search/views/SearchRecyclerView;->clear()V

    goto :goto_9

    .line 867
    :cond_c
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->listView:Lcom/amazon/kcp/search/views/SearchListView;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/views/SearchListView;->clear()V

    .line 875
    :goto_9
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    if-eqz p1, :cond_13

    .line 877
    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->getSelectedFilterIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz v5, :cond_d

    .line 880
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->enableMenu()V

    goto :goto_a

    :cond_d
    if-nez p1, :cond_e

    .line 885
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->filterSortManager:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->disableMenu()V

    :cond_e
    :goto_a
    if-eqz p1, :cond_f

    goto :goto_c

    .line 893
    :cond_f
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchAsYouTypeRemovalEnabled()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->hasResultsOnScreen()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->hasSearchSuggestionsOnScreen()Z

    move-result p1

    if-nez p1, :cond_10

    if-nez v3, :cond_10

    goto :goto_b

    .line 895
    :cond_10
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchAsYouTypeRemovalEnabled()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->hasResultsOnScreen()Z

    move-result p1

    if-nez p1, :cond_11

    if-nez v3, :cond_11

    goto :goto_b

    .line 897
    :cond_11
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_12

    :goto_b
    const/16 v2, 0x8

    .line 902
    :cond_12
    :goto_c
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/search/SearchActivity;->setFilterSortBarVisibility(I)V

    .line 908
    :cond_13
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz p1, :cond_16

    .line 909
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->areSuggestionsPending()Z

    move-result p1

    if-nez p1, :cond_14

    .line 910
    invoke-static {}, Lcom/amazon/kcp/search/SearchPMETHelper;->recordSearchSuggestionEnd()V

    .line 912
    :cond_14
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->isLibrarySearchPending()Z

    move-result p1

    if-nez p1, :cond_15

    .line 913
    invoke-static {}, Lcom/amazon/kcp/search/SearchPMETHelper;->recordLibrarySearchEnd()V

    .line 915
    :cond_15
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->isStoreSearchPending()Z

    move-result p1

    if-nez p1, :cond_16

    .line 916
    invoke-static {}, Lcom/amazon/kcp/search/SearchPMETHelper;->recordStoreSearchEnd()V

    .line 921
    :cond_16
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchProvider:Lcom/amazon/kcp/search/SearchProvider;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->isLibrarySearchPending()Z

    move-result p1

    if-nez p1, :cond_18

    .line 923
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->isSearchAsYouTypeRemovalEnabled()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchTimeData:Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;

    if-nez p1, :cond_17

    return-void

    .line 926
    :cond_17
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchTimeRecords:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchTimeData:Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->getUniqueDataId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 927
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchTimeData:Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->setResultAddToViewTime(J)V

    .line 928
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchTimeRecords:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchTimeData:Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;->getUniqueDataId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->librarySearchTimeData:Lcom/amazon/kcp/search/metrics/LibrarySearchTimeData;

    invoke-virtual {p1, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-void
.end method
