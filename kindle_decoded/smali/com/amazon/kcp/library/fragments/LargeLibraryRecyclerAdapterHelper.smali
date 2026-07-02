.class public Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;
.super Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;
.source "LargeLibraryRecyclerAdapterHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLargeLibraryRecyclerAdapterHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeLibraryRecyclerAdapterHelper.kt\ncom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,456:1\n1819#2,2:457\n1819#2,2:459\n1819#2,2:461\n1#3:463\n*E\n*S KotlinDebug\n*F\n+ 1 LargeLibraryRecyclerAdapterHelper.kt\ncom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper\n*L\n160#1,2:457\n240#1,2:459\n336#1,2:461\n*E\n"
.end annotation


# instance fields
.field private adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;"
        }
    .end annotation
.end field

.field private final adapterUpdater:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;

.field private final countListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final countValueCache:Lcom/amazon/kcp/library/fragments/cache/CountValueCache;

.field private final groupListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kindle/observablemodel/LibraryGroupListener;",
            ">;"
        }
    .end annotation
.end field

.field private final groupValueCache:Lcom/amazon/kcp/library/fragments/GroupValueCache;

.field private final repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Ljava/lang/String;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 1

    const-string/jumbo v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryFilter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sorting"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct/range {p0 .. p7}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Ljava/lang/String;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    .line 45
    new-instance p1, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;

    new-instance p2, Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    invoke-direct {p2}, Lcom/amazon/kcp/library/fragments/CurrentValueCache;-><init>()V

    const/4 p3, 0x0

    const/4 p4, 0x2

    invoke-direct {p1, p2, p3, p4, p3}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;-><init>(Lcom/amazon/kcp/library/fragments/CurrentValueCache;Lcom/amazon/kcp/library/fragments/LargeLibraryProcessNotifyOps;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->adapterUpdater:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;

    .line 46
    new-instance p1, Lcom/amazon/kcp/library/fragments/GroupValueCache;

    invoke-direct {p1}, Lcom/amazon/kcp/library/fragments/GroupValueCache;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->groupValueCache:Lcom/amazon/kcp/library/fragments/GroupValueCache;

    .line 47
    new-instance p1, Lcom/amazon/kcp/library/fragments/cache/CountValueCache;

    const/4 p2, 0x1

    invoke-direct {p1, p3, p2, p3}, Lcom/amazon/kcp/library/fragments/cache/CountValueCache;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->countValueCache:Lcom/amazon/kcp/library/fragments/cache/CountValueCache;

    .line 48
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->groupListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->countListeners:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$getCountValueCache$p(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)Lcom/amazon/kcp/library/fragments/cache/CountValueCache;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->countValueCache:Lcom/amazon/kcp/library/fragments/cache/CountValueCache;

    return-object p0
.end method

.method public static final synthetic access$getGroupValueCache$p(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)Lcom/amazon/kcp/library/fragments/GroupValueCache;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->groupValueCache:Lcom/amazon/kcp/library/fragments/GroupValueCache;

    return-object p0
.end method

.method public static final synthetic access$getRepository$p(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    return-object p0
.end method

.method public static final synthetic access$removeCountListeners(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->removeCountListeners()V

    return-void
.end method

.method public static final synthetic access$removeGroupListeners(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->removeGroupListeners()V

    return-void
.end method

.method private final disconnectHolder(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V
    .locals 3

    .line 99
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {v1, p1, v0}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->unregisterItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Lcom/amazon/kindle/observablemodel/ItemID;)V

    .line 101
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->isGroupingType(Lcom/amazon/kindle/observablemodel/ItemID;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->removeGroupAndCountListeners(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V

    :cond_0
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setBound(Z)V

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setItemId(Lcom/amazon/kindle/observablemodel/ItemID;)V

    .line 109
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setRepresentativeId(Lcom/amazon/kindle/observablemodel/ItemID;)V

    const-wide/16 v1, -0x1

    .line 110
    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setCount(J)V

    .line 111
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setGroupListener(Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;)V

    .line 112
    sget-object v0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$disconnectHolder$2$1;->INSTANCE:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$disconnectHolder$2$1;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setTriggerRefresh(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final fetchCountBadgeData(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->countValueCache:Lcom/amazon/kcp/library/fragments/cache/CountValueCache;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/fragments/cache/CountValueCache;->getValue(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kcp/library/fragments/cache/CountValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->isRead()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setGroupRead(Z)V

    .line 272
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/cache/CountValue;->getOriginType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setOriginType(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 274
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setGroupRead(Z)V

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setOriginType(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final fetchGroupBadgeData(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V
    .locals 6

    .line 257
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->groupValueCache:Lcom/amazon/kcp/library/fragments/GroupValueCache;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/fragments/GroupValueCache;->getValue(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kcp/library/fragments/GroupValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/GroupValue;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/GroupValue;->getCount()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setCount(J)V

    .line 260
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/GroupValue;->getRepresentativeId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setRepresentativeId(Lcom/amazon/kindle/observablemodel/ItemID;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 263
    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setCount(J)V

    const/4 v0, 0x0

    .line 264
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setRepresentativeId(Lcom/amazon/kindle/observablemodel/ItemID;)V

    :goto_0
    return-void
.end method

.method private final groupCoverSorting()Lcom/amazon/kindle/observablemodel/ModelSorting;
    .locals 5

    .line 123
    new-instance v0, Lcom/amazon/kindle/observablemodel/ModelSorting;

    invoke-direct {v0}, Lcom/amazon/kindle/observablemodel/ModelSorting;-><init>()V

    .line 124
    new-instance v1, Lcom/amazon/kindle/observablemodel/ModelSortingPair;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/observablemodel/ModelSortingPair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/observablemodel/ModelSorting;->modelSortingByAddingOrder(Lcom/amazon/kindle/observablemodel/ModelSortingPair;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object v0

    const-string/jumbo v1, "result.modelSortingByAdd\u2026ing.DIRECTION_ASCENDING))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v2, Lcom/amazon/kindle/observablemodel/ModelSortingPair;

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/amazon/kindle/observablemodel/ModelSortingPair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/observablemodel/ModelSorting;->modelSortingByAddingOrder(Lcom/amazon/kindle/observablemodel/ModelSortingPair;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final isGroupingType(Lcom/amazon/kindle/observablemodel/ItemID;)Z
    .locals 1

    .line 168
    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private final removeCountListener(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V
    .locals 4

    .line 158
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->countListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v1, "listeners"

    .line 160
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;

    .line 161
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->unregisterCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->countListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :cond_1
    return-void
.end method

.method private final removeCountListeners()V
    .locals 5

    .line 335
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->countListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 461
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;

    .line 337
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->unregisterCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->countListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private final removeGroupAndCountListeners(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V
    .locals 3

    .line 145
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getGroupListener()Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->unregisterGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->groupListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 152
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setGroupListener(Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;)V

    .line 154
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->removeCountListener(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V

    return-void
.end method

.method private final removeGroupListeners()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->groupListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/observablemodel/LibraryGroupListener;

    .line 329
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->unregisterGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->groupListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private final setCountListeners(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V
    .locals 7

    .line 233
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isNarrativesEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Lcom/amazon/kcp/library/listener/LargeLibraryReadCountListener;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kcp/library/listener/LargeLibraryReadCountListener;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V

    .line 235
    new-instance v1, Lcom/amazon/kcp/library/listener/LargeLibraryComicsUnlimitedCountListener;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/listener/LargeLibraryComicsUnlimitedCountListener;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V

    .line 236
    new-instance v2, Lcom/amazon/kcp/library/listener/LargeLibraryKindleUnlimitedCountListener;

    invoke-direct {v2, p0, p2}, Lcom/amazon/kcp/library/listener/LargeLibraryKindleUnlimitedCountListener;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V

    .line 237
    new-instance v3, Lcom/amazon/kcp/library/listener/LargeLibraryPrimeReadingCountListener;

    invoke-direct {v3, p0, p2}, Lcom/amazon/kcp/library/listener/LargeLibraryPrimeReadingCountListener;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V

    .line 238
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->countListeners:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getModelContent()Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithParentGroup(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p2

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p2, v0}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithGroupingSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p2

    .line 240
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->countListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 459
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;

    .line 241
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "seriesModelContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;

    invoke-interface {v0}, Lcom/amazon/kcp/library/listener/LibraryCountUpdateListener;->getFilterSet()Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v5

    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->groupCoverSorting()Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object v6

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->registerContainerCountListener(Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type com.amazon.kcp.library.listener.LargeLibraryCountUpdateListener"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private final updateGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Lcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 9

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->unregisterGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getModelContent()Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithParentGroup(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithGroupingSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v6

    .line 134
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    .line 136
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "seriesModelContent"

    .line 138
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getModelFilter()Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v7

    .line 140
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->groupCoverSorting()Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object v8

    move-object v3, p1

    move-object v5, p2

    .line 134
    invoke-virtual/range {v2 .. v8}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->registerGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    return-void
.end method


# virtual methods
.method public final applyCountUpdate(Lcom/amazon/kindle/observablemodel/ModelCountUpdate;Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;)V
    .locals 2

    const-string v0, "countUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 379
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;->getGroupId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->countValueCache:Lcom/amazon/kcp/library/fragments/cache/CountValueCache;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/fragments/cache/CountValueCache;->updateValue(Lcom/amazon/kindle/observablemodel/ModelCountUpdate;Lcom/amazon/kcp/library/listener/LibraryCountUpdateListener;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 382
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;->getHolderRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    if-eqz v0, :cond_3

    const-string v1, "countListener.holderRef.get() ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/library/listener/LargeLibraryCountUpdateListener;->getGroupId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    return-void

    .line 386
    :cond_2
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->fetchCountBadgeData(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V

    if-eqz p1, :cond_3

    .line 391
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getTriggerRefresh()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final applyGroupUpdate(Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;)V
    .locals 2

    const-string v0, "groupUpdate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;->getGroupId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->groupValueCache:Lcom/amazon/kcp/library/fragments/GroupValueCache;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/kcp/library/fragments/GroupValueCache;->updateValue(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelGroupUpdate;)V

    .line 361
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;->getHolderRef()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    if-eqz p1, :cond_3

    const-string v1, "groupListener.holderRef.get() ?: return"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getGroupListener()Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    goto :goto_0

    .line 370
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->fetchGroupBadgeData(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V

    .line 373
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getTriggerRefresh()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;ILcom/amazon/kindle/observablemodel/ItemID;)Z
    .locals 9

    const-string/jumbo p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "itemId"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    check-cast p1, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    .line 179
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 181
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v2

    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 182
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->disconnectHolder(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V

    .line 185
    :cond_1
    invoke-virtual {p1, p3}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setItemId(Lcom/amazon/kindle/observablemodel/ItemID;)V

    .line 187
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getBound()Z

    move-result v2

    if-nez v2, :cond_5

    .line 188
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p3}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->registerItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;)V

    .line 189
    invoke-direct {p0, p3}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->isGroupingType(Lcom/amazon/kindle/observablemodel/ItemID;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 191
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getGroupListener()Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;->getGroupId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v3

    :cond_2
    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 192
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->removeGroupAndCountListeners(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V

    .line 194
    new-instance v3, Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;

    invoke-direct {v3, p1, p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;)V

    .line 195
    invoke-virtual {p1, v3}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setGroupListener(Lcom/amazon/kcp/library/fragments/LargeLibraryGroupListener;)V

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->groupListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getModelContent()Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithParentGroup(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithGroupingSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v6

    .line 202
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    .line 204
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "seriesModelContent"

    .line 206
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getModelFilter()Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v7

    .line 208
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->groupCoverSorting()Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object v8

    move-object v5, p3

    .line 202
    invoke-virtual/range {v2 .. v8}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->registerGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    .line 210
    invoke-direct {p0, p3, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->setCountListeners(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V

    goto :goto_1

    .line 214
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->removeGroupAndCountListeners(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V

    .line 215
    invoke-virtual {p1, v3}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setRepresentativeId(Lcom/amazon/kindle/observablemodel/ItemID;)V

    const-wide/16 v4, -0x1

    .line 216
    invoke-virtual {p1, v4, v5}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setCount(J)V

    .line 217
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setGroupRead(Z)V

    .line 218
    invoke-virtual {p1, v3}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setOriginType(Ljava/lang/String;)V

    .line 221
    :cond_4
    :goto_1
    invoke-virtual {p1, v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setBound(Z)V

    .line 224
    :cond_5
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->fetchGroupBadgeData(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V

    .line 225
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->fetchCountBadgeData(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V

    return p2
.end method

.method public final bindViewUpdater(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/fragments/RecyclerFragmentUpdater;)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryItem"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewUpdater"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$bindViewUpdater$refresh$1;

    move-object v1, v0

    move-object v2, p6

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$bindViewUpdater$refresh$1;-><init>(Lcom/amazon/kcp/library/fragments/RecyclerFragmentUpdater;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kcp/library/ILibraryDisplayItem;)V

    .line 253
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setTriggerRefresh(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final createViewHolder(Landroid/view/View;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    if-eqz v1, :cond_0

    invoke-direct {v0, v1, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;-><init>(Lcom/amazon/kcp/library/FastRecyclerAdapter;Landroid/view/View;)V

    return-object v0

    :cond_0
    const-string p1, "adapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method protected final getAdapterUpdater()Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->adapterUpdater:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;

    return-object v0
.end method

.method public getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->adapterUpdater:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->getCache()Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->numHeaders()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->getItemIdAtPosition(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    return-object p1
.end method

.method public getItemIndexTitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->adapterUpdater:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->getCache()Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->getItemIndexTitles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemSectionItemCounts()[I
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->adapterUpdater:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->getCache()Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->getItemSectionSizes()[I

    move-result-object v0

    return-object v0
.end method

.method public final init(Lcom/amazon/kcp/library/FastRecyclerAdapter;)Lcom/amazon/kcp/library/FastRecyclerAdapter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;)",
            "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->adapterUpdater:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->setAdapter(Lcom/amazon/kcp/library/FastRecyclerAdapter;)V

    .line 56
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->repository:Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getAccountId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getModelContent()Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v5

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getModelFilter()Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getModelSorting()Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object v7

    move-object v2, p0

    move-object v3, p0

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->registerPresentationAndCountListeners(Lcom/amazon/kindle/observablemodel/LibraryPresentationChangeListener;Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;Ljava/lang/String;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->init()Lcom/amazon/kcp/library/FastRecyclerAdapter;

    return-object p1
.end method

.method public itemCount()I
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->adapterUpdater:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->getCache()Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->numHeaders()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final itemId(Lcom/amazon/kindle/observablemodel/ItemID;)J
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->adapterUpdater:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->getCache()Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->getStableIdForItemId(Lcom/amazon/kindle/observablemodel/ItemID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final numHeaders()I
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onAuthenticationEvent$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChangeUpdate(Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;)V
    .locals 2

    .line 344
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onChangeUpdate$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper$onChangeUpdate$1;-><init>(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;Lcom/amazon/kindle/observablemodel/ModelChangeUpdate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final recycleView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;)V
    .locals 4

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    check-cast p1, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    .line 282
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->adapter:Lcom/amazon/kcp/library/FastRecyclerAdapter;

    const/4 v2, 0x0

    const-string v3, "adapter"

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/AbstractRecyclerAdapter;->itemId(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->isItemIdChecked(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->adapterUpdater:Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterUpdater;->getCache()Lcom/amazon/kcp/library/fragments/CurrentValueCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/library/fragments/CurrentValueCache;->clearStableId(Lcom/amazon/kindle/observablemodel/ItemID;)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 289
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->disconnectHolder(Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;)V

    return-void
.end method

.method protected updatePresentationAndCountListeners()V
    .locals 3

    .line 319
    invoke-super {p0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerAdapterHelper;->updatePresentationAndCountListeners()V

    .line 322
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->groupListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/observablemodel/LibraryGroupListener;

    .line 323
    invoke-direct {p0, v1, v2}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->updateGroupListener(Lcom/amazon/kindle/observablemodel/LibraryGroupListener;Lcom/amazon/kindle/observablemodel/ItemID;)V

    goto :goto_0

    :cond_0
    return-void
.end method
