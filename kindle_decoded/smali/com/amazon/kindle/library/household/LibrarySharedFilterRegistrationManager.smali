.class public final Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;
.super Ljava/lang/Object;
.source "LibrarySharedFilterRegistrationManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibrarySharedFilterRegistrationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibrarySharedFilterRegistrationManager.kt\ncom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,188:1\n181#2,2:189\n*E\n*S KotlinDebug\n*F\n+ 1 LibrarySharedFilterRegistrationManager.kt\ncom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager\n*L\n130#1,2:189\n*E\n"
.end annotation


# instance fields
.field private final authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private householdMemberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastUserId:Ljava/lang/String;

.field private final libraryFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/library/household/HouseholdMembersProvider;Lcom/amazon/kcp/application/IAuthenticationManager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/library/household/HouseholdMembersProvider;",
            "Lcom/amazon/kcp/application/IAuthenticationManager;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/ILibraryFilter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "householdMembersProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticationManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryFilters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    iput-object p3, p0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->libraryFilters:Ljava/util/List;

    .line 37
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->householdMemberMap:Ljava/util/Map;

    .line 41
    new-instance p2, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager$1;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager$1;-><init>(Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;)V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/library/household/HouseholdMembersProvider;->setAndUseUpdateHouseholdMembersCallback(Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;)V

    return-void
.end method


# virtual methods
.method public final deregisterSharedFilters(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/ILibraryFilter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "libraryFilters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "householdMemberMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ILibraryFilter;

    .line 96
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "SharedLibrary"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    invoke-interface {v0, v3, v2}, Lcom/amazon/kcp/library/ILibraryFilter;->deregisterLibraryFilterItem(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_0
    invoke-interface {v0, v3}, Lcom/amazon/kcp/library/ILibraryFilter;->deregisterLibraryFilterGroup(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shared Library filter group for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has been de-registered."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/amazon/kcp/util/SharedLibraryFilterUtils;->clearSharedFilterItems()V

    goto :goto_0

    .line 104
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/SharedLibraryFilterUtils;->clearSharedFilterItems()V

    return-void
.end method

.method public final haveHouseholdMembersChanged(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "latestHouseholdMemberMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    const-string v1, "authenticationManager.accountInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "authenticationManager.accountInfo.id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->householdMemberMap:Ljava/util/Map;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->lastUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->libraryFilters:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->householdMemberMap:Ljava/util/Map;

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->deregisterSharedFilters(Ljava/util/List;Ljava/util/Map;)V

    .line 77
    iput-object p1, p0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->householdMemberMap:Ljava/util/Map;

    .line 79
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->libraryFilters:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->householdMemberMap:Ljava/util/Map;

    invoke-virtual {p0, p1, v1, v0}, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->registerSharedFilters(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    .line 82
    :cond_1
    iput-object v0, p0, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->lastUserId:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public final registerSharedFilters(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/ILibraryFilter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "libraryFilters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "householdMemberMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentUserId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 119
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 120
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 122
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/amazon/kcp/library/SharedOriginIdFilter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/amazon/kcp/library/SharedOriginIdFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/library/ILibraryFilter;

    .line 127
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->shared_library:I

    const/16 v3, 0xf

    const-string v4, "SharedLibrary"

    invoke-interface {p2, v4, v2, v3}, Lcom/amazon/kcp/library/ILibraryFilter;->registerLibraryFilterGroup(Ljava/lang/String;II)V

    .line 128
    invoke-static {}, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shared Library filter group for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has been registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/library/LibraryContentFilter;

    if-eqz v5, :cond_2

    .line 132
    invoke-virtual {p0, p2, v4, v3, v5}, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->registerSharedItemFilter(Lcom/amazon/kcp/library/ILibraryFilter;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/LibraryContentFilter;)V

    goto :goto_2

    .line 135
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p2, p3, v2}, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->registerYourItemFilter(Lcom/amazon/kcp/library/ILibraryFilter;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final registerSharedItemFilter(Lcom/amazon/kcp/library/ILibraryFilter;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/LibraryContentFilter;)V
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    const-string v2, "libraryFilter"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "userId"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "userName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "sharedItemFilter"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-interface {p1, v4}, Lcom/amazon/kcp/library/ILibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 178
    new-instance v10, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-direct {v10, v2}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v8, v2

    .line 180
    new-instance v13, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/16 v5, 0xd

    .line 181
    sget v7, Lcom/amazon/kindle/librarymodule/R$string;->shared_item:I

    const/4 v9, -0x1

    .line 182
    sget-object v11, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    const/4 v12, 0x0

    move-object v1, v13

    move-object/from16 v2, p2

    move v3, v5

    move-object/from16 v4, p4

    move v5, v7

    move-object v6, v8

    .line 180
    invoke-direct/range {v1 .. v12}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;I[Ljava/lang/Object;I[Ljava/lang/Object;ILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;Z)V

    const-string v1, "SharedLibrary"

    .line 183
    invoke-interface {p1, v1, v13}, Lcom/amazon/kcp/library/ILibraryFilter;->registerLibraryFilterItem(Ljava/lang/String;Lcom/amazon/kcp/library/LibraryFilterItem;)V

    .line 184
    invoke-static {v13}, Lcom/amazon/kcp/util/SharedLibraryFilterUtils;->addSharedFilterItem(Lcom/amazon/kcp/library/LibraryFilterItem;)V

    :cond_0
    return-void
.end method

.method public final registerYourItemFilter(Lcom/amazon/kcp/library/ILibraryFilter;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/ILibraryFilter;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "libraryFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedLibraryContentFilters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->OR:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    const/4 v1, 0x1

    .line 152
    invoke-static {p3, v0, v1}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combine(Ljava/util/List;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object p3

    .line 154
    invoke-interface {p1, p3}, Lcom/amazon/kcp/library/ILibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 156
    new-instance v7, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;

    invoke-direct {v7, p3}, Lcom/amazon/kcp/library/LibraryCounterVisibilityStrategy;-><init>(Lcom/amazon/kcp/library/LibraryContentFilter;)V

    .line 158
    new-instance p3, Lcom/amazon/kcp/library/LibraryFilterItem;

    const/16 v2, 0xc

    sget-object v3, Lcom/amazon/kcp/library/LibraryContentFilter;->YOUR_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 159
    sget v5, Lcom/amazon/kindle/librarymodule/R$string;->your_item:I

    const/4 v6, -0x1

    sget-object v8, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->CHECKED:Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    move-object v0, p3

    move-object v1, p2

    move v4, v5

    .line 158
    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V

    const-string p2, "SharedLibrary"

    .line 157
    invoke-interface {p1, p2, p3}, Lcom/amazon/kcp/library/ILibraryFilter;->registerLibraryFilterItem(Ljava/lang/String;Lcom/amazon/kcp/library/LibraryFilterItem;)V

    :cond_0
    return-void
.end method

.method public final updateHouseholdMemberMap(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "users"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    .line 57
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_0

    const-string v4, " "

    .line 58
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;->haveHouseholdMembersChanged(Ljava/util/Map;)V

    return-void
.end method
