.class public abstract Lcom/amazon/kcp/library/AbstractLibraryFilter;
.super Ljava/lang/Object;
.source "AbstractLibraryFilter.kt"

# interfaces
.implements Lcom/amazon/kcp/library/ILibraryFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;,
        Lcom/amazon/kcp/library/AbstractLibraryFilter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractLibraryFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractLibraryFilter.kt\ncom/amazon/kcp/library/AbstractLibraryFilter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,372:1\n1013#2:373\n1819#2,2:374\n1819#2,2:377\n1819#2,2:379\n1819#2,2:381\n1819#2,2:383\n1819#2,2:385\n1#3:376\n*E\n*S KotlinDebug\n*F\n+ 1 AbstractLibraryFilter.kt\ncom/amazon/kcp/library/AbstractLibraryFilter\n*L\n68#1:373\n101#1,2:374\n117#1,2:377\n154#1,2:379\n236#1,2:381\n265#1,2:383\n333#1,2:385\n*E\n"
.end annotation


# static fields
.field private static final DEFAULT_FILTER_ITEM_ID:Ljava/lang/String; = "Default"


# instance fields
.field private final filterGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/LibraryFilterGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final filterItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryFilter$ILibraryFilterChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/AbstractLibraryFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->listeners:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterGroupMap:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterItemMap:Ljava/util/Map;

    .line 38
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    return-void
.end method


# virtual methods
.method public applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 3

    .line 74
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->AND:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    const/4 v2, 0x1

    .line 76
    invoke-static {v0, p1, v1, v2}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combine(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected final buildItemsAndGroups(Ljava/util/Set;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "supportedFilters"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    const-class v2, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;

    invoke-static {v2}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;

    .line 138
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 142
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "DownloadState"

    .line 145
    sget-object v5, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->DOWNLOADED:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 146
    new-instance v5, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/4 v8, 0x3

    sget-object v9, Lcom/amazon/kcp/library/LibraryContentFilter;->DOWNLOADED_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 147
    sget v11, Lcom/amazon/kindle/librarymodule/R$string;->kindle_downloaded_toggle_downloaded:I

    const/4 v12, -0x1

    .line 148
    sget-object v13, Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$downloadedFilterItem$1;->INSTANCE:Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$downloadedFilterItem$1;

    .line 149
    sget-object v14, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v7, "Downloaded"

    move-object v6, v5

    move v10, v11

    .line 146
    invoke-direct/range {v6 .. v14}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    .line 150
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_2
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    const-string v6, "filterItem.id"

    if-eqz v5, :cond_4

    .line 379
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 154
    iget-object v8, v0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterItemMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    :cond_3
    iget-object v5, v0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterGroupMap:Ljava/util/Map;

    new-instance v7, Lcom/amazon/kcp/library/LibraryFilterGroup;

    .line 156
    sget v8, Lcom/amazon/kindle/librarymodule/R$string;->download_state:I

    const/4 v9, 0x5

    .line 155
    invoke-direct {v7, v4, v8, v9, v3}, Lcom/amazon/kcp/library/LibraryFilterGroup;-><init>(Ljava/lang/String;IILjava/util/List;)V

    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v3, "LendingPrograms"

    .line 161
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 162
    new-instance v10, Lcom/amazon/kcp/library/OriginTypeFilter;

    const-string v5, "KindleUnlimited"

    const-string v7, "Kindle Unlimited"

    const-string v8, "KUSubscription"

    const-string v9, "Prime"

    filled-new-array {v5, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Lcom/amazon/kcp/library/OriginTypeFilter;-><init>([Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, v10}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v5

    .line 164
    const-class v7, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-static {v7}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    .line 165
    sget-object v7, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->KU_PRIME:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v15, 0x0

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    if-eqz v14, :cond_6

    .line 167
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 168
    new-instance v5, Lcom/amazon/kcp/library/PrimeKUVisibilityStrategy;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;

    move-result-object v7

    invoke-interface {v2, v15, v7}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->primeKUCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v7

    invoke-direct {v5, v14, v7}, Lcom/amazon/kcp/library/PrimeKUVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V

    move-object v11, v5

    goto :goto_1

    .line 169
    :cond_5
    new-instance v7, Lcom/amazon/kcp/library/PrimeKUVisibilityStrategy;

    invoke-direct {v7, v14, v5}, Lcom/amazon/kcp/library/PrimeKUVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;Lcom/amazon/kcp/library/LibraryContentFilter;)V

    move-object v11, v7

    .line 170
    :goto_1
    new-instance v5, Lcom/amazon/kcp/library/PrimeKuFilterItem;

    const/4 v9, 0x5

    .line 172
    sget-object v13, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v8, "PrimeAndKU"

    move-object v7, v5

    move-object v12, v14

    .line 170
    invoke-direct/range {v7 .. v13}, Lcom/amazon/kcp/library/PrimeKuFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    .line 173
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_6
    sget-object v5, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->COMICS_UNLIMITED:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v14, :cond_8

    .line 177
    new-instance v5, Lcom/amazon/kcp/library/OriginTypeFilter;

    const-string v7, "ComicsUnlimited"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/amazon/kcp/library/OriginTypeFilter;-><init>([Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 179
    new-instance v7, Lcom/amazon/kcp/library/CUVisibilityStrategy;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;

    move-result-object v8

    invoke-interface {v2, v15, v8}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->cuCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v8

    invoke-direct {v7, v14, v8}, Lcom/amazon/kcp/library/CUVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V

    goto :goto_2

    .line 180
    :cond_7
    new-instance v7, Lcom/amazon/kcp/library/CUVisibilityStrategy;

    invoke-virtual {v0, v5}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v8

    invoke-direct {v7, v14, v8}, Lcom/amazon/kcp/library/CUVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;Lcom/amazon/kcp/library/LibraryContentFilter;)V

    :goto_2
    move-object/from16 v23, v7

    .line 181
    new-instance v7, Lcom/amazon/kcp/library/CUFilterItem;

    const/16 v18, 0x6

    .line 182
    sget v21, Lcom/amazon/kindle/librarymodule/R$string;->comixology_unlimited:I

    const/16 v22, -0x1

    .line 183
    sget-object v24, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v17, "ComicsUnlimited"

    move-object/from16 v16, v7

    move-object/from16 v19, v5

    move/from16 v20, v21

    .line 181
    invoke-direct/range {v16 .. v24}, Lcom/amazon/kcp/library/CUFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/CUVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_8
    sget-object v5, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->PUBLIC_LIBRARY_LENDING:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 187
    new-instance v5, Lcom/amazon/kcp/library/OriginTypeFilter;

    const-string v7, "PublicLibraryLending"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/amazon/kcp/library/OriginTypeFilter;-><init>([Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 189
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;

    move-result-object v8

    invoke-interface {v2, v15, v8}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->publicLibraryLendingCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V

    goto :goto_3

    .line 190
    :cond_9
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-virtual {v0, v5}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    :goto_3
    move-object/from16 v23, v7

    .line 191
    new-instance v7, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/16 v18, 0x7

    .line 192
    sget v21, Lcom/amazon/kindle/librarymodule/R$string;->public_library_lending:I

    const/16 v22, -0x1

    .line 193
    sget-object v24, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v17, "PublicLibraryLending"

    move-object/from16 v16, v7

    move-object/from16 v19, v5

    move/from16 v20, v21

    .line 191
    invoke-direct/range {v16 .. v24}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_a
    sget-object v5, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->PERSONAL_LENDING:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 197
    new-instance v5, Lcom/amazon/kcp/library/OriginTypeFilter;

    const-string v7, "PersonalLending"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/amazon/kcp/library/OriginTypeFilter;-><init>([Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 199
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;

    move-result-object v8

    invoke-interface {v2, v15, v8}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->personalLendingCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V

    goto :goto_4

    .line 200
    :cond_b
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-virtual {v0, v5}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    .line 201
    :goto_4
    new-instance v8, Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$personalLendingVisibilityStrategy$1;

    invoke-direct {v8, v7}, Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$personalLendingVisibilityStrategy$1;-><init>(Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;)V

    .line 204
    new-instance v7, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/16 v18, 0x8

    .line 205
    sget v21, Lcom/amazon/kindle/librarymodule/R$string;->personal_lending:I

    const/16 v22, -0x1

    .line 206
    sget-object v24, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v17, "PersonalLending"

    move-object/from16 v16, v7

    move-object/from16 v19, v5

    move/from16 v20, v21

    move-object/from16 v23, v8

    .line 204
    invoke-direct/range {v16 .. v24}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_c
    sget-object v5, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->KINDLE_OWNERS_LENDING_LIBRARY:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 210
    new-instance v5, Lcom/amazon/kcp/library/OriginTypeFilter;

    const-string v7, "KOLL"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/amazon/kcp/library/OriginTypeFilter;-><init>([Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 212
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;

    move-result-object v8

    invoke-interface {v2, v15, v8}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->ownersLendingCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V

    goto :goto_5

    .line 213
    :cond_d
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-virtual {v0, v5}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    .line 214
    :goto_5
    new-instance v8, Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$KOLLVisibilityStrategy$1;

    invoke-direct {v8, v7}, Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$KOLLVisibilityStrategy$1;-><init>(Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;)V

    .line 217
    new-instance v7, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/16 v18, 0x9

    .line 218
    sget v21, Lcom/amazon/kindle/librarymodule/R$string;->kindle_owners_lending_library:I

    const/16 v22, -0x1

    .line 219
    sget-object v24, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v17, "KindleOwnersLendingLibrary"

    move-object/from16 v16, v7

    move-object/from16 v19, v5

    move/from16 v20, v21

    move-object/from16 v23, v8

    .line 217
    invoke-direct/range {v16 .. v24}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_e
    sget-object v5, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->RENTAL:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 223
    new-instance v5, Lcom/amazon/kcp/library/OriginTypeFilter;

    const-string v7, "Rental"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/amazon/kcp/library/OriginTypeFilter;-><init>([Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 225
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;

    move-result-object v8

    invoke-interface {v2, v15, v8}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->rentalCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V

    goto :goto_6

    .line 226
    :cond_f
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-virtual {v0, v5}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    .line 227
    :goto_6
    new-instance v8, Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$rentalVisibilityStrategy$1;

    invoke-direct {v8, v7}, Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$rentalVisibilityStrategy$1;-><init>(Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;)V

    .line 230
    new-instance v7, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/16 v18, 0xa

    .line 231
    sget v21, Lcom/amazon/kindle/librarymodule/R$string;->rental_book_label:I

    const/16 v22, -0x1

    .line 232
    sget-object v24, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v17, "Rental"

    move-object/from16 v16, v7

    move-object/from16 v19, v5

    move/from16 v20, v21

    move-object/from16 v23, v8

    .line 230
    invoke-direct/range {v16 .. v24}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_10
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_12

    .line 381
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 236
    iget-object v8, v0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterItemMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 237
    :cond_11
    iget-object v5, v0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterGroupMap:Ljava/util/Map;

    new-instance v7, Lcom/amazon/kcp/library/LibraryFilterGroup;

    sget v8, Lcom/amazon/kindle/librarymodule/R$string;->lending_programs:I

    const/16 v9, 0xa

    invoke-direct {v7, v3, v8, v9, v4}, Lcom/amazon/kcp/library/LibraryFilterGroup;-><init>(Ljava/lang/String;IILjava/util/List;)V

    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const-string v3, "ReadState"

    .line 243
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 245
    sget-object v5, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->READ:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 246
    new-instance v5, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/16 v18, 0xf

    .line 247
    sget-object v19, Lcom/amazon/kcp/library/LibraryContentFilter;->READ_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget v20, Lcom/amazon/kindle/librarymodule/R$string;->read_for_accessibility:I

    sget v21, Lcom/amazon/kindle/librarymodule/R$string;->read:I

    const/16 v22, -0x1

    .line 248
    sget-object v23, Lcom/amazon/kcp/library/AlwaysVisibleStrategy;->INSTANCE:Lcom/amazon/kcp/library/AlwaysVisibleStrategy;

    sget-object v24, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v17, "Read"

    move-object/from16 v16, v5

    .line 246
    invoke-direct/range {v16 .. v24}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_13
    sget-object v5, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->UNREAD:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 252
    new-instance v5, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/16 v18, 0x14

    .line 253
    sget-object v19, Lcom/amazon/kcp/library/LibraryContentFilter;->UNREAD_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget v21, Lcom/amazon/kindle/librarymodule/R$string;->unread:I

    const/16 v22, -0x1

    .line 254
    sget-object v23, Lcom/amazon/kcp/library/AlwaysVisibleStrategy;->INSTANCE:Lcom/amazon/kcp/library/AlwaysVisibleStrategy;

    sget-object v24, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v17, "Unread"

    move-object/from16 v16, v5

    move/from16 v20, v21

    .line 252
    invoke-direct/range {v16 .. v24}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_14
    sget-object v5, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->IN_PROGRESS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 258
    new-instance v5, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/16 v18, 0x19

    .line 260
    sget-object v19, Lcom/amazon/kcp/library/LibraryContentFilter;->UNREAD_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget v21, Lcom/amazon/kindle/librarymodule/R$string;->in_progress:I

    const/16 v22, -0x1

    .line 261
    sget-object v23, Lcom/amazon/kcp/library/AlwaysVisibleStrategy;->INSTANCE:Lcom/amazon/kcp/library/AlwaysVisibleStrategy;

    sget-object v24, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v17, "InProgress"

    move-object/from16 v16, v5

    move/from16 v20, v21

    .line 258
    invoke-direct/range {v16 .. v24}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_15
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_17

    .line 383
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 265
    iget-object v8, v0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterItemMap:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 266
    :cond_16
    iget-object v5, v0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterGroupMap:Ljava/util/Map;

    new-instance v7, Lcom/amazon/kcp/library/LibraryFilterGroup;

    sget v8, Lcom/amazon/kindle/librarymodule/R$string;->accessibility_read_state:I

    const/16 v9, 0x14

    invoke-direct {v7, v3, v8, v9, v4}, Lcom/amazon/kcp/library/LibraryFilterGroup;-><init>(Ljava/lang/String;IILjava/util/List;)V

    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const-string v3, "ContentType"

    .line 272
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 274
    sget-object v5, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->BOOKS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 275
    new-instance v5, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/16 v18, 0x1e

    .line 276
    sget-object v19, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget v21, Lcom/amazon/kindle/librarymodule/R$string;->books_tab_text:I

    const/16 v22, -0x1

    .line 278
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 279
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;

    move-result-object v8

    invoke-interface {v2, v15, v8}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->booksCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V

    goto :goto_9

    .line 280
    :cond_18
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, v8}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    :goto_9
    move-object/from16 v23, v7

    .line 281
    sget-object v24, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v17, "Books"

    move-object/from16 v16, v5

    move/from16 v20, v21

    .line 275
    invoke-direct/range {v16 .. v24}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_19
    sget-object v5, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->SAMPLES:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 285
    new-instance v5, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/16 v18, 0x28

    .line 286
    sget-object v19, Lcom/amazon/kcp/library/LibraryContentFilter;->SAMPLES_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget v21, Lcom/amazon/kindle/librarymodule/R$string;->samples:I

    const/16 v22, -0x1

    .line 287
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 288
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;

    move-result-object v8

    invoke-interface {v2, v15, v8}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->samplesCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V

    goto :goto_a

    .line 289
    :cond_1a
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->SAMPLES_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, v8}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    :goto_a
    move-object/from16 v23, v7

    .line 290
    sget-object v24, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v17, "Samples"

    move-object/from16 v16, v5

    move/from16 v20, v21

    .line 285
    invoke-direct/range {v16 .. v24}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_1b
    sget-object v5, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->AUDIBLE:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 294
    new-instance v5, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/16 v18, 0x32

    .line 295
    sget-object v19, Lcom/amazon/kcp/library/LibraryContentFilter;->AUDIBLE_BOOK_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget v21, Lcom/amazon/kindle/librarymodule/R$string;->audible_tab_text:I

    const/16 v22, -0x1

    .line 296
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 297
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;

    move-result-object v8

    invoke-interface {v2, v15, v8}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->audibleCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V

    goto :goto_b

    .line 298
    :cond_1c
    new-instance v7, Lcom/amazon/kcp/library/AudibleLibraryCounterVisibilityStrategy;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->AUDIBLE_BOOK_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, v8}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/AudibleLibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    :goto_b
    move-object/from16 v23, v7

    .line 299
    sget-object v24, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v17, "Audible"

    move-object/from16 v16, v5

    move/from16 v20, v21

    .line 294
    invoke-direct/range {v16 .. v24}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_1d
    sget-object v5, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->DOCS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 303
    new-instance v5, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/16 v18, 0x46

    .line 304
    sget-object v19, Lcom/amazon/kcp/library/LibraryContentFilter;->DOCS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget v21, Lcom/amazon/kindle/librarymodule/R$string;->docs_tab_text:I

    const/16 v22, -0x1

    .line 306
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 307
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;

    move-result-object v8

    invoke-interface {v2, v15, v8}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->docsCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V

    goto :goto_c

    .line 308
    :cond_1e
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->DOCS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, v8}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    :goto_c
    move-object/from16 v23, v7

    .line 309
    sget-object v24, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v17, "Docs"

    move-object/from16 v16, v5

    move/from16 v20, v21

    .line 303
    invoke-direct/range {v16 .. v24}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_1f
    sget-object v5, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->PERIODICALS:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->arePeriodicalsAllowed()Z

    move-result v5

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    if-eqz v5, :cond_20

    invoke-interface {v5}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandBlocked()Z

    move-result v5

    if-nez v5, :cond_22

    .line 313
    :cond_20
    new-instance v5, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/16 v18, 0x3c

    .line 314
    sget-object v19, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget v21, Lcom/amazon/kindle/librarymodule/R$string;->newsstand_tab_text:I

    const/16 v22, -0x1

    .line 316
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 317
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v15}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->newsstandCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V

    goto :goto_d

    .line 318
    :cond_21
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    sget-object v8, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, v8}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    :goto_d
    move-object/from16 v23, v7

    .line 319
    sget-object v24, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v17, "Periodicals"

    move-object/from16 v16, v5

    move/from16 v20, v21

    .line 313
    invoke-direct/range {v16 .. v24}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_22
    sget-object v5, Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;->FALKOR:Lcom/amazon/kcp/library/AbstractLibraryFilter$LibraryFilterType;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 323
    new-instance v1, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/16 v18, 0x50

    .line 324
    sget-object v19, Lcom/amazon/kcp/library/LibraryContentFilter;->FALKOR_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    sget v21, Lcom/amazon/kindle/librarymodule/R$string;->kindle_vella:I

    const/16 v22, -0x1

    .line 326
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 327
    new-instance v5, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;

    move-result-object v7

    invoke-interface {v2, v15, v7}, Lcom/amazon/kcp/library/LargeLibraryCounterProvider;->falkorCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/AbstractUserItemsCounter;)V

    move-object/from16 v23, v5

    goto :goto_e

    .line 328
    :cond_23
    new-instance v2, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    sget-object v5, Lcom/amazon/kcp/library/LibraryContentFilter;->FALKOR_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, v5}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    move-object/from16 v23, v2

    .line 329
    :goto_e
    sget-object v24, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const-string v17, "Falkor"

    move-object/from16 v16, v1

    move/from16 v20, v21

    .line 323
    invoke-direct/range {v16 .. v24}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_24
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_26

    .line 385
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 333
    iget-object v5, v0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterItemMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 334
    :cond_25
    iget-object v1, v0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterGroupMap:Ljava/util/Map;

    new-instance v2, Lcom/amazon/kcp/library/LibraryFilterGroup;

    .line 335
    sget v5, Lcom/amazon/kindle/librarymodule/R$string;->content_type:I

    const/16 v6, 0x1e

    .line 334
    invoke-direct {v2, v3, v5, v6, v4}, Lcom/amazon/kcp/library/LibraryFilterGroup;-><init>(Ljava/lang/String;IILjava/util/List;)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-void
.end method

.method public declared-synchronized deregisterLibraryFilterGroup(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deregisterLibraryFilterItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/LibraryFilterGroup;

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getItems()Ljava/util/List;

    move-result-object v1

    const-string v2, "filterItemGroup.items"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 112
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/amazon/kcp/library/LibraryFilterItem;

    const-string v5, "it"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Lcom/amazon/kcp/library/LibraryFilterItem;

    if-eqz v3, :cond_2

    .line 114
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object v2, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterGroupMap:Ljava/util/Map;

    new-instance v3, Lcom/amazon/kcp/library/LibraryFilterGroup;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getTitleResId()I

    move-result v5

    .line 116
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getPriority()I

    move-result v0

    .line 115
    invoke-direct {v3, v4, v5, v0, v1}, Lcom/amazon/kcp/library/LibraryFilterGroup;-><init>(Ljava/lang/String;IILjava/util/List;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->listeners:Ljava/util/List;

    .line 377
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryFilter$ILibraryFilterChangedListener;

    .line 117
    invoke-interface {v1, p1, p2}, Lcom/amazon/kcp/library/ILibraryFilter$ILibraryFilterChangedListener;->onLibraryFilterItemDeregistered(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 121
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDefaultFilterId()Ljava/lang/String;
    .locals 1

    const-string v0, "Default"

    return-object v0
.end method

.method public getDefaultFilterItem()Lcom/amazon/kcp/library/LibraryFilterItem;
    .locals 10

    .line 59
    new-instance v9, Lcom/amazon/kcp/library/LibraryFilterItem;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/AbstractLibraryFilter;->getDefaultFilterId()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryFilter;->getDefaultFilter()Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    :goto_0
    move-object v3, v0

    .line 61
    sget v5, Lcom/amazon/kindle/librarymodule/R$string;->default_filter:I

    const/4 v6, -0x1

    .line 62
    sget-object v7, Lcom/amazon/kcp/library/AlwaysInvisibleStrategy;->INSTANCE:Lcom/amazon/kcp/library/AlwaysInvisibleStrategy;

    sget-object v8, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const v2, 0x7fffffff

    move-object v0, v9

    move v4, v5

    .line 59
    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    return-object v9
.end method

.method protected final getFilterItemMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterItemMap:Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized getGroupsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/LibraryFilterGroup;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterGroupMap:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 373
    new-instance v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$getGroupsMap$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/amazon/kcp/library/AbstractLibraryFilter$getGroupsMap$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItemsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterItemMap:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    return-object v0
.end method

.method public final onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isLargeLibraryEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$onAuthenticationEvent$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/AbstractLibraryFilter$onAuthenticationEvent$1;-><init>(Lcom/amazon/kcp/library/AbstractLibraryFilter;)V

    .line 356
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/amazon/kcp/library/AbstractLibraryFilter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 358
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/AbstractLibraryFilter$onAuthenticationEvent$1;->invoke(Z)V

    goto :goto_0

    .line 357
    :cond_3
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/AbstractLibraryFilter$onAuthenticationEvent$1;->invoke(Z)V

    :goto_0
    return-void
.end method

.method public declared-synchronized registerLibraryFilterGroup(Ljava/lang/String;II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterGroupMap:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kcp/library/LibraryFilterGroup;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/amazon/kcp/library/LibraryFilterGroup;-><init>(Ljava/lang/String;IILjava/util/List;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerLibraryFilterItem(Ljava/lang/String;Lcom/amazon/kcp/library/LibraryFilterItem;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryFilterItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterGroupMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/LibraryFilterGroup;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getItems()Ljava/util/List;

    move-result-object v1

    const-string v2, "filterItemGroup.items"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 97
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v2, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterItemMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "libraryFilterItem.id"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v2, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->filterGroupMap:Ljava/util/Map;

    new-instance v3, Lcom/amazon/kcp/library/LibraryFilterGroup;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getTitleResId()I

    move-result v5

    .line 100
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getPriority()I

    move-result v0

    .line 99
    invoke-direct {v3, v4, v5, v0, v1}, Lcom/amazon/kcp/library/LibraryFilterGroup;-><init>(Ljava/lang/String;IILjava/util/List;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->listeners:Ljava/util/List;

    .line 374
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryFilter$ILibraryFilterChangedListener;

    .line 101
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "libraryFilterItem.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1, v2}, Lcom/amazon/kcp/library/ILibraryFilter$ILibraryFilterChangedListener;->onLibraryFilterItemRegistered(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 104
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized subscribe(Lcom/amazon/kcp/library/ILibraryFilter$ILibraryFilterChangedListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/library/AbstractLibraryFilter;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
