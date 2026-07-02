.class public final Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider;
.super Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;
.source "KfaHouseholdMembersProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/library/household/HouseholdMembersProvider;


# instance fields
.field private final authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 18
    invoke-direct {p0}, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;-><init>()V

    .line 20
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "Utils.getFactory().authenticationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 24
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider$1;-><init>(Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    return-void
.end method


# virtual methods
.method public final getHouseholdMembers$ThirdPartyCore_release()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/amazon/kindle/library/household/HouseholdClient;->getHouseholdMembers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final isSupportedMarketplace$ThirdPartyCore_release()Z
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    sget-object v2, Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    :goto_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public triggerGetAllUsersRefresh()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider;->isSupportedMarketplace$ThirdPartyCore_release()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/library/household/KfaHouseholdMembersProvider;->getHouseholdMembers$ThirdPartyCore_release()Ljava/util/Map;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->getHouseholdMemberMapCacheLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-eqz v0, :cond_1

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->getHouseholdMemberMapCache()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->setHouseholdMemberMapCache(Ljava/util/Map;)V

    .line 48
    invoke-virtual {p0}, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->getHouseholdMemberMapCache()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->saveHouseholdMemberMap(Ljava/util/Map;)V

    .line 50
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v1

    .line 52
    invoke-virtual {p0}, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->getUpdateHouseholdMembersCallback()Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->getHouseholdMemberMapCache()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/library/household/BaseHouseholdMembersProvider;->postGetUsersCallback(Lcom/amazon/kindle/library/household/HouseholdMembersProvider$GetAllUsersCallback;Ljava/util/Map;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 45
    monitor-exit v1

    throw v0

    :cond_3
    :goto_0
    return-void
.end method
