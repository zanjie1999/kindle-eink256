.class public Lcom/amazon/kcp/search/SearchProvider;
.super Ljava/lang/Object;
.source "SearchProvider.java"

# interfaces
.implements Lcom/amazon/kcp/search/ISearchResultListener;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/SearchProvider$Listener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kcp/search/SearchProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private currentStorePage:I

.field private enableSpellCorrection:Z

.field private fetchedSuggestions:Z

.field private fetchingNextStorePage:Z

.field private helper:Lcom/amazon/kcp/search/SearchHelper;

.field private id:I

.field private leverageStoreResults:Z

.field private libraryResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation
.end field

.field private libraryResultsFromStore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/SearchProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private query:Ljava/lang/String;

.field private queryStore:Z

.field private searchMetadata:Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;

.field private searchTimestamp:J

.field private spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

.field private storeFilterItemIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storePageSize:I

.field private storeResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private storeSortTypeId:Ljava/lang/String;

.field private suggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalStorePages:I

.field private totalStoreResults:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazon/kcp/search/SearchProvider;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 620
    new-instance v0, Lcom/amazon/kcp/search/SearchProvider$2;

    invoke-direct {v0}, Lcom/amazon/kcp/search/SearchProvider$2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/SearchProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/SearchProvider;-><init>(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kcp/search/SearchProvider;->queryStore:Z

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/search/SearchProvider;->storePageSize:I

    .line 635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/amazon/kcp/search/SearchProvider;->enableSpellCorrection:Z

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/amazon/kcp/search/SearchProvider;->searchTimestamp:J

    .line 637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/amazon/kcp/search/SearchProvider;->fetchedSuggestions:Z

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->storeFilterItemIds:Ljava/util/List;

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->storeSortTypeId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/kcp/search/SearchProvider$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchProvider;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/amazon/kcp/search/SearchHelper;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/SearchHelper;-><init>(Lcom/amazon/kcp/search/ISearchResultListener;)V

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/search/SearchProvider;->init(Ljava/lang/String;Lcom/amazon/kcp/search/SearchHelper;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/SearchProvider;Ljava/util/Collection;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchProvider;->handleContentUpdate(Ljava/util/Collection;)V

    return-void
.end method

.method private buildAndRankLibraryResults(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;)V"
        }
    .end annotation

    .line 920
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    .line 922
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 924
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 926
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private executeSearchCore()V
    .locals 8

    const/4 v0, 0x0

    .line 687
    iput v0, p0, Lcom/amazon/kcp/search/SearchProvider;->currentStorePage:I

    .line 688
    iput v0, p0, Lcom/amazon/kcp/search/SearchProvider;->totalStorePages:I

    const/4 v1, -0x1

    .line 689
    iput v1, p0, Lcom/amazon/kcp/search/SearchProvider;->totalStoreResults:I

    const/4 v1, 0x0

    .line 694
    iput-object v1, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    .line 695
    iput-object v1, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResultsFromStore:Ljava/util/List;

    .line 696
    iput-object v1, p0, Lcom/amazon/kcp/search/SearchProvider;->storeResults:Ljava/util/List;

    .line 697
    iput-object v1, p0, Lcom/amazon/kcp/search/SearchProvider;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    .line 699
    iget-boolean v1, p0, Lcom/amazon/kcp/search/SearchProvider;->enableSpellCorrection:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->isSpellCorrectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 700
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchProvider;->helper:Lcom/amazon/kcp/search/SearchHelper;

    iget-object v2, p0, Lcom/amazon/kcp/search/SearchProvider;->query:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/amazon/kcp/search/SearchProvider;->queryStore:Z

    iget v4, p0, Lcom/amazon/kcp/search/SearchProvider;->storePageSize:I

    iget-object v6, p0, Lcom/amazon/kcp/search/SearchProvider;->storeFilterItemIds:Ljava/util/List;

    iget-object v7, p0, Lcom/amazon/kcp/search/SearchProvider;->storeSortTypeId:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kcp/search/SearchHelper;->executeSearch(Ljava/lang/String;ZIZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private executeStoreSearch()V
    .locals 8

    const/4 v0, 0x0

    .line 711
    iput v0, p0, Lcom/amazon/kcp/search/SearchProvider;->currentStorePage:I

    .line 712
    iput v0, p0, Lcom/amazon/kcp/search/SearchProvider;->totalStorePages:I

    const/4 v1, -0x1

    .line 713
    iput v1, p0, Lcom/amazon/kcp/search/SearchProvider;->totalStoreResults:I

    const/4 v1, 0x0

    .line 714
    iput-object v1, p0, Lcom/amazon/kcp/search/SearchProvider;->storeResults:Ljava/util/List;

    .line 715
    iput-object v1, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResultsFromStore:Ljava/util/List;

    .line 717
    iget-boolean v1, p0, Lcom/amazon/kcp/search/SearchProvider;->enableSpellCorrection:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->isSpellCorrectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 719
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchProvider;->helper:Lcom/amazon/kcp/search/SearchHelper;

    iget-object v2, p0, Lcom/amazon/kcp/search/SearchProvider;->query:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/amazon/kcp/search/SearchProvider;->queryStore:Z

    iget v4, p0, Lcom/amazon/kcp/search/SearchProvider;->storePageSize:I

    iget-object v6, p0, Lcom/amazon/kcp/search/SearchProvider;->storeFilterItemIds:Ljava/util/List;

    iget-object v7, p0, Lcom/amazon/kcp/search/SearchProvider;->storeSortTypeId:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kcp/search/SearchHelper;->executeStoreSearch(Ljava/lang/String;ZIZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private static getNextId()I
    .locals 1

    .line 969
    sget-object v0, Lcom/amazon/kcp/search/SearchProvider;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method private handleContentUpdate(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 581
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentUpdate;

    .line 582
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentUpdate;->getMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 587
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 588
    :goto_1
    iget-object v5, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 589
    iget-object v5, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/model/content/IListableBook;

    .line 590
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 591
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 592
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    invoke-interface {v1, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 600
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchProvider;->notifyResultsAvailable()V

    :cond_5
    return-void
.end method

.method private init(Ljava/lang/String;Lcom/amazon/kcp/search/SearchHelper;)V
    .locals 2

    .line 946
    iput-object p2, p0, Lcom/amazon/kcp/search/SearchProvider;->helper:Lcom/amazon/kcp/search/SearchHelper;

    .line 947
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->query:Ljava/lang/String;

    .line 948
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->suggestions:Ljava/util/List;

    .line 949
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    const/4 p1, 0x0

    .line 950
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResultsFromStore:Ljava/util/List;

    .line 951
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/search/SearchProvider;->storeResults:Ljava/util/List;

    const/4 p2, 0x0

    .line 952
    iput-boolean p2, p0, Lcom/amazon/kcp/search/SearchProvider;->enableSpellCorrection:Z

    .line 953
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    .line 954
    iput p2, p0, Lcom/amazon/kcp/search/SearchProvider;->currentStorePage:I

    const/4 p1, -0x1

    .line 955
    iput p1, p0, Lcom/amazon/kcp/search/SearchProvider;->storePageSize:I

    .line 956
    iput p2, p0, Lcom/amazon/kcp/search/SearchProvider;->totalStorePages:I

    .line 957
    iput p1, p0, Lcom/amazon/kcp/search/SearchProvider;->totalStoreResults:I

    .line 958
    iput-boolean p2, p0, Lcom/amazon/kcp/search/SearchProvider;->fetchingNextStorePage:Z

    .line 959
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->listeners:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 960
    iput-wide v0, p0, Lcom/amazon/kcp/search/SearchProvider;->searchTimestamp:J

    .line 961
    iput-boolean p2, p0, Lcom/amazon/kcp/search/SearchProvider;->fetchedSuggestions:Z

    .line 962
    invoke-static {}, Lcom/amazon/kcp/search/SearchProvider;->getNextId()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/search/SearchProvider;->id:I

    .line 965
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private isInlineSearchSuggestionsEnabled()Z
    .locals 1

    .line 941
    sget-object v0, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;

    invoke-static {}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
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

    .line 930
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchProvider;->isInlineSearchSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
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

.method private leverageLocalStoreResultToLibrary()V
    .locals 7

    .line 737
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 738
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 739
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 740
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 741
    iget-object v4, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 742
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/model/content/IListableBook;

    .line 743
    instance-of v6, v5, Lcom/amazon/kindle/content/GroupMetadata;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->groupSeriesContent()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 744
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 746
    :cond_0
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 750
    :cond_1
    iget-object v4, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResultsFromStore:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 751
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/model/content/IListableBook;

    .line 752
    instance-of v6, v5, Lcom/amazon/kindle/content/GroupMetadata;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->groupSeriesContent()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 754
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 755
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 757
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 762
    :cond_3
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 765
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 767
    :cond_4
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 777
    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 778
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 774
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/amazon/kcp/search/SearchProvider;->buildAndRankLibraryResults(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method private notifyResultsAvailable()V
    .locals 4

    .line 677
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->isLibrarySearchPending()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->isStoreSearchPending()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 678
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchProvider;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/search/SearchProvider$Listener;

    .line 679
    iget-object v3, p0, Lcom/amazon/kcp/search/SearchProvider;->query:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/amazon/kcp/search/SearchProvider$Listener;->onResultsAvailable(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 681
    iget-object v3, p0, Lcom/amazon/kcp/search/SearchProvider;->query:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/amazon/kcp/search/SearchProvider$Listener;->onComplete(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private reconcileStoreResultsWithLibrary(Z)V
    .locals 13

    .line 790
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->storeResults:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 799
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 800
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getCompleteBookList()Ljava/util/List;

    move-result-object v1

    .line 801
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getCompleteGroupList()Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 803
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/content/ContentMetadata;

    .line 806
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 810
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/GroupMetadata;

    .line 811
    invoke-virtual {v2}, Lcom/amazon/kindle/content/GroupMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 817
    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 818
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 819
    iget-object v3, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 822
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/model/content/IListableBook;

    .line 823
    instance-of v5, v4, Lcom/amazon/kindle/content/GroupMetadata;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->groupSeriesContent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 824
    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 826
    :cond_3
    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 835
    iget-object v4, p0, Lcom/amazon/kcp/search/SearchProvider;->storeResults:Ljava/util/List;

    .line 836
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 837
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 838
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_e

    .line 839
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/kcp/search/store/StoreContentMetadata;

    .line 840
    invoke-virtual {v9}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v10

    .line 844
    invoke-virtual {v1, v10}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 846
    invoke-virtual {v1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v11}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz p1, :cond_b

    .line 850
    invoke-virtual {v1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    invoke-virtual {v1, v10}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 853
    :cond_5
    invoke-virtual {v2, v10}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 855
    invoke-virtual {v2, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v11}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz p1, :cond_b

    .line 857
    invoke-virtual {v2, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    invoke-virtual {v2, v10}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 860
    :cond_6
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    if-eqz p1, :cond_a

    .line 868
    iget-object v11, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    if-nez v11, :cond_8

    .line 869
    iget-object v11, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResultsFromStore:Ljava/util/List;

    if-nez v11, :cond_7

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    iput-object v11, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResultsFromStore:Ljava/util/List;

    .line 870
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 874
    :cond_8
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/amazon/kindle/content/GroupMetadata;

    if-eqz v11, :cond_9

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->groupSeriesContent()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 875
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 877
    :cond_9
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    :goto_4
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v10}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v10

    xor-int/lit8 v11, v10, 0x1

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    :cond_b
    :goto_5
    if-eqz v11, :cond_c

    if-nez v3, :cond_d

    .line 885
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v4, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_6

    :cond_c
    if-eqz v3, :cond_d

    .line 888
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_e
    if-eqz p1, :cond_f

    .line 893
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    if-eqz p1, :cond_f

    .line 897
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 898
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 894
    invoke-direct {p0, v6, v5, p1, v0}, Lcom/amazon/kcp/search/SearchProvider;->buildAndRankLibraryResults(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    :cond_f
    if-nez v3, :cond_10

    goto :goto_7

    :cond_10
    move-object v4, v3

    .line 903
    :goto_7
    iput-object v4, p0, Lcom/amazon/kcp/search/SearchProvider;->storeResults:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/amazon/kcp/search/SearchProvider$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public areSuggestionsPending()Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->suggestions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public executeSearch(ZIZZ)V
    .locals 2

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/search/SearchProvider;->searchTimestamp:J

    .line 152
    iput p2, p0, Lcom/amazon/kcp/search/SearchProvider;->storePageSize:I

    .line 153
    iput-boolean p3, p0, Lcom/amazon/kcp/search/SearchProvider;->enableSpellCorrection:Z

    .line 154
    iput-boolean p1, p0, Lcom/amazon/kcp/search/SearchProvider;->queryStore:Z

    .line 155
    iput-boolean p4, p0, Lcom/amazon/kcp/search/SearchProvider;->leverageStoreResults:Z

    .line 156
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchProvider;->executeSearchCore()V

    return-void
.end method

.method public executeSearchWithStoreFilterSortOptions(ZIZZLjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 174
    iput-object p5, p0, Lcom/amazon/kcp/search/SearchProvider;->storeFilterItemIds:Ljava/util/List;

    .line 175
    iput-object p6, p0, Lcom/amazon/kcp/search/SearchProvider;->storeSortTypeId:Ljava/lang/String;

    .line 176
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/search/SearchProvider;->executeSearch(ZIZZ)V

    return-void
.end method

.method public fetchMoreStoreResults()Z
    .locals 10

    .line 315
    iget v0, p0, Lcom/amazon/kcp/search/SearchProvider;->currentStorePage:I

    iget v1, p0, Lcom/amazon/kcp/search/SearchProvider;->totalStorePages:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->isStoreSearchPending()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lcom/amazon/kcp/search/SearchProvider;->fetchingNextStorePage:Z

    .line 317
    iget-boolean v1, p0, Lcom/amazon/kcp/search/SearchProvider;->enableSpellCorrection:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->isSpellCorrectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 318
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/search/SearchProvider;->helper:Lcom/amazon/kcp/search/SearchHelper;

    iget-object v4, p0, Lcom/amazon/kcp/search/SearchProvider;->query:Ljava/lang/String;

    iget v1, p0, Lcom/amazon/kcp/search/SearchProvider;->currentStorePage:I

    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/amazon/kcp/search/SearchProvider;->storePageSize:I

    iget-object v8, p0, Lcom/amazon/kcp/search/SearchProvider;->storeFilterItemIds:Ljava/util/List;

    iget-object v9, p0, Lcom/amazon/kcp/search/SearchProvider;->storeSortTypeId:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/amazon/kcp/search/SearchHelper;->queryStoreResults(Ljava/lang/String;IIZLjava/util/List;Ljava/lang/String;)V

    return v0

    :cond_1
    return v2
.end method

.method public fetchSearchSuggestions()V
    .locals 2

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->suggestions:Ljava/util/List;

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/amazon/kcp/search/SearchProvider;->fetchedSuggestions:Z

    .line 336
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->helper:Lcom/amazon/kcp/search/SearchHelper;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchProvider;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/SearchHelper;->executeSearchSuggestions(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentStorePage()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/amazon/kcp/search/SearchProvider;->currentStorePage:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/amazon/kcp/search/SearchProvider;->id:I

    return v0
.end method

.method public getLibraryResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNumStorePages()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/amazon/kcp/search/SearchProvider;->totalStorePages:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchTimestamp()J
    .locals 2

    .line 215
    iget-wide v0, p0, Lcom/amazon/kcp/search/SearchProvider;->searchTimestamp:J

    return-wide v0
.end method

.method public getSpellCorrectionInfo()Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    return-object v0
.end method

.method public getStoreFilterItemIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->storeFilterItemIds:Ljava/util/List;

    return-object v0
.end method

.method public getStorePageSize()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/amazon/kcp/search/SearchProvider;->storePageSize:I

    return v0
.end method

.method public getStoreResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->storeResults:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStoreSearchResponseMetadata()Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->searchMetadata:Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;

    return-object v0
.end method

.method public getStoreSortTypeId()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->storeSortTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->suggestions:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTotalStoreResults()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/amazon/kcp/search/SearchProvider;->totalStoreResults:I

    return v0
.end method

.method protected groupSeriesContent()Z
    .locals 1

    .line 661
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesContentGrouped()Z

    move-result v0

    return v0
.end method

.method public hasLibraryResults()Z
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResults()Z
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->hasLibraryResults()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->hasStoreResults()Z

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

.method public hasStoreResults()Z
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->storeResults:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLibrarySearchPending()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSearchPending()Z
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->isLibrarySearchPending()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->isStoreSearchPending()Z

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

.method protected isSpellCorrectionEnabled()Z
    .locals 1

    .line 656
    sget-object v0, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;

    invoke-static {}, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;->isLibrarySearchSpellCorrectionEnabled()Z

    move-result v0

    return v0
.end method

.method public isStoreSearchPending()Z
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->storeResults:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/search/SearchProvider;->fetchingNextStorePage:Z

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

.method public onContentUpdate(Ljava/util/Collection;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_UPDATE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;)V"
        }
    .end annotation

    .line 563
    new-instance v0, Lcom/amazon/kcp/search/SearchProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/search/SearchProvider$1;-><init>(Lcom/amazon/kcp/search/SearchProvider;Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLibrarySearchComplete(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;)V"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->query:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    return-void

    .line 392
    :cond_1
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "NoResultsForLibrarySearch"

    .line 393
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchProvider;->reportSearchActivityMetric(Ljava/lang/String;)V

    .line 397
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    .line 400
    iget-boolean p1, p0, Lcom/amazon/kcp/search/SearchProvider;->leverageStoreResults:Z

    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchProvider;->reconcileStoreResultsWithLibrary(Z)V

    .line 403
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchProvider;->leverageLocalStoreResultToLibrary()V

    .line 405
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchProvider;->notifyResultsAvailable()V

    return-void
.end method

.method public onLoadingLibraryResults()V
    .locals 0

    return-void
.end method

.method public onLoadingStoreResults()V
    .locals 0

    return-void
.end method

.method public onQueryMoreStoreResultsComplete(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 475
    iput-boolean v0, p0, Lcom/amazon/kcp/search/SearchProvider;->fetchingNextStorePage:Z

    .line 476
    iget v1, p0, Lcom/amazon/kcp/search/SearchProvider;->currentStorePage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/kcp/search/SearchProvider;->currentStorePage:I

    .line 478
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchProvider;->storeResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 481
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/amazon/kcp/search/SearchProvider;->storeResults:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/amazon/kcp/search/SearchProvider;->storeResults:Ljava/util/List;

    .line 482
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 483
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/SearchProvider;->reconcileStoreResultsWithLibrary(Z)V

    .line 484
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->storeResults:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->fetchMoreStoreResults()Z

    move-result p1

    if-nez p1, :cond_1

    .line 487
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchProvider;->notifyResultsAvailable()V

    goto :goto_0

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchProvider;->notifyResultsAvailable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSearchBarSuggestionComplete(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/SearchBarSuggestionMetadata;",
            ">;)V"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->query:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 504
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->suggestions:Ljava/util/List;

    .line 506
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchProvider;->isSearchAsYouTypeRemovalEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    if-eqz p2, :cond_2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 511
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 512
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/search/SearchBarSuggestionMetadata;

    .line 515
    iget-object v3, p0, Lcom/amazon/kcp/search/SearchProvider;->suggestions:Ljava/util/List;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/SearchBarSuggestionMetadata;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/search/SearchProvider;->textFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 519
    :cond_2
    iget-object p2, p0, Lcom/amazon/kcp/search/SearchProvider;->listeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/SearchProvider$Listener;

    .line 520
    invoke-interface {v0, p1}, Lcom/amazon/kcp/search/SearchProvider$Listener;->onSuggestionsAvailable(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onSpellCorrectionRequestComplete(Ljava/lang/String;Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 531
    invoke-virtual {p2}, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->getConfidence()Lcom/amazon/kcp/search/store/model/Confidence;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/search/store/model/Confidence;->OPT_OUT:Lcom/amazon/kcp/search/store/model/Confidence;

    if-ne p1, p2, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->recordSpellCorrectionWeblabTrigger()V

    :cond_0
    return-void
.end method

.method public onStoreSearchComplete(Ljava/lang/String;Ljava/util/List;ILcom/amazon/kcp/search/store/model/SpellCorrectionInfo;Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;I",
            "Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;",
            "Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;",
            ")V"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->query:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 425
    :cond_0
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "NoResultsForStoreSearch"

    .line 426
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchProvider;->reportSearchActivityMetric(Ljava/lang/String;)V

    :cond_1
    if-gtz p3, :cond_2

    .line 431
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->storeResults:Ljava/util/List;

    .line 432
    iput p3, p0, Lcom/amazon/kcp/search/SearchProvider;->totalStoreResults:I

    const/4 p1, 0x1

    .line 434
    iput p1, p0, Lcom/amazon/kcp/search/SearchProvider;->currentStorePage:I

    int-to-float p1, p3

    .line 435
    iget p2, p0, Lcom/amazon/kcp/search/SearchProvider;->storePageSize:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/amazon/kcp/search/SearchProvider;->totalStorePages:I

    .line 438
    iput-object p5, p0, Lcom/amazon/kcp/search/SearchProvider;->searchMetadata:Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;

    .line 441
    iget-boolean p1, p0, Lcom/amazon/kcp/search/SearchProvider;->enableSpellCorrection:Z

    if-eqz p1, :cond_3

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->getConfidence()Lcom/amazon/kcp/search/store/model/Confidence;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/search/store/model/Confidence;->OPT_OUT:Lcom/amazon/kcp/search/store/model/Confidence;

    if-ne p1, p2, :cond_3

    .line 442
    iput-object p4, p0, Lcom/amazon/kcp/search/SearchProvider;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    const/4 p1, 0x0

    .line 445
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->libraryResults:Ljava/util/List;

    .line 446
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->helper:Lcom/amazon/kcp/search/SearchHelper;

    invoke-virtual {p4}, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->getQuery()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/SearchHelper;->executeLibrarySearch(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->recordSpellCorrectionWeblabTrigger()V

    .line 450
    :cond_3
    iget-boolean p1, p0, Lcom/amazon/kcp/search/SearchProvider;->leverageStoreResults:Z

    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchProvider;->reconcileStoreResultsWithLibrary(Z)V

    .line 452
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->storeResults:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 454
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->fetchMoreStoreResults()Z

    move-result p1

    if-nez p1, :cond_5

    .line 455
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchProvider;->notifyResultsAvailable()V

    goto :goto_1

    .line 458
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchProvider;->notifyResultsAvailable()V

    .line 464
    :cond_5
    :goto_1
    iget-boolean p1, p0, Lcom/amazon/kcp/search/SearchProvider;->enableSpellCorrection:Z

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;->isLibrarySearchSpellCorrectionInControl()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 465
    iget-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->helper:Lcom/amazon/kcp/search/SearchHelper;

    iget-object p2, p0, Lcom/amazon/kcp/search/SearchProvider;->query:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/SearchHelper;->executeSpellCorrection(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public onStoreSuggestionComplete(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected recordSpellCorrectionWeblabTrigger()V
    .locals 0

    .line 672
    invoke-static {}, Lcom/amazon/kcp/debug/LibrarySearchSpellCorrectionDebugUtils;->recordWeblabTrigger()V

    return-void
.end method

.method public refreshSearch()V
    .locals 5

    .line 183
    iget-wide v0, p0, Lcom/amazon/kcp/search/SearchProvider;->searchTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchProvider;->executeSearchCore()V

    return-void
.end method

.method public refreshSearchSuggestions()V
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/amazon/kcp/search/SearchProvider;->fetchedSuggestions:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->areSuggestionsPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->fetchSearchSuggestions()V

    :cond_0
    return-void
.end method

.method public refreshStoreSearchWithFilterSort(Ljava/util/List;Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;",
            ">;",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;",
            ")V"
        }
    .end annotation

    .line 192
    iget-wide v0, p0, Lcom/amazon/kcp/search/SearchProvider;->searchTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->storeFilterItemIds:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 200
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 201
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchProvider;->storeFilterItemIds:Ljava/util/List;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 204
    invoke-virtual {p2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->getItemId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->storeSortTypeId:Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchProvider;->executeStoreSearch()V

    return-void
.end method

.method public removeListener(Lcom/amazon/kcp/search/SearchProvider$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected reportSearchActivityMetric(Ljava/lang/String;)V
    .locals 2

    .line 651
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/search/SearchActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchProvider;->query:Ljava/lang/String;

    return-void
.end method

.method protected textFromHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 666
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_1

    .line 667
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 610
    iget-object p2, p0, Lcom/amazon/kcp/search/SearchProvider;->query:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 611
    iget-boolean p2, p0, Lcom/amazon/kcp/search/SearchProvider;->queryStore:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    iget p2, p0, Lcom/amazon/kcp/search/SearchProvider;->storePageSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget-boolean p2, p0, Lcom/amazon/kcp/search/SearchProvider;->enableSpellCorrection:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    iget-wide v0, p0, Lcom/amazon/kcp/search/SearchProvider;->searchTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 615
    iget-boolean p2, p0, Lcom/amazon/kcp/search/SearchProvider;->fetchedSuggestions:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    iget-object p2, p0, Lcom/amazon/kcp/search/SearchProvider;->storeFilterItemIds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 617
    iget-object p2, p0, Lcom/amazon/kcp/search/SearchProvider;->storeSortTypeId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
