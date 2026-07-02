.class public Lcom/amazon/kcp/library/LibraryCursorFactory;
.super Ljava/lang/Object;
.source "LibraryCursorFactory.java"


# static fields
.field private static final AUTHOR_PRONUNCIATION:Ljava/lang/String;

.field private static final DEFAULT_COLUMNS:[Ljava/lang/String;

.field private static final IDONLY_COLUMNS:[Ljava/lang/String;

.field private static final ID_LOADER_COLUMN:Ljava/lang/String;

.field private static final INVALID_RESULT:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_PRONUNCIATION:Ljava/lang/String;

.field private static volatile cachedResult:Lcom/amazon/kcp/library/CachedDisplayItems;

.field private static final cachedResultLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COALESCE(NULLIF("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",\'\'),"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") AS AUTHOR_P"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryCursorFactory;->AUTHOR_PRONUNCIATION:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") AS TITLE_P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryCursorFactory;->TITLE_PRONUNCIATION:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " AS _id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryCursorFactory;->ID_LOADER_COLUMN:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 60
    sget-object v0, Lcom/amazon/kcp/library/LibraryCursorFactory;->TITLE_PRONUNCIATION:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v1, v3

    sget-object v0, Lcom/amazon/kcp/library/LibraryCursorFactory;->AUTHOR_PRONUNCIATION:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v0, v1, v4

    const/4 v0, 0x3

    const-string v4, "*"

    aput-object v4, v1, v0

    sput-object v1, Lcom/amazon/kcp/library/LibraryCursorFactory;->DEFAULT_COLUMNS:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    .line 61
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/library/LibraryCursorFactory;->IDONLY_COLUMNS:[Ljava/lang/String;

    .line 63
    const-class v0, Lcom/amazon/kcp/library/LibraryCursorFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/LibraryCursorFactory;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResultLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResult:Lcom/amazon/kcp/library/CachedDisplayItems;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDisplayItems(Lcom/amazon/kindle/content/ILibraryService;Ljava/util/List;Ljava/util/List;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 393
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 397
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 398
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 400
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 401
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 403
    invoke-virtual {p3}, Lcom/amazon/kcp/library/LibraryContentFilter;->isConsolidated()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 404
    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryCursorFactoryPeriodicalHelper;->getMostRecentItemMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 405
    invoke-static {p1, v3}, Lcom/amazon/kcp/library/LibraryCursorFactoryPeriodicalHelper;->getPeriodicalsByGroupDisplayCoverAsin(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 408
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 409
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/model/content/IListableBook;

    .line 410
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v6

    .line 411
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/model/content/IListableBook;

    .line 417
    invoke-virtual {p3}, Lcom/amazon/kcp/library/LibraryContentFilter;->isConsolidated()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amazon/kcp/library/models/BookType;->isPeriodical()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 418
    invoke-static {v6}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v7, :cond_3

    .line 419
    invoke-interface {v7}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v6

    .line 420
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 421
    check-cast v5, Lcom/amazon/kindle/content/ContentMetadata;

    .line 422
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 421
    invoke-static {v5, v6}, Lcom/amazon/kcp/library/LibraryCursorFactoryPeriodicalHelper;->createPeriodicalDisplayCoverMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/List;)Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v5

    :cond_3
    if-eqz v1, :cond_4

    .line 427
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 428
    :goto_2
    invoke-static {v5, v6}, Lcom/amazon/kcp/library/LibraryCursorFactory;->createILibraryDisplayItem(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 434
    :cond_6
    instance-of p1, p3, Lcom/amazon/kcp/library/SeriesItemsFilter;

    if-eqz p1, :cond_7

    .line 435
    invoke-static {v2}, Lcom/amazon/kcp/library/LibraryCursorFactory;->getDisplayItemsWithComicTagsCheck(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 438
    :cond_7
    invoke-static {p0, v2, p3, v4}, Lcom/amazon/kcp/library/LibraryCursorFactory;->filterDisplayItems(Lcom/amazon/kindle/content/ILibraryService;Ljava/util/List;Lcom/amazon/kcp/library/LibraryContentFilter;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    if-eqz p4, :cond_8

    .line 441
    sget-object p1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p1, p4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 442
    invoke-static {p0}, Lcom/amazon/kcp/library/LibraryCursorFactory;->sortByRecency(Ljava/util/List;)V

    :cond_8
    return-object p0

    .line 394
    :cond_9
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static createDisplayItemsFromCache(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/LibraryLoaderKey;Z)Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Lcom/amazon/kcp/library/LibraryLoaderKey;",
            "Z)",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .line 367
    sget-object v0, Lcom/amazon/kcp/library/LibraryCursorFactory;->IDONLY_COLUMNS:[Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 370
    iget-object v0, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    check-cast v0, Lcom/amazon/kcp/library/AbstractCollectionItemsFilter;

    .line 371
    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractCollectionItemsFilter;->getColumns()[Ljava/lang/String;

    move-result-object v1

    .line 372
    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractCollectionItemsFilter;->getCollectionId()Ljava/lang/String;

    move-result-object v0

    move-object v6, v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    move-object v6, v0

    move-object v0, v1

    :goto_0
    const/4 v1, 0x0

    .line 378
    iget-object v3, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    iget-object v4, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    iget-object v5, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    iget v7, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->limit:I

    iget-object v8, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->originId:Ljava/lang/String;

    iget-object v9, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->groupingProvider:Lcom/amazon/kindle/content/GroupingQueryProvider;

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lcom/amazon/kcp/library/LibraryCursorFactory;->getCursorForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;[Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;

    move-result-object v2

    .line 380
    :try_start_0
    invoke-static {v2}, Lcom/amazon/kcp/library/LibraryCursorFactory;->getMetadataItemsFromCache(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v3

    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    .line 382
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object p2

    invoke-interface {p2, v0, v2}, Lcom/amazon/kindle/collections/ICollectionsManager;->getAllCollectionItems(Ljava/lang/String;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v2, :cond_2

    .line 384
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 385
    :cond_2
    iget-object p2, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    iget-object p1, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-static {p0, v3, v1, p2, p1}, Lcom/amazon/kcp/library/LibraryCursorFactory;->createDisplayItems(Lcom/amazon/kindle/content/ILibraryService;Ljava/util/List;Ljava/util/List;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 378
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v2, :cond_3

    .line 384
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
.end method

.method private static createDisplayItemsFromDB(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/LibraryLoaderKey;Z)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Lcom/amazon/kcp/library/LibraryLoaderKey;",
            "Z)",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/util/ConcurrentDataModificationException;
        }
    .end annotation

    .line 346
    iget-object v1, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    iget-object v2, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    iget-object v3, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v4, Lcom/amazon/kcp/library/LibraryCursorFactory;->DEFAULT_COLUMNS:[Ljava/lang/String;

    iget v5, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->limit:I

    iget-object v6, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->originId:Ljava/lang/String;

    iget-object v7, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->groupingProvider:Lcom/amazon/kindle/content/GroupingQueryProvider;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/amazon/kcp/library/LibraryCursorFactory;->getCursorForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;[Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;

    move-result-object v0

    .line 348
    :try_start_0
    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryCursorFactory;->getMetadataItemsFromDB(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 350
    iget-object p2, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    check-cast p2, Lcom/amazon/kcp/library/AbstractCollectionItemsFilter;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/AbstractCollectionItemsFilter;->getCollectionId()Ljava/lang/String;

    move-result-object p2

    .line 351
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v2

    invoke-interface {v2, p2, v0}, Lcom/amazon/kindle/collections/ICollectionsManager;->getAllCollectionItems(Ljava/lang/String;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 353
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 354
    :cond_1
    iget-object v0, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    iget-object p1, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-static {p0, v1, p2, v0, p1}, Lcom/amazon/kcp/library/LibraryCursorFactory;->createDisplayItems(Lcom/amazon/kindle/content/ILibraryService;Ljava/util/List;Ljava/util/List;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 346
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_2

    .line 353
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
.end method

.method private static createILibraryDisplayItem(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 1

    .line 531
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    new-instance p1, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;

    check-cast p0, Lcom/amazon/kindle/content/GroupMetadata;

    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/GroupMetadata;Lcom/amazon/kindle/content/dao/LibraryDataCache;)V

    return-object p1

    .line 534
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    check-cast p0, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/collections/dto/ICollectionItem;)V

    return-object v0
.end method

.method public static createLoaderForSortAndFilter(Landroid/content/Context;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Lcom/amazon/kcp/library/LibraryServiceCursorLoader;
    .locals 10

    .line 684
    new-instance v9, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/library/LibraryServiceCursorLoader;-><init>(Landroid/content/Context;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)V

    return-object v9
.end method

.method private static createLoaderKey(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/content/GroupingQueryProvider;)Lcom/amazon/kcp/library/LibraryLoaderKey;
    .locals 18

    .line 213
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getPredicate()Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Lcom/amazon/kcp/library/LibraryLoaderKey;

    const/4 v6, -0x1

    invoke-interface/range {p0 .. p0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kcp/library/LibraryLoaderKey;-><init>(Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)V

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/LibraryLoaderKey;

    invoke-interface/range {p0 .. p0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v16

    move-object v9, v0

    move-object/from16 v10, p6

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v17, p7

    invoke-direct/range {v9 .. v17}, Lcom/amazon/kcp/library/LibraryLoaderKey;-><init>(Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)V

    .line 219
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loader key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method static filterDisplayItems(Lcom/amazon/kindle/content/ILibraryService;Ljava/util/List;Lcom/amazon/kcp/library/LibraryContentFilter;Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 503
    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v2

    .line 504
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getPredicate()Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    move-result-object v3

    .line 506
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 507
    check-cast v1, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, p2, v2}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->applyFilter(Lcom/amazon/kcp/library/LibraryContentFilter;Ljava/util/List;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 509
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 513
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    check-cast v1, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;

    invoke-virtual {v1, p2, p0}, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->applyFilter(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/content/ILibraryService;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 516
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 520
    invoke-interface {v3, v1}, Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;->matches(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static filterDisplayItemsWithPredicate(Ljava/util/List;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    if-eqz p1, :cond_0

    .line 261
    invoke-interface {p1, v1}, Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;->matches(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static filterDisplayItemsWithPredicateAndApplyLimit(Ljava/util/List;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;",
            "I)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 247
    invoke-static {p0, p1}, Lcom/amazon/kcp/library/LibraryCursorFactory;->filterDisplayItemsWithPredicate(Ljava/util/List;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;)Ljava/util/List;

    move-result-object p0

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 250
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, p2, :cond_1

    const/4 p1, 0x0

    .line 251
    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getCursorForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;[Ljava/lang/String;IILjava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 582
    sget-object v8, Lcom/amazon/kindle/content/AllGrouping;->INSTANCE:Lcom/amazon/kindle/content/AllGrouping;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/library/LibraryCursorFactory;->getCursorForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;[Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getCursorForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;[Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;
    .locals 12

    move-object v0, p1

    move-object v1, p2

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 623
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->newInstance()Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->withFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    invoke-virtual {v2, p1}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->withGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    move/from16 v0, p5

    .line 624
    invoke-virtual {v2, v0}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->withLimit(I)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->withOffset(I)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->withOriginId(Ljava/lang/String;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    move-object v0, p3

    invoke-virtual {v2, p3}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->withSortType(Lcom/amazon/kcp/library/LibrarySortType;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    .line 625
    invoke-interface {p0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->withUserId(Ljava/lang/String;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->buildModel()Lcom/amazon/kcp/library/query/ILibraryQueryModel;

    move-result-object v0

    .line 627
    invoke-interface {v0}, Lcom/amazon/kcp/library/query/ILibraryQueryModel;->getTable()Ljava/lang/String;

    move-result-object v3

    .line 629
    invoke-interface {v0}, Lcom/amazon/kcp/library/query/ILibraryQueryModel;->getSelection()Ljava/lang/String;

    move-result-object v5

    .line 630
    invoke-interface {v0}, Lcom/amazon/kcp/library/query/ILibraryQueryModel;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v6

    .line 632
    invoke-interface {v0}, Lcom/amazon/kcp/library/query/ILibraryQueryModel;->getLimit()Lcom/amazon/kindle/content/dao/ResultsLimit;

    move-result-object v7

    .line 634
    invoke-interface {v0}, Lcom/amazon/kcp/library/query/ILibraryQueryModel;->getSortBy()Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v2

    .line 637
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->shouldGroupSeries()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v2

    move-object v2, p0

    move-object/from16 v4, p4

    move-object v10, v0

    move-object/from16 v11, p8

    .line 638
    invoke-interface/range {v1 .. v11}, Lcom/amazon/kindle/content/IGroupService;->wrapLibraryQuery(Lcom/amazon/kindle/content/ILibraryService;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 642
    :cond_1
    invoke-virtual {v7}, Lcom/amazon/kindle/content/dao/ResultsLimit;->getSqlLimitParameter()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, v3

    move-object/from16 v3, p4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v0

    .line 641
    invoke-interface/range {v1 .. v9}, Lcom/amazon/kindle/content/ILibraryService;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCursorForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;[Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;
    .locals 9

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 600
    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/library/LibraryCursorFactory;->getCursorForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;[Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayItems(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/LibraryLoaderKey;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Lcom/amazon/kcp/library/LibraryLoaderKey;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/util/ConcurrentDataModificationException;
        }
    .end annotation

    .line 289
    iget-object v0, p1, Lcom/amazon/kcp/library/LibraryLoaderKey;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    instance-of v0, v0, Lcom/amazon/kcp/library/AbstractCollectionItemsFilter;

    .line 290
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->isCacheInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-static {p0, p1, v0}, Lcom/amazon/kcp/library/LibraryCursorFactory;->createDisplayItemsFromCache(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/LibraryLoaderKey;Z)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 294
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/amazon/kcp/library/LibraryCursorFactory;->createDisplayItemsFromDB(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/LibraryLoaderKey;Z)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayItems(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibraryLoaderKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Lcom/amazon/kcp/library/ILibraryItemQuery;",
            "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Lcom/amazon/kcp/library/LibraryLoaderKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/util/ConcurrentDataModificationException;
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 229
    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/ILibraryItemQuery;->execute(Lcom/amazon/kindle/krx/library/LibraryGroupType;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 232
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryItemQuery;->canCombineWithLegacyQuery()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 233
    :cond_1
    invoke-static {p0, p4}, Lcom/amazon/kcp/library/LibraryCursorFactory;->getDisplayItems(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/LibraryLoaderKey;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 236
    :cond_2
    sget-object p0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    if-eq p3, p0, :cond_3

    .line 237
    new-instance p0, Lcom/amazon/kcp/library/SeriesGroupTypeComparator;

    invoke-direct {p0}, Lcom/amazon/kcp/library/SeriesGroupTypeComparator;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v0
.end method

.method private static getDisplayItemsWithComicTagsCheck(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 451
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 452
    invoke-interface {v2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isComic()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-object p0

    .line 460
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 461
    instance-of v2, v1, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    if-eqz v2, :cond_3

    .line 462
    move-object v2, v1

    check-cast v2, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/content/ContentMetadata;->setIsComic(Z)V

    .line 464
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private static getMetadataItemsFromCache(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 311
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 314
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v1

    .line 316
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 317
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 318
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 321
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getBook(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    if-nez v3, :cond_2

    .line 323
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getGroup(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_1

    .line 326
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static getMetadataItemsFromDB(Landroid/database/Cursor;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/util/ConcurrentDataModificationException;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 301
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 304
    :cond_0
    invoke-static {p0}, Lcom/amazon/kcp/util/LibraryCursorUtils;->getAllContentMetadata(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getNumberOfLibraryItemsFromCache(Lcom/amazon/kcp/library/LibraryContentFilter;)Ljava/lang/Long;
    .locals 6

    const-wide/16 v0, 0x0

    .line 112
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getBookList()Ljava/util/List;

    move-result-object v1

    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 115
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static isCachedResultReusable(Lcom/amazon/kcp/library/LibraryLoaderKey;)Z
    .locals 4

    .line 270
    sget-object v0, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResult:Lcom/amazon/kcp/library/CachedDisplayItems;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 272
    monitor-exit v0

    return v2

    .line 275
    :cond_0
    sget-object v1, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResult:Lcom/amazon/kcp/library/CachedDisplayItems;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/CachedDisplayItems;->getKey()Lcom/amazon/kcp/library/LibraryLoaderKey;

    move-result-object v1

    .line 276
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    iget-object v0, v1, Lcom/amazon/kcp/library/LibraryLoaderKey;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne v0, v3, :cond_2

    iget-object v0, v1, Lcom/amazon/kcp/library/LibraryLoaderKey;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 279
    invoke-virtual {v0, v3}, Lcom/amazon/kcp/library/LibraryContentFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/amazon/kcp/library/LibraryLoaderKey;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    if-ne v0, v3, :cond_2

    iget v0, v1, Lcom/amazon/kcp/library/LibraryLoaderKey;->limit:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v3, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->limit:I

    if-ne v0, v3, :cond_2

    :cond_1
    iget-object v0, v1, Lcom/amazon/kcp/library/LibraryLoaderKey;->originId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->originId:Ljava/lang/String;

    .line 282
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/amazon/kcp/library/LibraryLoaderKey;->userId:Ljava/lang/String;

    iget-object p0, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->userId:Ljava/lang/String;

    .line 283
    invoke-static {v0, p0}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :catchall_0
    move-exception p0

    .line 276
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static loadLibraryItemsForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "I",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/ILibraryItemQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/util/ConcurrentDataModificationException;
        }
    .end annotation

    .line 134
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryCursorFactory;->validArgs(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 138
    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    sget-object v8, Lcom/amazon/kindle/content/AllGrouping;->INSTANCE:Lcom/amazon/kindle/content/AllGrouping;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lcom/amazon/kcp/library/LibraryCursorFactory;->createLoaderKey(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/content/GroupingQueryProvider;)Lcom/amazon/kcp/library/LibraryLoaderKey;

    move-result-object p5

    .line 143
    invoke-static {p5}, Lcom/amazon/kcp/library/LibraryCursorFactory;->isCachedResultReusable(Lcom/amazon/kcp/library/LibraryLoaderKey;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    sget-object p0, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResult:Lcom/amazon/kcp/library/CachedDisplayItems;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/CachedDisplayItems;->getKey()Lcom/amazon/kcp/library/LibraryLoaderKey;

    move-result-object p0

    .line 146
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getPredicate()Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 147
    sget-object p0, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResult:Lcom/amazon/kcp/library/CachedDisplayItems;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/CachedDisplayItems;->getListOfItems()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getPredicate()Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/amazon/kcp/library/LibraryCursorFactory;->filterDisplayItemsWithPredicateAndApplyLimit(Ljava/util/List;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;I)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 149
    :cond_1
    iget p1, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->limit:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    iget p0, p0, Lcom/amazon/kcp/library/LibraryLoaderKey;->limit:I

    if-eq p0, p4, :cond_2

    sget-object p0, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResult:Lcom/amazon/kcp/library/CachedDisplayItems;

    .line 150
    invoke-virtual {p0}, Lcom/amazon/kcp/library/CachedDisplayItems;->getListOfItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p4, p0, :cond_2

    .line 151
    sget-object p0, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResult:Lcom/amazon/kcp/library/CachedDisplayItems;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/CachedDisplayItems;->getListOfItems()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 153
    :cond_2
    sget-object p0, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResult:Lcom/amazon/kcp/library/CachedDisplayItems;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/CachedDisplayItems;->getListOfItems()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 158
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/library/LibraryCursorFactory;->resetCachedResult()V

    .line 159
    new-instance v1, Lcom/amazon/kcp/library/CachedDisplayItems;

    invoke-static {p0, p6, p1, p3, p5}, Lcom/amazon/kcp/library/LibraryCursorFactory;->getDisplayItems(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibraryLoaderKey;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p5, p0}, Lcom/amazon/kcp/library/CachedDisplayItems;-><init>(Lcom/amazon/kcp/library/LibraryLoaderKey;Ljava/util/List;)V

    sput-object v1, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResult:Lcom/amazon/kcp/library/CachedDisplayItems;

    .line 161
    sget-object p0, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResult:Lcom/amazon/kcp/library/CachedDisplayItems;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/CachedDisplayItems;->getListOfItems()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getPredicate()Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/amazon/kcp/library/LibraryCursorFactory;->filterDisplayItemsWithPredicateAndApplyLimit(Ljava/util/List;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;I)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static loadLibraryItemsForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;Ljava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/ILibraryItemQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/util/ConcurrentDataModificationException;
        }
    .end annotation

    .line 83
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryCursorFactory;->validArgs(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 87
    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/library/LibraryCursorFactory;->loadLibraryItemsForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Ljava/util/List;

    move-result-object p0

    .line 90
    new-instance p3, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;

    invoke-direct {p3, p1, p2, p4}, Lcom/amazon/kcp/library/LibraryItemsCountCache$Key;-><init>(Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Ljava/lang/String;)V

    if-nez p0, :cond_1

    const-wide/16 p1, 0x0

    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    int-to-long p1, p1

    .line 92
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/library/LibraryItemsCountCache;->getInstance()Lcom/amazon/kcp/library/LibraryItemsCountCache;

    move-result-object p4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static loadLibraryItemsWithoutCachingResult(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "I",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/ILibraryItemQuery;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/util/ConcurrentDataModificationException;
        }
    .end annotation

    .line 176
    sget-object v7, Lcom/amazon/kindle/content/AllGrouping;->INSTANCE:Lcom/amazon/kindle/content/AllGrouping;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/amazon/kcp/library/LibraryCursorFactory;->loadLibraryItemsWithoutCachingResult(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/content/GroupingQueryProvider;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static loadLibraryItemsWithoutCachingResult(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/content/GroupingQueryProvider;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ILibraryService;",
            "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "I",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/ILibraryItemQuery;",
            "Lcom/amazon/kindle/content/GroupingQueryProvider;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/util/ConcurrentDataModificationException;
        }
    .end annotation

    .line 191
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryCursorFactory;->validArgs(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 195
    :cond_0
    invoke-static/range {p0 .. p7}, Lcom/amazon/kcp/library/LibraryCursorFactory;->createLoaderKey(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/content/GroupingQueryProvider;)Lcom/amazon/kcp/library/LibraryLoaderKey;

    move-result-object p5

    .line 196
    invoke-static {p0, p6, p1, p3, p5}, Lcom/amazon/kcp/library/LibraryCursorFactory;->getDisplayItems(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/ILibraryItemQuery;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibraryLoaderKey;)Ljava/util/List;

    move-result-object p0

    .line 197
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getPredicate()Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    move-result-object p1

    .line 196
    invoke-static {p0, p1, p4}, Lcom/amazon/kcp/library/LibraryCursorFactory;->filterDisplayItemsWithPredicateAndApplyLimit(Ljava/util/List;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected static queryNumberOfItemsFromDatabase(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/LibraryContentFilter;)J
    .locals 9

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    return-wide v0

    .line 658
    :cond_0
    :try_start_0
    sget-object v3, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    sget-object v5, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v6, -0x1

    const-string v7, "All"

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-static/range {v2 .. v8}, Lcom/amazon/kcp/library/LibraryCursorFactory;->loadLibraryItemsWithoutCachingResult(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 661
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, p0

    :cond_1
    return-wide v0

    :catchall_0
    move-exception p0

    .line 663
    sget-object p1, Lcom/amazon/kcp/library/LibraryCursorFactory;->TAG:Ljava/lang/String;

    const-string v2, "Error getting library count from Database."

    invoke-static {p1, v2, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v0
.end method

.method public static declared-synchronized queryNumberOfLibraryItems(Lcom/amazon/kcp/library/LibraryContentFilter;)J
    .locals 3

    const-class v0, Lcom/amazon/kcp/library/LibraryCursorFactory;

    monitor-enter v0

    .line 104
    :try_start_0
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->isCacheInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-static {p0}, Lcom/amazon/kcp/library/LibraryCursorFactory;->getNumberOfLibraryItemsFromCache(Lcom/amazon/kcp/library/LibraryContentFilter;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    .line 107
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/amazon/kcp/library/LibraryCursorFactory;->queryNumberOfItemsFromDatabase(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/LibraryContentFilter;)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static refreshItem(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    .line 561
    sget-object v0, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResultLock:Ljava/lang/Object;

    monitor-enter v0

    .line 562
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResult:Lcom/amazon/kcp/library/CachedDisplayItems;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    .line 563
    sget-object v1, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResult:Lcom/amazon/kcp/library/CachedDisplayItems;

    invoke-virtual {v1, p0}, Lcom/amazon/kcp/library/CachedDisplayItems;->replaceIfExisting(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 565
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static resetCachedResult()V
    .locals 2

    .line 539
    sget-object v0, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResultLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 540
    :try_start_0
    sput-object v1, Lcom/amazon/kcp/library/LibraryCursorFactory;->cachedResult:Lcom/amazon/kcp/library/CachedDisplayItems;

    .line 541
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static sortByRecency(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 470
    new-instance v0, Lcom/amazon/kcp/library/LibraryCursorFactory$1;

    invoke-direct {v0}, Lcom/amazon/kcp/library/LibraryCursorFactory$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method static validArgs(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;)Z
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 203
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kcp/library/LibraryCursorFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Arguments, libraryService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", groupType: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", filter: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
