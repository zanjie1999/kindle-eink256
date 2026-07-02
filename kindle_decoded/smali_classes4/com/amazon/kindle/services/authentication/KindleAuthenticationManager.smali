.class public final Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;
.super Lcom/amazon/kindle/event/RedrivableEventProvider;
.source "KindleAuthenticationManager.kt"

# interfaces
.implements Lcom/amazon/kcp/application/IAuthenticationManager;
.implements Lcom/amazon/kindle/services/authentication/IAccountProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKindleAuthenticationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KindleAuthenticationManager.kt\ncom/amazon/kindle/services/authentication/KindleAuthenticationManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,247:1\n1819#2,2:248\n1711#2,3:250\n*E\n*S KotlinDebug\n*F\n+ 1 KindleAuthenticationManager.kt\ncom/amazon/kindle/services/authentication/KindleAuthenticationManager\n*L\n102#1,2:248\n221#1,3:250\n*E\n"
.end annotation


# instance fields
.field private final accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

.field private final context:Landroid/content/Context;

.field private final executor:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/concurrent/ThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private volatile ftueStarted:Z

.field private final internalVersionNumber:J

.field private isAwaiting3PAuthorization:Z

.field private final mapCookiesRetriever:Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final registeredUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/services/authentication/IAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final secureStorage:Lcom/amazon/kindle/services/authentication/MAPSecureStorage;

.field private final tokenCache:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

.field private final tokensToPrefetch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/authentication/TokenKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/services/authentication/TokenKey;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokensToPrefetch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/event/RedrivableEventProvider;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->internalVersionNumber:J

    .line 57
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->getInstance(Landroid/content/Context;Lcom/amazon/kindle/services/IReaderServicesObjectFactory;)Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->tokenCache:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    .line 58
    new-instance p1, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;

    iget-object p3, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->context:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->mapCookiesRetriever:Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;

    .line 59
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->tokensToPrefetch:Ljava/util/List;

    .line 61
    new-instance p1, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;

    sget-object p2, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->Companion:Lcom/amazon/kindle/persistence/AndroidSecureStorage$Companion;

    iget-object p3, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->context:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/amazon/kindle/persistence/AndroidSecureStorage$Companion;->create(Landroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSecureStorage;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->tokenCache:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    invoke-direct {p1, p2, p3, p0}, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;-><init>(Lcom/amazon/kindle/persistence/ISecureStorage;Lcom/amazon/kindle/services/authentication/ITokenCache;Lcom/amazon/kindle/services/authentication/IAccountProvider;)V

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->secureStorage:Lcom/amazon/kindle/services/authentication/MAPSecureStorage;

    .line 62
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->registeredUsers:Ljava/util/Set;

    .line 64
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class p2, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 65
    sget-object p1, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$executor$1;->INSTANCE:Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$executor$1;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->executor:Lkotlin/Lazy;

    .line 70
    new-instance p1, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/services/authentication/ITokenCache;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/kcp/application/IAppSettingsController;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1, p1}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->handleRegistration(Ljava/util/List;Lcom/amazon/kindle/callback/ICallback;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getFtueStarted$p(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->ftueStarted:Z

    return p0
.end method

.method public static final synthetic access$getMessageQueue$p(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method public static final synthetic access$getTokenCache$p(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;)Lcom/amazon/kindle/services/authentication/MAPTokenCache;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->tokenCache:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    return-object p0
.end method

.method public static final synthetic access$getTokensToPrefetch$p(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->tokensToPrefetch:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$publishEvent(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;Lcom/amazon/kindle/event/Event;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/event/RedrivableEventProvider;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    return-void
.end method

.method public static final synthetic access$setFtueStarted$p(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->ftueStarted:Z

    return-void
.end method

.method private final removeAuthentication()V
    .locals 7

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "Utils.getFactory().userSettingsController"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getAuthorizedAccount()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 173
    invoke-static {}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Remove authentication called but not authenticated"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->getAccountId()Ljava/lang/String;

    move-result-object v1

    .line 180
    new-instance v2, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v3, "AmazonKindle"

    const-string v4, "AuthenticationManagerTimer"

    invoke-direct {v2, v3, v4}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 181
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    const-string v4, "LogoutTimer"

    .line 182
    invoke-virtual {v2, v4}, Lcom/amazon/kindle/krx/metrics/MetricsData;->startTimingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v2

    .line 184
    iget-object v5, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->secureStorage:Lcom/amazon/kindle/services/authentication/MAPSecureStorage;

    const-string v6, "KindleCipherKey"

    invoke-virtual {v5, v6}, Lcom/amazon/kindle/services/authentication/MAPSecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 186
    iget-object v5, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->tokenCache:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->clear(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v5

    if-nez v5, :cond_1

    .line 193
    invoke-static {}, Lcom/amazon/kindle/webservices/DynamicConfigManager;->getInstance()Lcom/amazon/kindle/webservices/IDynamicConfigManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/webservices/IDynamicConfigManager;->clearConfigUrls()V

    .line 196
    :cond_1
    iget-object v5, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    invoke-virtual {v5}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->clearAuthorizedUser()V

    .line 198
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->startAppSession()V

    .line 200
    invoke-static {}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Authentication removed, notifying all listeners"

    invoke-static {v5, v6}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v5, Lcom/amazon/kindle/event/Event;

    sget-object v6, Lcom/amazon/kcp/application/IAuthenticationManager;->SESSION_USER_DEREGISTER:Lcom/amazon/kindle/event/EventType;

    invoke-direct {v5, v1, v0, v6, v3}, Lcom/amazon/kindle/event/Event;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/kindle/event/EventType;Z)V

    invoke-virtual {p0, v5}, Lcom/amazon/kindle/event/RedrivableEventProvider;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    .line 203
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v5, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;

    sget-object v6, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;-><init>(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 205
    iput-boolean v3, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->ftueStarted:Z

    .line 207
    invoke-virtual {v2, v4}, Lcom/amazon/kindle/krx/metrics/MetricsData;->stopTimingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 208
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void
.end method


# virtual methods
.method public awaitingThirdPartyAuthorization()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->isAwaiting3PAuthorization:Z

    return v0
.end method

.method public fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->tokenCache:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    const-string v1, "tokenCache"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    invoke-virtual {v1}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getAuthorizedUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/amazon/kindle/services/authentication/AccountHoldersKt;->fetchToken(Lcom/amazon/kindle/services/authentication/ITokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->tokenCache:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    const-string v1, "tokenCache"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/amazon/kindle/services/authentication/AccountHoldersKt;->fetchToken(Lcom/amazon/kindle/services/authentication/ITokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getAccountId()Ljava/lang/String;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    invoke-virtual {v0}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getCurrentUser()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountHolder.getCurrentUser().id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    invoke-virtual {v0}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getCurrentUser()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticatedMethodFactory()Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;
    .locals 3

    .line 211
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    invoke-virtual {v2}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getAuthorizedUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 1

    .line 231
    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->XFSN_COOKIE:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 233
    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_TYPE:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedDSN()Ljava/lang/String;
    .locals 2

    .line 150
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    const-string v1, "DeviceInformationProviderFactory.getProvider()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 149
    invoke-static {v0, v1}, Lcom/amazon/kindle/services/authentication/TokenEncryptor;->getEncryptedDSN(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TokenEncryptor.getEncryp\u2026,\n            false\n    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEncryptedDeviceSerialNumber()Ljava/lang/String;
    .locals 2

    .line 145
    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_TYPE:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 144
    invoke-static {v0, v1}, Lcom/amazon/kindle/services/authentication/TokenEncryptor;->getEncryptedDeviceType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedDeviceType()Ljava/lang/String;
    .locals 2

    .line 155
    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_TYPE:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 154
    invoke-static {v0, v1}, Lcom/amazon/kindle/services/authentication/TokenEncryptor;->getEncryptedDeviceType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TokenEncryptor.getEncryp\u2026,\n            false\n    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFtueStarted()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->ftueStarted:Z

    return v0
.end method

.method public getIdentityCookies()[Ljava/lang/String;
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    invoke-virtual {v0}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getAuthorizedUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->mapCookiesRetriever:Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;

    invoke-virtual {v2, v0, v1}, Lcom/amazon/kindle/services/authentication/MAPCookiesRetriever;->getIdentityCookies(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPFM()Ljava/lang/String;
    .locals 1

    .line 234
    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryAccount()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    invoke-virtual {v0}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getAuthorizedUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryAmazonAccount()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    invoke-virtual {v0}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->secureStorage:Lcom/amazon/kindle/services/authentication/MAPSecureStorage;

    return-object v0
.end method

.method public getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->tokenCache:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    const-string v1, "tokenCache"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    invoke-virtual {v1}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getAuthorizedUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/amazon/kindle/services/authentication/AccountHoldersKt;->getToken(Lcom/amazon/kindle/services/authentication/ITokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getToken(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->tokenCache:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    const-string v1, "tokenCache"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/amazon/kindle/services/authentication/AccountHoldersKt;->getToken(Lcom/amazon/kindle/services/authentication/ITokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserAccountId()Ljava/lang/String;
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountInfo.id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 232
    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->USER_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleRegistration(Ljava/util/List;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/services/authentication/TokenKey;",
            ">;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    invoke-virtual {v0}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getAuthorizedUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 94
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 95
    invoke-static {}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleRegistration(): not registered with MAP"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 96
    new-instance p1, Lcom/amazon/kindle/callback/OperationResult;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    :cond_2
    return-void

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->registeredUsers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 101
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->tokenCache:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->clear(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    invoke-virtual {v1}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getAllUsers()Ljava/util/List;

    move-result-object v1

    .line 248
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/services/authentication/IAccountInfo;

    .line 102
    iget-object v3, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->registeredUsers:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 104
    :cond_4
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->executor:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$handleRegistration$2;-><init>(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;Ljava/util/List;Ljava/lang/String;Lcom/amazon/kindle/callback/ICallback;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    invoke-virtual {v0}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public isAuthenticated(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->registeredUsers:Ljava/util/Set;

    .line 250
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/authentication/IAccountInfo;

    .line 221
    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public removeAuthentication(Lcom/amazon/kindle/services/authentication/IAccountInfo;)V
    .locals 1

    const-string v0, "accountInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->removeAuthentication()V

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->registeredUsers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAwaitingThirdPartyAuthorization(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->isAwaiting3PAuthorization:Z

    return-void
.end method

.method public updateCORPFM()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    invoke-virtual {v0}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getAuthorizedUserId()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->executor:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$updateCORPFM$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager$updateCORPFM$1;-><init>(Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public updateDeviceCredentials(Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/messaging/ITodoItem;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "todoItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->tokenCache:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->accountHolder:Lcom/amazon/kindle/services/authentication/MAPAccountHolder;

    invoke-virtual {v0}, Lcom/amazon/kindle/services/authentication/MAPAccountHolder;->getAuthorizedUserId()Ljava/lang/String;

    move-result-object v2

    .line 131
    iget-wide v5, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->internalVersionNumber:J

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    .line 130
    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->updateDeviceCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;JLcom/amazon/kindle/callback/ICallback;)V

    return-void
.end method

.method public updateDeviceName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "account"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/KindleAuthenticationManager;->tokenCache:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->setValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
