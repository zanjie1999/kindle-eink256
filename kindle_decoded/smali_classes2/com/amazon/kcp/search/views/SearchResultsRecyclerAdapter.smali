.class public Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SearchResultsRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$StoreResultClickHandler;,
        Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$LibraryResultInteractionObserver;,
        Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SpellCorrectionClickHandler;,
        Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SearchSuggestionClickHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final coverCache:Lcom/amazon/kcp/cover/ICoverCacheManager;

.field private currentStorePage:I

.field private inlineSearchSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private interactionHandler:Lcom/amazon/kcp/search/SearchInteractionHandler;

.field private libraryResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation
.end field

.field private libraryResultsId:I

.field private libraryResultsViewHolder:Lcom/amazon/kcp/search/views/LibraryResultsViewHolder;

.field private numStorePages:I

.field private spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

.field private storeDefaultCover:Landroid/graphics/drawable/Drawable;

.field private storeFetchStatus:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

.field private storePageSize:I

.field private storeResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;",
            ">;"
        }
    .end annotation
.end field

.field private storeResultsId:I

.field private suggestionsId:I

.field private suggestionsQuery:Ljava/lang/String;

.field private final theme:Lcom/amazon/kindle/krx/theme/Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    const-class v0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/theme/Theme;Lcom/amazon/kcp/cover/ICoverCacheManager;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->context:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->theme:Lcom/amazon/kindle/krx/theme/Theme;

    .line 130
    iput-object p3, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->coverCache:Lcom/amazon/kcp/cover/ICoverCacheManager;

    .line 131
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->reset()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Lcom/amazon/kcp/search/SearchInteractionHandler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->interactionHandler:Lcom/amazon/kcp/search/SearchInteractionHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->suggestionsId:I

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResultsId:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResults:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResultsId:I

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    return-object p0
.end method

.method private displayLibraryResultsInContainer()Z
    .locals 1

    .line 379
    invoke-static {}, Lcom/amazon/kcp/debug/WayFinderSearchLayoutDebugUtils;->isWayFinderSearchLayoutEnabled()Z

    move-result v0

    return v0
.end method

.method private getItemType(I)Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;
    .locals 3

    .line 580
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 581
    sget-object p1, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->INLINE_SEARCH_SUGGESTIONS:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    return-object p1

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 585
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getSpellCorrectionInfoSize()I

    move-result v1

    if-lez v1, :cond_2

    sub-int v2, p1, v0

    if-ge v2, v1, :cond_1

    .line 588
    sget-object p1, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->SPELL_CORRECTION:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    return-object p1

    :cond_1
    add-int/2addr v0, v1

    .line 593
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    sub-int v1, p1, v0

    if-nez v1, :cond_3

    .line 595
    sget-object p1, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->LIBRARY_SECTION_HEADER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    return-object p1

    .line 597
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->displayLibraryResultsInContainer()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 599
    sget-object p1, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->LIBRARY_RESULT_CONTAINER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    return-object p1

    .line 601
    :cond_4
    iget-object v2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_5

    .line 602
    sget-object p1, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->LIBRARY_RESULT:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    return-object p1

    .line 604
    :cond_5
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getLibrarySectionSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 607
    :cond_6
    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_7

    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeFetchStatus:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    sget-object v2, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->NOT_LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    if-eq v1, v2, :cond_9

    :cond_7
    sub-int/2addr p1, v0

    if-nez p1, :cond_8

    .line 609
    sget-object p1, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_SECTION_HEADER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    return-object p1

    .line 610
    :cond_8
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_9

    .line 611
    sget-object p1, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_RESULT:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    return-object p1

    .line 615
    :cond_9
    sget-object p1, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_LOADING:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    return-object p1
.end method

.method private getLibraryResult(I)Lcom/amazon/kindle/model/content/IListableBook;
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResults:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getSpellCorrectionInfoSize()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/model/content/IListableBook;

    return-object p1
.end method

.method private getLibrarySectionSize()I
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->displayLibraryResultsInContainer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method private getSpellCorrectionInfoSize()I
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getStorePosition(I)I
    .locals 1

    .line 659
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getLibrarySectionSize()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getSpellCorrectionInfoSize()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private getStoreResult(I)Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getStorePosition(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;

    return-object p1
.end method

.method private getViewPositionForLibrarySectionHeader()I
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getSpellCorrectionInfoSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getViewPositionForSpellCorrection()I
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getViewPositionForStoreOnFetchItem()I
    .locals 2

    .line 671
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getViewPositionForStoreSectionHeader()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getViewPositionForStoreSectionHeader()I
    .locals 2

    .line 667
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getLibrarySectionSize()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getSpellCorrectionInfoSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private isInlineSearchSuggestionsEnabled()Z
    .locals 1

    .line 694
    sget-object v0, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;

    invoke-static {}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
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

.method private isSearchAsYouTypeRemovalEnabled()Z
    .locals 1

    .line 683
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->isInlineSearchSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
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

.method private reset()V
    .locals 1

    const-string v0, ""

    .line 619
    iput-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->suggestionsQuery:Ljava/lang/String;

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResults:Ljava/util/List;

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    .line 623
    sget-object v0, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->NOT_LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    iput-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeFetchStatus:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    const/4 v0, 0x0

    .line 624
    iput-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    const/4 v0, 0x0

    .line 625
    iput v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->currentStorePage:I

    .line 626
    iput v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->numStorePages:I

    .line 627
    iput v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storePageSize:I

    const/4 v0, -0x1

    .line 628
    iput v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResultsId:I

    .line 629
    iput v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResultsId:I

    .line 630
    iput v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->suggestionsId:I

    return-void
.end method

.method private updateLibraryResults(Lcom/amazon/kcp/search/SearchProvider;Z)V
    .locals 7

    .line 513
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->isLibrarySearchPending()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 519
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->isSearchAsYouTypeRemovalEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 520
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResults:Ljava/util/List;

    const/4 p1, -0x1

    .line 521
    iput p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResultsId:I

    return-void

    .line 525
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getLibraryResults()Ljava/util/List;

    move-result-object p2

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResults:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 527
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 528
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 529
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getViewPositionForLibrarySectionHeader()I

    move-result v3

    .line 532
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->displayLibraryResultsInContainer()Z

    move-result v4

    .line 535
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getId()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResultsId:I

    .line 536
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResults:Ljava/util/List;

    const/4 p1, 0x1

    if-nez v2, :cond_3

    if-lez v1, :cond_3

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v1, p1

    .line 545
    invoke-virtual {p0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_5

    if-lez v2, :cond_5

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v2, p1

    .line 548
    invoke-virtual {p0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    .line 552
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    add-int/2addr v3, p1

    .line 553
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_6
    add-int/2addr v3, p1

    .line 560
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_8

    .line 562
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    add-int v5, v3, v4

    .line 563
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    if-le v1, v2, :cond_9

    add-int/2addr v3, v2

    sub-int/2addr v1, v2

    .line 567
    invoke-virtual {p0, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_1

    :cond_9
    if-le v2, v1, :cond_a

    add-int/2addr v3, v1

    sub-int/2addr v2, v1

    .line 569
    invoke-virtual {p0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_a
    :goto_1
    return-void
.end method

.method private updateSpellCorrection(Lcom/amazon/kcp/search/SearchProvider;)V
    .locals 1

    .line 428
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getSpellCorrectionInfo()Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    move-result-object p1

    .line 429
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    if-nez v0, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getViewPositionForSpellCorrection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 433
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getViewPositionForSpellCorrection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 435
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getViewPositionForSpellCorrection()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 437
    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    :cond_2
    return-void
.end method

.method private updateStoreResults(Lcom/amazon/kcp/search/SearchProvider;Z)V
    .locals 7

    .line 442
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->isSearchAsYouTypeRemovalEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 443
    iput v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storePageSize:I

    const/4 p1, -0x1

    .line 444
    iput p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResultsId:I

    .line 445
    iput v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->numStorePages:I

    .line 446
    iput v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->currentStorePage:I

    .line 447
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    return-void

    .line 451
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getId()I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResultsId:I

    .line 453
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getStorePageSize()I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storePageSize:I

    .line 454
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getNumStorePages()I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->numStorePages:I

    .line 455
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getCurrentStorePage()I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->currentStorePage:I

    .line 457
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getStoreResults()Ljava/util/List;

    move-result-object p1

    .line 458
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 460
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 461
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 462
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getViewPositionForStoreSectionHeader()I

    move-result v3

    .line 465
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->updateStoreResultsWithNewResults(Ljava/util/List;)V

    const/4 v4, 0x1

    if-lez v2, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-lez v0, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eq v5, v6, :cond_4

    if-lez v2, :cond_3

    add-int/2addr v2, v4

    .line 470
    invoke-virtual {p0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_3

    :cond_3
    add-int/2addr v0, v4

    .line 472
    invoke-virtual {p0, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_3

    :cond_4
    add-int/2addr v3, v4

    .line 479
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_2
    if-ge v1, v4, :cond_6

    .line 481
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;

    .line 482
    invoke-virtual {v5}, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->getStoreItem()Lcom/amazon/kcp/search/store/StoreContentMetadata;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kcp/search/store/StoreContentMetadata;

    invoke-virtual {v6}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    add-int v5, v3, v1

    .line 483
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-le v0, v2, :cond_7

    add-int/2addr v3, v2

    sub-int/2addr v0, v2

    .line 488
    invoke-virtual {p0, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_3

    :cond_7
    if-le v2, v0, :cond_8

    add-int/2addr v3, v0

    sub-int/2addr v2, v0

    .line 490
    invoke-virtual {p0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_8
    :goto_3
    return-void
.end method

.method private updateStoreResultsWithNewResults(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 497
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/store/StoreContentMetadata;

    .line 498
    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    .line 501
    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getIFile()Ljava/lang/String;

    move-result-object v2

    .line 502
    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getBookCategory()Ljava/lang/String;

    move-result-object v3

    const-string v4, "collection"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 503
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 504
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_1

    :cond_0
    move-object v2, v4

    .line 507
    :goto_1
    iget-object v3, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    new-instance v5, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;

    new-instance v6, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    .line 508
    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-direct {v5, v0, v6, v4, v2}, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;-><init>(Lcom/amazon/kcp/search/store/StoreContentMetadata;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSuggestions(Lcom/amazon/kcp/search/SearchProvider;Z)V
    .locals 4

    .line 383
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->areSuggestionsPending()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->isSearchAsYouTypeRemovalEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 391
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    const-string p1, ""

    .line 392
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->suggestionsQuery:Ljava/lang/String;

    const/4 p1, -0x1

    .line 393
    iput p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->suggestionsId:I

    return-void

    .line 397
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getSuggestions()Ljava/util/List;

    move-result-object p2

    .line 398
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getQuery()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->suggestionsQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 402
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 403
    iget-object v2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 404
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 405
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 408
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_6

    .line 417
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 420
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getId()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->suggestionsId:I

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    .line 424
    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchProvider;->getQuery()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->suggestionsQuery:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->reset()V

    .line 177
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method collapseLibraryResults()V
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->displayLibraryResultsInContainer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResultsViewHolder:Lcom/amazon/kcp/search/views/LibraryResultsViewHolder;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/amazon/kcp/search/views/LibraryResultsViewHolder;->collapseLibraryResults()V

    :cond_0
    return-void
.end method

.method public getBookId(I)Lcom/amazon/kindle/model/content/IBookID;
    .locals 2

    .line 237
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getItemType(I)Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    move-result-object v0

    .line 239
    sget-object v1, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->LIBRARY_RESULT:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    if-ne v0, v1, :cond_0

    .line 240
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getLibraryResult(I)Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    return-object p1

    .line 241
    :cond_0
    sget-object v1, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_RESULT:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    if-ne v0, v1, :cond_1

    .line 242
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getStoreResult(I)Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getInlineSearchSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeFetchStatus:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    sget-object v1, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->NOT_LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    if-eq v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 288
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getLibrarySectionSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getSpellCorrectionInfoSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 294
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getItemType(I)Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1
.end method

.method getLibraryResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResults:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getStoreResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isHeader(I)Z
    .locals 1

    .line 208
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getItemType(I)Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    move-result-object p1

    .line 209
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->LIBRARY_SECTION_HEADER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_SECTION_HEADER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method isItemInStoreResultSection(I)Z
    .locals 1

    .line 229
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getItemType(I)Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    move-result-object p1

    .line 230
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_SECTION_HEADER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_RESULT:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_LOADING:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method isLibraryContainer(I)Z
    .locals 1

    .line 219
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getItemType(I)Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    move-result-object p1

    .line 220
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->LIBRARY_RESULT_CONTAINER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 342
    instance-of v0, p1, Lcom/amazon/kcp/search/views/SearchResultSectionHeaderViewHolder;

    if-eqz v0, :cond_0

    .line 343
    check-cast p1, Lcom/amazon/kcp/search/views/SearchResultSectionHeaderViewHolder;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/views/SearchResultSectionHeaderViewHolder;->bindData()V

    goto/16 :goto_0

    .line 344
    :cond_0
    instance-of v0, p1, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 345
    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getLibraryResult(I)Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v0

    .line 346
    iget-object v3, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ne p2, v3, :cond_1

    const/4 v1, 0x1

    .line 347
    :cond_1
    check-cast p1, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;->bindData(Lcom/amazon/kindle/model/content/IListableBook;Z)V

    goto :goto_0

    .line 348
    :cond_2
    instance-of v0, p1, Lcom/amazon/kcp/search/views/LibraryResultsViewHolder;

    if-eqz v0, :cond_3

    .line 349
    check-cast p1, Lcom/amazon/kcp/search/views/LibraryResultsViewHolder;

    iget-object p2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResults:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/views/LibraryResultsViewHolder;->bindData(Ljava/util/List;)V

    goto :goto_0

    .line 350
    :cond_3
    instance-of v0, p1, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;

    if-eqz v0, :cond_4

    .line 351
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->inlineSearchSuggestions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 352
    check-cast p1, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->suggestionsQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;->bindData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_4
    instance-of v0, p1, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;

    if-eqz v0, :cond_6

    .line 354
    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getStorePosition(I)I

    move-result v0

    .line 355
    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getStoreResult(I)Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;

    move-result-object v3

    .line 356
    iget-object v4, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeFetchStatus:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    sget-object v4, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->NOT_LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    if-ne v0, v4, :cond_5

    const/4 v1, 0x1

    .line 357
    :cond_5
    check-cast p1, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;

    invoke-virtual {p1, v3, p2, v1}, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->bindData(Lcom/amazon/kcp/search/wayfinder/StoreContentMetadataResult;IZ)V

    goto :goto_0

    .line 358
    :cond_6
    instance-of p2, p1, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;

    if-eqz p2, :cond_7

    .line 359
    check-cast p1, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;

    iget-object p2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeFetchStatus:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    iget v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->numStorePages:I

    iget v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storePageSize:I

    mul-int v0, v0, v1

    iget v2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->currentStorePage:I

    mul-int v2, v2, v1

    invoke-virtual {p1, p2, v0, v2}, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;->bindData(Lcom/amazon/kcp/search/views/StorePageFetchStatus;II)V

    goto :goto_0

    .line 360
    :cond_7
    instance-of p2, p1, Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder;

    if-eqz p2, :cond_8

    .line 361
    check-cast p1, Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder;

    iget-object p2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder;->bindData(Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;Landroid/content/Context;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    .line 302
    invoke-static {p2}, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->get(I)Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    move-result-object p2

    .line 304
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->LIBRARY_SECTION_HEADER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_6

    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_SECTION_HEADER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    if-ne p2, v0, :cond_0

    goto/16 :goto_0

    .line 308
    :cond_0
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->INLINE_SEARCH_SUGGESTIONS:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    if-ne p2, v0, :cond_1

    .line 309
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kcp/search/R$layout;->wayfinder_search_suggestion_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 310
    new-instance p2, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;

    new-instance v0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SearchSuggestionClickHandler;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SearchSuggestionClickHandler;-><init>(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)V

    invoke-direct {p2, p1, v0}, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;-><init>(Landroid/view/View;Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$ClickHandler;)V

    goto/16 :goto_1

    .line 311
    :cond_1
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->SPELL_CORRECTION:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    if-ne p2, v0, :cond_2

    .line 312
    invoke-static {}, Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder;->getLayoutId()I

    move-result p2

    .line 313
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 314
    new-instance p2, Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder;

    new-instance v0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SpellCorrectionClickHandler;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$SpellCorrectionClickHandler;-><init>(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)V

    invoke-direct {p2, p1, v0}, Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder;-><init>(Landroid/view/View;Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder$ClickHandler;)V

    goto/16 :goto_1

    .line 316
    :cond_2
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->LIBRARY_RESULT:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    if-ne p2, v0, :cond_3

    .line 317
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kcp/search/R$layout;->search_result_content:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 318
    new-instance p2, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->context:Landroid/content/Context;

    new-instance v1, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$LibraryResultInteractionObserver;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$LibraryResultInteractionObserver;-><init>(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)V

    invoke-direct {p2, p1, v0, v1}, Lcom/amazon/kcp/search/views/LibrarySearchResultViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;)V

    goto/16 :goto_1

    .line 319
    :cond_3
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->LIBRARY_RESULT_CONTAINER:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    if-ne p2, v0, :cond_4

    .line 320
    new-instance p1, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;

    iget-object p2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/amazon/kcp/search/views/expandable/ExpandableLibraryResultsView;-><init>(Landroid/content/Context;)V

    .line 322
    sget p2, Lcom/amazon/kcp/search/R$id;->lib_search_container:I

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->setResId(I)V

    .line 323
    sget p2, Lcom/amazon/kcp/search/R$id;->lib_book_cover_container:I

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->setResIdForGridView(I)V

    .line 324
    sget p2, Lcom/amazon/kcp/search/R$id;->lib_search_view_all_results:I

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/views/expandable/ExpandableGridWidget;->setResIdForExpandBtn(I)V

    .line 325
    new-instance p2, Lcom/amazon/kcp/search/views/LibraryResultsViewHolder;

    new-instance v0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$LibraryResultInteractionObserver;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$LibraryResultInteractionObserver;-><init>(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)V

    invoke-direct {p2, p1, v0}, Lcom/amazon/kcp/search/views/LibraryResultsViewHolder;-><init>(Lcom/amazon/kcp/search/views/LibraryResultsView;Lcom/amazon/kcp/search/views/LibraryItemInteractionObserver;)V

    iput-object p2, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->libraryResultsViewHolder:Lcom/amazon/kcp/search/views/LibraryResultsViewHolder;

    goto :goto_1

    .line 327
    :cond_4
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->STORE_RESULT:Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;

    if-ne p2, v0, :cond_5

    .line 328
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kcp/search/R$layout;->search_result_content_store:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 329
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$drawable;->library_book_row_default_cover:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeDefaultCover:Landroid/graphics/drawable/Drawable;

    .line 330
    new-instance p2, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;

    iget-object v4, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->coverCache:Lcom/amazon/kcp/cover/ICoverCacheManager;

    iget-object v6, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeDefaultCover:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->theme:Lcom/amazon/kindle/krx/theme/Theme;

    new-instance v8, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$StoreResultClickHandler;

    invoke-direct {v8, p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter$StoreResultClickHandler;-><init>(Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;)V

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/amazon/kcp/cover/ICoverCacheManager;Landroid/graphics/drawable/Drawable;Lcom/amazon/kindle/krx/theme/Theme;Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder$ClickHandler;)V

    goto :goto_1

    .line 332
    :cond_5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kcp/search/R$layout;->search_result_content_store_loading:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 333
    new-instance p2, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p1, v0}, Lcom/amazon/kcp/search/views/StoreSearchResultOnFetchViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;)V

    goto :goto_1

    .line 305
    :cond_6
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 306
    invoke-static {}, Lcom/amazon/kcp/search/views/SearchResultSectionHeaderViewHolder;->getHeaderLayoutId()I

    move-result v2

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 307
    new-instance v0, Lcom/amazon/kcp/search/views/SearchResultSectionHeaderViewHolder;

    invoke-virtual {p2}, Lcom/amazon/kcp/search/wayfinder/SearchRecyclerItemType;->getSection()Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kcp/search/views/SearchResultSectionHeaderViewHolder;-><init>(Landroid/view/View;Lcom/amazon/kcp/search/wayfinder/SearchResultSectionType;Landroid/content/Context;)V

    move-object p2, v0

    :goto_1
    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 368
    instance-of v0, p1, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;

    if-eqz v0, :cond_0

    .line 369
    check-cast p1, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/views/StoreSearchResultViewHolder;->cancelCoverUpdates()V

    :cond_0
    return-void
.end method

.method public setInteractionHandler(Lcom/amazon/kcp/search/SearchInteractionHandler;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->interactionHandler:Lcom/amazon/kcp/search/SearchInteractionHandler;

    return-void
.end method

.method public setStoreFetchStatus(Lcom/amazon/kcp/search/views/StorePageFetchStatus;)V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeFetchStatus:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    if-ne p1, v0, :cond_0

    return-void

    .line 252
    :cond_0
    sget-object v1, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->NOT_LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    const/4 v2, 0x2

    if-ne p1, v1, :cond_3

    .line 253
    sget-object v1, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->BLOCKED:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/kcp/search/views/StorePageFetchStatus;->LOADING:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    if-ne v0, v1, :cond_6

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 256
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getViewPositionForStoreSectionHeader()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    .line 258
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getViewPositionForStoreOnFetchItem()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_5

    .line 262
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 264
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getViewPositionForStoreSectionHeader()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 266
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getViewPositionForStoreOnFetchItem()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 269
    :cond_5
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->getViewPositionForStoreOnFetchItem()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 271
    :cond_6
    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->storeFetchStatus:Lcom/amazon/kcp/search/views/StorePageFetchStatus;

    return-void
.end method

.method public update(Lcom/amazon/kcp/search/SearchProvider;ZZZZ)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p3}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->updateSuggestions(Lcom/amazon/kcp/search/SearchProvider;Z)V

    .line 166
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->updateSpellCorrection(Lcom/amazon/kcp/search/SearchProvider;)V

    .line 167
    invoke-direct {p0, p1, p4}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->updateLibraryResults(Lcom/amazon/kcp/search/SearchProvider;Z)V

    .line 168
    invoke-direct {p0, p1, p5}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->updateStoreResults(Lcom/amazon/kcp/search/SearchProvider;Z)V

    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
