.class public final Lcom/amazon/kcp/util/SharedLibraryFilterUtils;
.super Ljava/lang/Object;
.source "SharedLibraryFilterUtils.kt"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sharedFilterItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/amazon/kcp/util/SharedLibraryFilterUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/util/SharedLibraryFilterUtils;-><init>()V

    .line 19
    const-class v0, Lcom/amazon/kcp/util/SharedLibraryFilterUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(SharedLibraryFilterUtils::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/util/SharedLibraryFilterUtils;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/SharedLibraryFilterUtils;->sharedFilterItems:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addSharedFilterItem(Lcom/amazon/kcp/library/LibraryFilterItem;)V
    .locals 1

    const-string v0, "sharedFilterItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/amazon/kcp/util/SharedLibraryFilterUtils;->sharedFilterItems:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final clearSharedFilterItems()V
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kcp/util/SharedLibraryFilterUtils;->sharedFilterItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static final getSharedFilterItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/amazon/kcp/util/SharedLibraryFilterUtils;->sharedFilterItems:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final registerSharedFilterItemsIfNecessary(Lcom/amazon/kcp/library/ILibraryFilter;)V
    .locals 4

    const-string v0, "libraryFilter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kcp/library/ILibraryFilter;->getGroupsMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "SharedLibrary"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    const-class v0, Lcom/amazon/kindle/library/household/HouseholdMembersProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/library/household/HouseholdMembersProvider;

    if-eqz v0, :cond_1

    .line 66
    new-instance v1, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    const-string v3, "Utils.getFactory()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    const-string v3, "Utils.getFactory().authenticationManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/kindle/library/household/LibrarySharedFilterRegistrationManager;-><init>(Lcom/amazon/kindle/library/household/HouseholdMembersProvider;Lcom/amazon/kcp/application/IAuthenticationManager;Ljava/util/List;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shared Library filters for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " have been registered"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Must implement a HouseholdMembersProvider via discoverable"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
