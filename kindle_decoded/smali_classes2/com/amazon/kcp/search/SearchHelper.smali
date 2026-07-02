.class public Lcom/amazon/kcp/search/SearchHelper;
.super Ljava/lang/Object;
.source "SearchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/SearchHelper$LibrarySearchTask;
    }
.end annotation


# static fields
.field public static final BOOKS_BOOK_TYPES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kcp/library/models/BookType;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOOKS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIBRARY_SEARCH_NO_LIMIT_SIZE:I = -0x1

.field public static final NEWSSTAND_BOOK_TYPES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kcp/library/models/BookType;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERIES_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation
.end field

.field private static final STORE_QUERY_MIN_LENGTH_CJK:I = 0x1

.field private static final STORE_QUERY_MIN_LENGTH_DEFAULT:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

.field private searchBarSuggestionManager:Lcom/amazon/kcp/search/SearchBarSuggestionManager;

.field private final searchBarSuggestionResultsCallback:Lcom/amazon/kindle/callback/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/search/SearchBarSuggestionCompleteEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected searchResultListener:Lcom/amazon/kcp/search/ISearchResultListener;

.field private searchSuggestionManager:Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;

.field private spellCorrectionManager:Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;

.field private final spellCorrectionResultCallback:Lcom/amazon/kindle/callback/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;",
            ">;"
        }
    .end annotation
.end field

.field private storeSearchManager:Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;

.field private final storeSearchResultsCallback:Lcom/amazon/kindle/callback/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final storeSearchResultsCallbackOnLoadMore:Lcom/amazon/kindle/callback/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final storeSuggestionResultsCallback:Lcom/amazon/kindle/callback/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/search/store/SearchSuggestionCompleteEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 54
    const-class v0, Lcom/amazon/kcp/search/SearchHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/SearchHelper;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v2, v1, [Lcom/amazon/kcp/library/models/BookType;

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 61
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/kcp/search/SearchHelper;->BOOKS_BOOK_TYPES:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v1, [Lcom/amazon/kcp/library/models/BookType;

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    aput-object v2, v1, v5

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/amazon/kcp/search/SearchHelper;->NEWSSTAND_BOOK_TYPES:Ljava/util/ArrayList;

    .line 482
    new-instance v0, Lcom/amazon/kcp/search/SearchHelper$6;

    invoke-direct {v0}, Lcom/amazon/kcp/search/SearchHelper$6;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/SearchHelper;->SERIES_COMPARATOR:Ljava/util/Comparator;

    .line 496
    new-instance v0, Lcom/amazon/kcp/search/SearchHelper$7;

    invoke-direct {v0}, Lcom/amazon/kcp/search/SearchHelper$7;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/SearchHelper;->BOOKS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/search/ISearchResultListener;)V
    .locals 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/amazon/kcp/search/SearchHelper$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/SearchHelper$1;-><init>(Lcom/amazon/kcp/search/SearchHelper;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->storeSearchResultsCallback:Lcom/amazon/kindle/callback/ICallback;

    .line 96
    new-instance v0, Lcom/amazon/kcp/search/SearchHelper$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/SearchHelper$2;-><init>(Lcom/amazon/kcp/search/SearchHelper;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->spellCorrectionResultCallback:Lcom/amazon/kindle/callback/ICallback;

    .line 113
    new-instance v0, Lcom/amazon/kcp/search/SearchHelper$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/SearchHelper$3;-><init>(Lcom/amazon/kcp/search/SearchHelper;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->storeSuggestionResultsCallback:Lcom/amazon/kindle/callback/ICallback;

    .line 129
    new-instance v0, Lcom/amazon/kcp/search/SearchHelper$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/SearchHelper$4;-><init>(Lcom/amazon/kcp/search/SearchHelper;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->storeSearchResultsCallbackOnLoadMore:Lcom/amazon/kindle/callback/ICallback;

    .line 145
    new-instance v0, Lcom/amazon/kcp/search/SearchHelper$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/SearchHelper$5;-><init>(Lcom/amazon/kcp/search/SearchHelper;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->searchBarSuggestionResultsCallback:Lcom/amazon/kindle/callback/ICallback;

    .line 208
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHelper;->searchResultListener:Lcom/amazon/kcp/search/ISearchResultListener;

    .line 209
    invoke-static {}, Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;->getInstance()Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHelper;->storeSearchManager:Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;

    .line 210
    invoke-static {}, Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;->getInstance()Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHelper;->searchSuggestionManager:Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;

    .line 211
    invoke-static {}, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->getInstance()Lcom/amazon/kcp/search/SearchBarSuggestionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHelper;->searchBarSuggestionManager:Lcom/amazon/kcp/search/SearchBarSuggestionManager;

    .line 212
    invoke-static {}, Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;->getInstance()Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchHelper;->spellCorrectionManager:Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/SearchHelper;Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/model/content/IListableBook;Ljava/util/Map;)I
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/search/SearchHelper;->compareItems(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/model/content/IListableBook;Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method private compareItems(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/model/content/IListableBook;Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 652
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getId()Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getId()Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    sub-int/2addr v1, p3

    if-eqz v1, :cond_0

    return v1

    .line 659
    :cond_0
    check-cast p1, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object p1

    .line 660
    check-cast p2, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object p2

    .line 661
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private doesStringMatchContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ZZLjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 476
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 477
    :cond_0
    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_1
    if-nez p7, :cond_2

    if-eqz p6, :cond_2

    .line 478
    invoke-virtual {p3, p8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p4, p8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 479
    :cond_2
    invoke-interface {p5, p8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private filterOutLibraryResult(Ljava/lang/String;)Ljava/util/List;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    .line 336
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v0

    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 338
    invoke-static/range {p1 .. p1}, Lcom/amazon/kindle/util/StringUtils;->isArabicString(Ljava/lang/String;)Z

    move-result v11

    .line 339
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eqz v11, :cond_0

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->stripDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v15, v2

    const-string v2, "[,&]"

    const-string v3, " "

    .line 341
    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 343
    invoke-static {}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateEnabled()Z

    move-result v21

    .line 346
    invoke-virtual {v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getCompleteBookList()Ljava/util/List;

    move-result-object v2

    .line 347
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 348
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/amazon/kindle/content/ContentMetadata;

    .line 350
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v17

    .line 351
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v18

    .line 352
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableAuthor()Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_1

    move-object/from16 v19, v3

    goto :goto_2

    :cond_1
    move-object/from16 v19, v4

    :goto_2
    if-eqz v2, :cond_2

    move-object/from16 v20, v19

    goto :goto_3

    :cond_2
    move-object/from16 v20, v4

    :goto_3
    if-eqz v21, :cond_3

    .line 357
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/search/BookTypeSearchTermsMapKt;->getBookTypeSynonyms(Lcom/amazon/kcp/library/models/BookType;)Ljava/util/Set;

    move-result-object v2

    goto :goto_4

    .line 358
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    :goto_4
    move-object/from16 v22, v2

    .line 359
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v2, v3, :cond_9

    .line 360
    :cond_4
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UPDTID0"

    invoke-virtual {v2, v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 361
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 363
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const/16 v23, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    move-object/from16 v4, v17

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v22

    move-object/from16 v24, v1

    move-object v1, v8

    move v8, v11

    move/from16 v9, v23

    const/16 v23, 0x0

    move-object v10, v15

    .line 367
    invoke-direct/range {v2 .. v10}, Lcom/amazon/kcp/search/SearchHelper;->doesStringMatchContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ZZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 368
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 374
    :cond_6
    array-length v10, v14

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v10, :cond_8

    aget-object v25, v14, v9

    const/16 v26, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    move-object/from16 v4, v17

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v22

    move v8, v11

    move/from16 v27, v9

    move/from16 v9, v26

    move/from16 v26, v10

    move-object/from16 v10, v25

    .line 375
    invoke-direct/range {v2 .. v10}, Lcom/amazon/kcp/search/SearchHelper;->doesStringMatchContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ZZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v10, 0x0

    goto :goto_6

    :cond_7
    add-int/lit8 v9, v27, 0x1

    move/from16 v10, v26

    goto :goto_5

    :cond_8
    const/4 v10, 0x1

    :goto_6
    if-eqz v10, :cond_a

    .line 382
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    move-object/from16 v24, v1

    :cond_a
    :goto_7
    move-object/from16 v1, v24

    goto/16 :goto_1

    :cond_b
    move-object/from16 v24, v1

    const/16 v23, 0x0

    .line 387
    sget-object v1, Lcom/amazon/kcp/search/SearchHelper;->BOOKS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v13, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 388
    sget-object v1, Lcom/amazon/kcp/search/SearchHelper;->BOOKS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v12, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 391
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesContentGrouped()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 392
    invoke-virtual {v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getCompleteGroupList()Ljava/util/List;

    move-result-object v1

    .line 393
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 397
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/content/GroupMetadata;

    if-nez v4, :cond_c

    goto :goto_8

    .line 399
    :cond_c
    invoke-virtual {v4}, Lcom/amazon/kindle/content/GroupMetadata;->getAsinCount()I

    move-result v5

    if-gtz v5, :cond_d

    goto :goto_8

    :cond_d
    move-object/from16 v6, p0

    .line 406
    invoke-direct {v6, v0, v4}, Lcom/amazon/kcp/search/SearchHelper;->getFirstVisibleContentMetadataFromGroupItemsIfAny(Lcom/amazon/kindle/content/dao/LibraryDataCache;Lcom/amazon/kindle/content/GroupMetadata;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v7

    if-eqz v7, :cond_14

    const/4 v8, 0x1

    if-ne v5, v8, :cond_e

    .line 407
    invoke-virtual {v7}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_8

    .line 411
    :cond_e
    invoke-virtual {v4}, Lcom/amazon/kindle/content/GroupMetadata;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 412
    invoke-virtual {v4}, Lcom/amazon/kindle/content/GroupMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v7

    if-eqz v21, :cond_f

    .line 414
    invoke-virtual {v4}, Lcom/amazon/kindle/content/GroupMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v9

    invoke-static {v9}, Lcom/amazon/kcp/search/BookTypeSearchTermsMapKt;->getBookTypeSynonyms(Lcom/amazon/kcp/library/models/BookType;)Ljava/util/Set;

    move-result-object v9

    goto :goto_9

    .line 415
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    :goto_9
    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v10, ""

    const-string v16, ""

    move-object v11, v12

    move-object/from16 v12, p0

    move-object v8, v13

    move-object v13, v5

    move-object/from16 v22, v0

    move-object v0, v14

    move-object v14, v7

    move-object/from16 v34, v15

    move-object v15, v10

    move-object/from16 v17, v9

    move-object/from16 v20, v34

    .line 417
    invoke-direct/range {v12 .. v20}, Lcom/amazon/kcp/search/SearchHelper;->doesStringMatchContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ZZLjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 418
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_a
    move-object v14, v0

    move-object v13, v8

    move-object v12, v11

    move-object/from16 v0, v22

    move-object/from16 v15, v34

    goto :goto_8

    .line 423
    :cond_11
    array-length v10, v0

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v10, :cond_13

    aget-object v33, v0, v12

    const/16 v31, 0x0

    const/16 v32, 0x1

    const-string v28, ""

    const-string v29, ""

    move-object/from16 v25, p0

    move-object/from16 v26, v5

    move-object/from16 v27, v7

    move-object/from16 v30, v9

    .line 424
    invoke-direct/range {v25 .. v33}, Lcom/amazon/kcp/search/SearchHelper;->doesStringMatchContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;ZZLjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_12

    const/4 v10, 0x0

    goto :goto_c

    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_13
    const/4 v10, 0x1

    :goto_c
    if-eqz v10, :cond_10

    .line 431
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_14
    move-object/from16 v22, v0

    goto/16 :goto_8

    :cond_15
    move-object/from16 v6, p0

    move-object v11, v12

    move-object v8, v13

    .line 435
    sget-object v0, Lcom/amazon/kcp/search/SearchHelper;->SERIES_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 436
    sget-object v0, Lcom/amazon/kcp/search/SearchHelper;->SERIES_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, v24

    .line 437
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 438
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_d

    :cond_16
    move-object/from16 v6, p0

    move-object v11, v12

    move-object v8, v13

    move-object/from16 v0, v24

    .line 440
    :goto_d
    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 441
    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getFirstVisibleContentMetadataFromGroupItemsIfAny(Lcom/amazon/kindle/content/dao/LibraryDataCache;Lcom/amazon/kindle/content/GroupMetadata;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 2

    .line 453
    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 454
    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getBook(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsHidden()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static isNetworkAvailable()Z
    .locals 2

    .line 761
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    .line 762
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

.method public static meetBaseStoreQueryCriteria(Ljava/lang/String;Z)Z
    .locals 3

    .line 746
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 751
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 753
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isCjkText(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 756
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p0, v0, :cond_2

    if-eqz p1, :cond_3

    .line 757
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/search/SearchHelper;->isNetworkAvailable()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private searchAll(Lcom/amazon/kindle/content/filter/SQLQueryFilter;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 816
    sget-object v1, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;

    invoke-static {}, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->isLibrarySearchImprovementEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchHelper;->libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

    .line 817
    invoke-interface {v1, p1}, Lcom/amazon/kcp/library/IAndroidLibraryController;->search(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 818
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchHelper;->searchForItemResults(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;

    move-result-object p1

    .line 819
    :goto_0
    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/SearchHelper;->searchForGroupResults(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;

    move-result-object p2

    .line 820
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 821
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private searchAllByBookTypes(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/models/BookType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    .line 796
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 798
    sget-object v1, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;

    invoke-static {}, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->isLibrarySearchImprovementEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchHelper;->libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

    .line 799
    invoke-interface {v1, p1, p2}, Lcom/amazon/kcp/library/IAndroidLibraryController;->searchByBookTypes(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/amazon/kcp/library/BookTypeQueryFilter;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/library/BookTypeQueryFilter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 800
    invoke-direct {p0, v1}, Lcom/amazon/kcp/search/SearchHelper;->searchForItemResults(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;

    move-result-object p2

    .line 801
    :goto_0
    new-instance v1, Lcom/amazon/kcp/library/GroupResultLimitSizeQueryFilter;

    const/4 v2, -0x1

    invoke-direct {v1, p1, v2}, Lcom/amazon/kcp/library/GroupResultLimitSizeQueryFilter;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/amazon/kcp/search/SearchHelper;->searchForGroupResults(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;

    move-result-object p1

    .line 802
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 803
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private searchForGroupResults(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;"
        }
    .end annotation

    .line 831
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/IGroupService;->getGroups(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private searchForItemResults(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 835
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/ILibraryService;->searchForContent(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public static shouldQueryStore(Ljava/lang/String;Z)Z
    .locals 2

    .line 734
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isStoreAccessAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 738
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/search/SearchHelper;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p0, p1}, Lcom/amazon/kcp/search/SearchHelper;->meetBaseStoreQueryCriteria(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private sortedResult(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 618
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesContentGrouped()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 619
    new-instance p1, Lcom/amazon/kcp/search/SearchHelper$8;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kcp/search/SearchHelper$8;-><init>(Lcom/amazon/kcp/search/SearchHelper;Ljava/util/Map;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 641
    :cond_0
    new-instance p1, Lcom/amazon/kcp/search/SearchHelper$9;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kcp/search/SearchHelper$9;-><init>(Lcom/amazon/kcp/search/SearchHelper;Ljava/util/Map;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public executeLibrarySearch(Ljava/lang/String;)V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->searchResultListener:Lcom/amazon/kcp/search/ISearchResultListener;

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0}, Lcom/amazon/kcp/search/ISearchResultListener;->onLoadingLibraryResults()V

    .line 264
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchHelper;->generateLibrarySearchTask()Landroid/os/AsyncTask;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public executeSearch(Ljava/lang/String;ZIZLjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 242
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchHelper;->executeLibrarySearch(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p0 .. p6}, Lcom/amazon/kcp/search/SearchHelper;->executeStoreSearch(Ljava/lang/String;ZIZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public executeSearchSuggestions(Ljava/lang/String;)V
    .locals 2

    .line 782
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/search/SearchHelper;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->searchBarSuggestionManager:Lcom/amazon/kcp/search/SearchBarSuggestionManager;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchHelper;->searchBarSuggestionResultsCallback:Lcom/amazon/kindle/callback/ICallback;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->executeSuggestionSearch(Ljava/lang/String;Lcom/amazon/kindle/callback/ICallback;)V

    return-void

    .line 783
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->searchResultListener:Lcom/amazon/kcp/search/ISearchResultListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/search/ISearchResultListener;->onSearchBarSuggestionComplete(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public executeSpellCorrection(Ljava/lang/String;)V
    .locals 8

    .line 251
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->searchResultListener:Lcom/amazon/kcp/search/ISearchResultListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 254
    invoke-static {p1, v0}, Lcom/amazon/kcp/search/SearchHelper;->shouldQueryStore(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->searchResultListener:Lcom/amazon/kcp/search/ISearchResultListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/search/ISearchResultListener;->onSpellCorrectionRequestComplete(Ljava/lang/String;Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;)V

    return-void

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/search/SearchHelper;->spellCorrectionManager:Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/amazon/kcp/search/SearchHelper;->spellCorrectionResultCallback:Lcom/amazon/kindle/callback/ICallback;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;->search(Ljava/lang/String;IIZLcom/amazon/kindle/callback/ICallback;)V

    return-void
.end method

.method public executeStoreSearch(Ljava/lang/String;ZIZLjava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->searchResultListener:Lcom/amazon/kcp/search/ISearchResultListener;

    if-nez v0, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-static {p1, p2}, Lcom/amazon/kcp/search/SearchHelper;->shouldQueryStore(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1

    .line 281
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->searchResultListener:Lcom/amazon/kcp/search/ISearchResultListener;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kcp/search/ISearchResultListener;->onStoreSearchComplete(Ljava/lang/String;Ljava/util/List;ILcom/amazon/kcp/search/store/model/SpellCorrectionInfo;Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;)V

    return-void

    .line 285
    :cond_1
    iget-object p2, p0, Lcom/amazon/kcp/search/SearchHelper;->searchResultListener:Lcom/amazon/kcp/search/ISearchResultListener;

    invoke-interface {p2}, Lcom/amazon/kcp/search/ISearchResultListener;->onLoadingStoreResults()V

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 286
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/search/SearchHelper;->queryStoreResults(Ljava/lang/String;IZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method protected generateLibrarySearchTask()Landroid/os/AsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;>;"
        }
    .end annotation

    .line 770
    new-instance v0, Lcom/amazon/kcp/search/SearchHelper$LibrarySearchTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/search/SearchHelper$LibrarySearchTask;-><init>(Lcom/amazon/kcp/search/SearchHelper;Lcom/amazon/kcp/search/SearchHelper$1;)V

    return-object v0
.end method

.method protected getLibrarySearchResults(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

    if-nez v0, :cond_0

    .line 572
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/IAndroidLibraryController;

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

    .line 575
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 576
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 578
    invoke-interface {v1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBooksBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    iget-object p2, p0, Lcom/amazon/kcp/search/SearchHelper;->libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

    sget-object v1, Lcom/amazon/kcp/search/SearchHelper;->NEWSSTAND_BOOK_TYPES:Ljava/util/ArrayList;

    invoke-interface {p2, p1, v1}, Lcom/amazon/kcp/library/IAndroidLibraryController;->searchByBookTypes(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 581
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandBlocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 582
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesContentGrouped()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 583
    sget-object p2, Lcom/amazon/kcp/search/SearchHelper;->BOOKS_BOOK_TYPES:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/search/SearchHelper;->searchAllByBookTypes(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 585
    :cond_2
    iget-object p2, p0, Lcom/amazon/kcp/search/SearchHelper;->libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

    sget-object v1, Lcom/amazon/kcp/search/SearchHelper;->BOOKS_BOOK_TYPES:Ljava/util/ArrayList;

    invoke-interface {p2, p1, v1}, Lcom/amazon/kcp/library/IAndroidLibraryController;->searchByBookTypes(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0

    .line 592
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesContentGrouped()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 593
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isArabicString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 594
    new-instance v1, Lcom/amazon/kcp/library/ArabicBookResultLimitSizeQueryFilter;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->stripDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/amazon/kcp/library/ArabicBookResultLimitSizeQueryFilter;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/amazon/kcp/library/GroupResultLimitSizeQueryFilter;

    invoke-direct {v2, p1, p2}, Lcom/amazon/kcp/library/GroupResultLimitSizeQueryFilter;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lcom/amazon/kcp/search/SearchHelper;->searchAll(Lcom/amazon/kindle/content/filter/SQLQueryFilter;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 596
    :cond_4
    new-instance v1, Lcom/amazon/kcp/library/BookResultLimitSizeQueryFilter;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kcp/library/BookResultLimitSizeQueryFilter;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/amazon/kcp/library/GroupResultLimitSizeQueryFilter;

    invoke-direct {v2, p1, p2}, Lcom/amazon/kcp/library/GroupResultLimitSizeQueryFilter;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1, v2}, Lcom/amazon/kcp/search/SearchHelper;->searchAll(Lcom/amazon/kindle/content/filter/SQLQueryFilter;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    return-object v0

    .line 601
    :cond_5
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isArabicString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 602
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchHelper;->libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

    new-instance v2, Lcom/amazon/kcp/library/ArabicBookResultLimitSizeQueryFilter;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->stripDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Lcom/amazon/kcp/library/ArabicBookResultLimitSizeQueryFilter;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Lcom/amazon/kcp/library/IAndroidLibraryController;->search(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 604
    :cond_6
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchHelper;->libraryController:Lcom/amazon/kcp/library/IAndroidLibraryController;

    new-instance v2, Lcom/amazon/kcp/library/BookResultLimitSizeQueryFilter;

    invoke-direct {v2, p1, p2}, Lcom/amazon/kcp/library/BookResultLimitSizeQueryFilter;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Lcom/amazon/kcp/library/IAndroidLibraryController;->search(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    return-object v0
.end method

.method protected getTokenizedSearchResults(Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    .line 520
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[,&]"

    const-string v1, " "

    .line 521
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 522
    sget-object v1, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;

    .line 523
    invoke-static {}, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->isLibrarySearchImprovementEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 524
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->isCacheInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 526
    :goto_0
    array-length v4, v0

    if-ne v4, v3, :cond_3

    .line 528
    aget-object p1, v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 529
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    .line 531
    aget-object p1, v0, v2

    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchHelper;->filterOutLibraryResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 533
    :cond_2
    aget-object p1, v0, v2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/search/SearchHelper;->getLibrarySearchResults(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v1, :cond_4

    .line 538
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchHelper;->filterOutLibraryResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 540
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 541
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 544
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/search/SearchHelper;->getLibrarySearchResults(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 545
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/model/content/IListableBook;

    .line 546
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 551
    :cond_5
    array-length p1, v0

    .line 552
    array-length v5, v0

    :goto_2
    if-ge v2, v5, :cond_9

    aget-object v6, v0, v2

    .line 553
    invoke-virtual {p0, v6, p2}, Lcom/amazon/kcp/search/SearchHelper;->getLibrarySearchResults(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 554
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/model/content/IListableBook;

    .line 555
    invoke-interface {v7}, Lcom/amazon/kindle/model/content/IListableBook;->getId()Ljava/lang/String;

    move-result-object v8

    .line 556
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-nez v9, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    .line 557
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v3

    :goto_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v9, p1, :cond_6

    .line 559
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6

    .line 560
    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 566
    :cond_9
    invoke-direct {p0, v1, v4}, Lcom/amazon/kcp/search/SearchHelper;->sortedResult(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryStoreResults(Ljava/lang/String;IIZLjava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-lez p3, :cond_0

    .line 699
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->storeSearchManager:Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;

    iget-object v7, p0, Lcom/amazon/kcp/search/SearchHelper;->storeSearchResultsCallbackOnLoadMore:Lcom/amazon/kindle/callback/ICallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;->search(Ljava/lang/String;IIZLjava/util/List;Ljava/lang/String;Lcom/amazon/kindle/callback/ICallback;)V

    :cond_0
    return-void
.end method

.method protected queryStoreResults(Ljava/lang/String;IZLjava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-lez p2, :cond_0

    .line 680
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchHelper;->storeSearchManager:Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;

    const/4 v2, 0x1

    iget-object v7, p0, Lcom/amazon/kcp/search/SearchHelper;->storeSearchResultsCallback:Lcom/amazon/kindle/callback/ICallback;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;->search(Ljava/lang/String;IIZLjava/util/List;Ljava/lang/String;Lcom/amazon/kindle/callback/ICallback;)V

    :cond_0
    return-void
.end method

.method protected startLibrarySearch(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    .line 221
    sget-object v0, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;

    invoke-static {}, Lcom/amazon/kcp/debug/LibrarySearchImprovementDebugUtils;->isLibrarySearchImprovementEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/search/SearchHelper;->getTokenizedSearchResults(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/search/SearchHelper;->getLibrarySearchResults(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
