.class public final Lcom/amazon/kindle/services/authentication/MAPAccountHolder;
.super Ljava/lang/Object;
.source "AccountHolders.kt"

# interfaces
.implements Lcom/amazon/kindle/services/authentication/AccountHolder;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountHolders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountHolders.kt\ncom/amazon/kindle/services/authentication/MAPAccountHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1819#2,2:166\n*E\n*S KotlinDebug\n*F\n+ 1 AccountHolders.kt\ncom/amazon/kindle/services/authentication/MAPAccountHolder\n*L\n105#1,2:166\n*E\n"
.end annotation


# instance fields
.field private final accountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field private final appSettingsController:Lcom/amazon/kcp/application/IAppSettingsController;

.field private cachedUserCor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedUserId:Ljava/lang/String;

.field private final cachedUserIdWriteLock:Ljava/lang/Object;

.field private final cachedUserPfm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final tokenCache:Lcom/amazon/kindle/services/authentication/ITokenCache;

.field private final userSettings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/services/authentication/ITokenCache;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/kcp/application/IAppSettingsController;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenCache"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSettingsController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    iput-object p3, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->tokenCache:Lcom/amazon/kindle/services/authentication/ITokenCache;

    iput-object p4, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->accountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iput-object p5, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->appSettingsController:Lcom/amazon/kcp/application/IAppSettingsController;

    .line 40
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 43
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserIdWriteLock:Ljava/lang/Object;

    .line 45
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserPfm:Ljava/util/Map;

    .line 46
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserCor:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/services/authentication/ITokenCache;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/kcp/application/IAppSettingsController;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const-string v0, "Utils.getFactory()"

    if-eqz p7, :cond_0

    .line 32
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    const-string p7, "Utils.getFactory().userSettingsController"

    invoke-static {p2, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v3, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 33
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->getInstance(Landroid/content/Context;Lcom/amazon/kindle/services/IReaderServicesObjectFactory;)Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    move-result-object p3

    const-string p2, "MAPTokenCache.getInstanc\u2026text, Utils.getFactory())"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v4, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 34
    new-instance p4, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {p4, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    :cond_2
    move-object v5, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    .line 35
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object p5

    const-string p2, "Utils.getFactory().appSettingsController"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/services/authentication/ITokenCache;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/kcp/application/IAppSettingsController;)V

    return-void
.end method

.method private final getCachedUserId()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserIdWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->accountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserId:Ljava/lang/String;

    .line 59
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 62
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserId:Ljava/lang/String;

    return-object v0
.end method

.method private final setCachedUserId(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserIdWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserId:Ljava/lang/String;

    .line 67
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public clearAuthorizedUser()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setAuthorizedAccount(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, v1}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->setCachedUserId(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserCor:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 138
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserPfm:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getCachedUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllUsers()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/authentication/IAccountInfo;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kindle/services/authentication/UserStateHelper;->isInSafeMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/services/authentication/Role;->CHILD:Lcom/amazon/kindle/services/authentication/Role;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kindle/services/authentication/Role;->ADULT:Lcom/amazon/kindle/services/authentication/Role;

    .line 105
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->accountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v2

    const-string v3, "accountManager.accounts"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    iget-object v4, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->tokenCache:Lcom/amazon/kindle/services/authentication/ITokenCache;

    sget-object v5, Lcom/amazon/kindle/services/authentication/TokenKey;->COR:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-static {v4, v5, v3}, Lcom/amazon/kindle/services/authentication/AccountHoldersKt;->fetchToken(Lcom/amazon/kindle/services/authentication/ITokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    iget-object v5, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->tokenCache:Lcom/amazon/kindle/services/authentication/ITokenCache;

    sget-object v6, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-static {v5, v6, v3}, Lcom/amazon/kindle/services/authentication/AccountHoldersKt;->fetchToken(Lcom/amazon/kindle/services/authentication/ITokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    iget-object v6, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserCor:Ljava/util/Map;

    const-string v7, "accountId"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v6, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserPfm:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v6, Lcom/amazon/kindle/services/authentication/MapAccountInfo;

    invoke-direct {v6, v3, v1, v4, v5}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/services/authentication/DefaultAccount;->getInstance()Lcom/amazon/kindle/services/authentication/DefaultAccount;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getAuthorizedUserId()Ljava/lang/String;
    .locals 2

    .line 82
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->appSettingsController:Lcom/amazon/kcp/application/IAppSettingsController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->hasMigratedAccountToUserSettings()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MAPAccountHolder"

    const-string v1, "Migrating id"

    .line 84
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-direct {p0}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getCachedUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setAuthorizedAccount(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->appSettingsController:Lcom/amazon/kcp/application/IAppSettingsController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAppSettingsController;->setHasMigratedAccountToUserSettings(Z)V

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getCachedUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getAuthorizedAccount()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentUser()Lcom/amazon/kindle/services/authentication/IAccountInfo;
    .locals 5

    .line 123
    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getAuthorizedUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kindle/services/authentication/UserStateHelper;->isInSafeMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/services/authentication/Role;->CHILD:Lcom/amazon/kindle/services/authentication/Role;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kindle/services/authentication/Role;->ADULT:Lcom/amazon/kindle/services/authentication/Role;

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserCor:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserPfm:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 127
    new-instance v4, Lcom/amazon/kindle/services/authentication/MapAccountInfo;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amazon/kindle/services/authentication/MapAccountInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/Role;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 123
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/services/authentication/DefaultAccount;->getInstance()Lcom/amazon/kindle/services/authentication/DefaultAccount;

    move-result-object v0

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getAuthorizedUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final onTokenFetchedEvent(Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;)V
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getKey()Lcom/amazon/kindle/services/authentication/TokenKey;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->COR:Lcom/amazon/kindle/services/authentication/TokenKey;

    const-string v2, ", account : "

    const-string v3, "MAPAccountHolder"

    const-string v4, "event.value"

    const-string v5, "event.account"

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserCor:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set COR as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getAccount()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getKey()Lcom/amazon/kindle/services/authentication/TokenKey;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    if-ne v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->cachedUserPfm:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set PFM as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getAccount()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
