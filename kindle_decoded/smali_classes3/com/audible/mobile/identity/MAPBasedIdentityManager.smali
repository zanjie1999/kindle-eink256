.class public Lcom/audible/mobile/identity/MAPBasedIdentityManager;
.super Ljava/lang/Object;
.source "MAPBasedIdentityManager.java"

# interfaces
.implements Lcom/audible/mobile/identity/IdentityManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;,
        Lcom/audible/mobile/identity/MAPBasedIdentityManager$MAPBackedMarketplaceResolutionStrategy;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field static final NONE:Lcom/audible/mobile/identity/DeviceType;


# instance fields
.field private final accountAddedBroadcastReceiver:Lcom/audible/mobile/identity/RebroadcastingBroadcastReceiver;

.field private final accountRemovedBroadcastReceiver:Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;

.field private final anonCustomerId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final customerAttributeRepository:Lcom/audible/mobile/identity/CustomerAttributeRepository;

.field private final defaultMarketplaceResolutionStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/identity/DefaultMarketplaceResolutionStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private deviceActivationSerialNumberEncoder:Lcom/audible/mobile/identity/DeviceActivationSerialNumberEncoder;

.field private final deviceDataRepository:Lcom/audible/mobile/identity/DeviceDataRepository;

.field private final deviceTypeKey:Ljava/lang/String;

.field private final dsnKey:Ljava/lang/String;

.field private final executor:Ljava/util/concurrent/Executor;

.field private extraApiHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mapAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field private final postlogoutActions:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private preferMAPDefaultMarketplaceResolution:Z

.field private final preferencesStore:Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;

.field private final prelogoutActions:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final tokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Lcom/audible/mobile/identity/impl/ImmutableDeviceTypeImpl;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/audible/mobile/identity/impl/ImmutableDeviceTypeImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->NONE:Lcom/audible/mobile/identity/DeviceType;

    .line 86
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/identity/MAPBasedIdentityManager;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;[Lcom/audible/mobile/identity/DefaultMarketplaceResolutionStrategy;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/identity/auth/device/api/TokenManagement;Lcom/audible/mobile/identity/CustomerAttributeRepository;Lcom/audible/mobile/identity/DeviceDataRepository;[Lcom/audible/mobile/identity/DefaultMarketplaceResolutionStrategy;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/identity/auth/device/api/MAPAccountManager;",
            "Lcom/amazon/identity/auth/device/api/TokenManagement;",
            "Lcom/audible/mobile/identity/CustomerAttributeRepository;",
            "Lcom/audible/mobile/identity/DeviceDataRepository;",
            "[",
            "Lcom/audible/mobile/identity/DefaultMarketplaceResolutionStrategy;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "map-callback-thread"

    .line 173
    invoke-static {v0, v1}, Lcom/audible/mobile/util/Executors;->newFixedThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v11, Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;

    move-object v0, p1

    invoke-direct {v11, p1}, Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;-><init>(Landroid/content/Context;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/concurrent/Executor;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/identity/auth/device/api/TokenManagement;Lcom/audible/mobile/identity/CustomerAttributeRepository;Lcom/audible/mobile/identity/DeviceDataRepository;Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;[Lcom/audible/mobile/identity/DefaultMarketplaceResolutionStrategy;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/concurrent/Executor;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/identity/auth/device/api/TokenManagement;Lcom/audible/mobile/identity/CustomerAttributeRepository;Lcom/audible/mobile/identity/DeviceDataRepository;Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;[Lcom/audible/mobile/identity/DefaultMarketplaceResolutionStrategy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/amazon/identity/auth/device/api/MAPAccountManager;",
            "Lcom/amazon/identity/auth/device/api/TokenManagement;",
            "Lcom/audible/mobile/identity/CustomerAttributeRepository;",
            "Lcom/audible/mobile/identity/DeviceDataRepository;",
            "Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;",
            "[",
            "Lcom/audible/mobile/identity/DefaultMarketplaceResolutionStrategy;",
            ")V"
        }
    .end annotation

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->prelogoutActions:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->postlogoutActions:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->preferMAPDefaultMarketplaceResolution:Z

    const-string v1, "context cannot be null."

    .line 197
    invoke-static {p1, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "executor cannot be null."

    .line 198
    invoke-static {p4, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "mapAccountManager cannot be null."

    .line 199
    invoke-static {p5, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "tokenManagement cannot be null."

    .line 200
    invoke-static {p6, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "customerAttributeRepository cannot be null."

    .line 201
    invoke-static {p7, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "deviceDataStore cannot be null"

    .line 202
    invoke-static {p8, v1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 203
    iput-object p5, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->mapAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    .line 204
    iput-object p6, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->tokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    iput-object p5, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->context:Landroid/content/Context;

    .line 206
    iput-object p2, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->anonCustomerId:Ljava/lang/String;

    .line 207
    iput-object p4, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->executor:Ljava/util/concurrent/Executor;

    if-nez p10, :cond_0

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/audible/mobile/identity/DefaultMarketplaceResolutionStrategy;

    .line 209
    new-instance p4, Lcom/audible/mobile/identity/MAPBasedIdentityManager$MAPBackedMarketplaceResolutionStrategy;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lcom/audible/mobile/identity/MAPBasedIdentityManager$MAPBackedMarketplaceResolutionStrategy;-><init>(Lcom/audible/mobile/identity/MAPBasedIdentityManager;Lcom/audible/mobile/identity/MAPBasedIdentityManager$1;)V

    aput-object p4, p2, v0

    const/4 p4, 0x1

    new-instance p5, Lcom/audible/mobile/identity/impl/USMarketplaceResolutionStrategyResolver;

    invoke-direct {p5}, Lcom/audible/mobile/identity/impl/USMarketplaceResolutionStrategyResolver;-><init>()V

    aput-object p5, p2, p4

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->defaultMarketplaceResolutionStrategies:Ljava/util/List;

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {p10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->defaultMarketplaceResolutionStrategies:Ljava/util/List;

    .line 214
    :goto_0
    iput-object p8, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->deviceDataRepository:Lcom/audible/mobile/identity/DeviceDataRepository;

    .line 215
    iput-object p7, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->customerAttributeRepository:Lcom/audible/mobile/identity/CustomerAttributeRepository;

    .line 216
    new-instance p2, Lcom/audible/mobile/identity/RebroadcastingBroadcastReceiver;

    const-string p4, "com.amazon.dcp.sso.action.account.added"

    const-string p5, "com.audible.mobile.identity.account.added"

    invoke-direct {p2, p1, p4, p5}, Lcom/audible/mobile/identity/RebroadcastingBroadcastReceiver;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->accountAddedBroadcastReceiver:Lcom/audible/mobile/identity/RebroadcastingBroadcastReceiver;

    .line 218
    new-instance p2, Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;

    const-string p4, "com.amazon.dcp.sso.action.account.removed"

    const-string p5, "com.audible.mobile.identity.account.removed"

    invoke-direct {p2, p0, p1, p4, p5}, Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;-><init>(Lcom/audible/mobile/identity/MAPBasedIdentityManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->accountRemovedBroadcastReceiver:Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;

    .line 220
    iget-object p2, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->accountAddedBroadcastReceiver:Lcom/audible/mobile/identity/RebroadcastingBroadcastReceiver;

    invoke-virtual {p2}, Lcom/audible/mobile/framework/BaseGlobalBroadcastReceiverRegistrationSupport;->register()V

    .line 221
    iget-object p2, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->accountRemovedBroadcastReceiver:Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;

    invoke-virtual {p2}, Lcom/audible/mobile/framework/BaseGlobalBroadcastReceiverRegistrationSupport;->register()V

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/identity/auth/device/api/CustomerAttributeKeys;->getDsnKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->dsnKey:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/DeviceDataKeys;->getDeviceTypeKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->deviceTypeKey:Ljava/lang/String;

    .line 224
    iput-object p3, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->extraApiHeaders:Ljava/util/Map;

    const-string p1, "preferencesStore can not be null"

    .line 225
    invoke-static {p9, p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p9, Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;

    iput-object p9, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->preferencesStore:Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;[Lcom/audible/mobile/identity/DefaultMarketplaceResolutionStrategy;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/audible/mobile/identity/DefaultMarketplaceResolutionStrategy;",
            ")V"
        }
    .end annotation

    .line 151
    new-instance v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v4, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/amazon/identity/auth/device/api/TokenManagement;

    invoke-direct {v5, p1}, Lcom/amazon/identity/auth/device/api/TokenManagement;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;

    invoke-direct {v6, p1}, Lcom/audible/mobile/identity/MAPCustomerAttributeRepositoryImpl;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/audible/mobile/identity/MAPDeviceDataRepositoryImpl;

    invoke-direct {v7, p1}, Lcom/audible/mobile/identity/MAPDeviceDataRepositoryImpl;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/identity/auth/device/api/TokenManagement;Lcom/audible/mobile/identity/CustomerAttributeRepository;Lcom/audible/mobile/identity/DeviceDataRepository;[Lcom/audible/mobile/identity/DefaultMarketplaceResolutionStrategy;)V

    .line 153
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    return-void
.end method

.method static synthetic access$1000(Lcom/audible/mobile/identity/MAPBasedIdentityManager;)Lcom/audible/mobile/identity/CustomerAttributeRepository;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->customerAttributeRepository:Lcom/audible/mobile/identity/CustomerAttributeRepository;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/audible/mobile/identity/MAPBasedIdentityManager;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->preferMAPDefaultMarketplaceResolution:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/audible/mobile/identity/MAPBasedIdentityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->postlogoutActions:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/audible/mobile/identity/MAPBasedIdentityManager;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$200()Lorg/slf4j/Logger;
    .locals 1

    .line 82
    sget-object v0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private static getHeadersInBundle(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1049
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "auth.headers"

    .line 1050
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 1056
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1057
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private newAuthenticatedHttpUrlConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationType;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 948
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->newAuthenticationMethod(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 950
    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->openConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private newAuthenticatedHttpUrlConnectionHeaders(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationType;Ljava/lang/String;Ljava/util/Map;[B)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/amazon/identity/auth/device/api/AuthenticationType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error happened when try to get authentication bundle"

    .line 961
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->newAuthenticationMethod(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v1

    if-nez v1, :cond_0

    .line 963
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 966
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 968
    sget-object v3, Lcom/amazon/identity/auth/device/api/AuthenticationType;->OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    if-eq p2, v3, :cond_1

    const/4 v6, 0x0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 969
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->getAuthenticationHeadersForRequest(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p2

    goto :goto_0

    .line 971
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const/4 p2, 0x0

    new-array v5, p2, [B

    const/4 v6, 0x0

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/api/AuthenticationMethod;->getAuthenticationHeadersForRequest(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;[BLcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 977
    invoke-interface {p2}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 978
    new-instance p3, Ljava/util/HashMap;

    invoke-static {p2}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->getHeadersInBundle(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object p3

    .line 975
    :cond_2
    new-instance p2, Ljava/io/IOException;

    const-string p3, "The future result is null!"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    :catch_0
    sget-object p1, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "ExecutionException happened when try to get authentication bundle result"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 999
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 994
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 995
    sget-object p1, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "InterruptedException happened when try to get authentication bundle result"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 996
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    .line 985
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException;->getErrorBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "com.amazon.identity.mobi.account.recover.context"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 986
    sget-object p1, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->LOGGER:Lorg/slf4j/Logger;

    const-string p3, "Error happened when try to get authentication bundle. Account needs to be recovered."

    invoke-interface {p1, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 987
    new-instance p1, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;

    invoke-direct {p1, v0, p2}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection$AccountNeedsRecoveryException;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    throw p1

    .line 990
    :cond_3
    sget-object p2, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->LOGGER:Lorg/slf4j/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error happened when try to get authentication bundle, the error message is: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/audible/mobile/util/BundleUtils;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 991
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 981
    :catch_3
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to parse provided URL: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private newAuthenticationMethod(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
    .locals 2

    const-string v0, "url must not be null."

    .line 932
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 934
    invoke-virtual {p0}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->getActiveAccountCustomerId()Lcom/audible/mobile/domain/CustomerId;

    move-result-object p1

    if-nez p1, :cond_0

    .line 937
    sget-object p1, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Authenticated url requested for an anonymous user."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 941
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    iget-object v1, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->context:Landroid/content/Context;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 942
    invoke-virtual {v0, p2}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object p1

    return-object p1
.end method

.method private resolveMarketplaceFromResolverStrategies()Lcom/audible/mobile/identity/Marketplace;
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->defaultMarketplaceResolutionStrategies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/identity/DefaultMarketplaceResolutionStrategy;

    .line 332
    invoke-interface {v1}, Lcom/audible/mobile/identity/DefaultMarketplaceResolutionStrategy;->resolve()Lcom/audible/mobile/identity/Marketplace;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 339
    :cond_1
    sget-object v0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Marketplace resolver strategies unable to resolve to a default marketplace.  Possible configuration error."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final getActiveAccountCustomerId()Lcom/audible/mobile/domain/CustomerId;
    .locals 1

    .line 380
    invoke-virtual {p0}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->getDirectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->getCustomerId(Ljava/lang/String;)Lcom/audible/mobile/domain/CustomerId;

    move-result-object v0

    return-object v0
.end method

.method protected getCustomerId(Ljava/lang/String;)Lcom/audible/mobile/domain/CustomerId;
    .locals 1

    .line 408
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Lcom/audible/mobile/domain/ImmutableCustomerIdImpl;

    invoke-direct {v0, p1}, Lcom/audible/mobile/domain/ImmutableCustomerIdImpl;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getCustomerPreferredMarketplace()Lcom/audible/mobile/identity/Marketplace;
    .locals 1

    .line 326
    invoke-direct {p0}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->resolveMarketplaceFromResolverStrategies()Lcom/audible/mobile/identity/Marketplace;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceActivationSerialNumber()Lcom/audible/mobile/identity/DeviceSerialNumber;
    .locals 2

    .line 540
    invoke-virtual {p0}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->getDeviceSerialNumber()Lcom/audible/mobile/identity/DeviceSerialNumber;

    move-result-object v0

    .line 541
    iget-object v1, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->deviceActivationSerialNumberEncoder:Lcom/audible/mobile/identity/DeviceActivationSerialNumberEncoder;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 543
    invoke-interface {v1, v0}, Lcom/audible/mobile/identity/DeviceActivationSerialNumberEncoder;->encode(Lcom/audible/mobile/identity/DeviceSerialNumber;)Lcom/audible/mobile/identity/DeviceSerialNumber;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getDeviceSerialNumber()Lcom/audible/mobile/identity/DeviceSerialNumber;
    .locals 3

    .line 469
    invoke-virtual {p0}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->getDirectId()Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->customerAttributeRepository:Lcom/audible/mobile/identity/CustomerAttributeRepository;

    iget-object v2, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->dsnKey:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/audible/mobile/identity/CustomerAttributeRepository;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->deviceDataRepository:Lcom/audible/mobile/identity/DeviceDataRepository;

    const-string v1, "Device Serial Number"

    invoke-interface {v0, v1}, Lcom/audible/mobile/identity/DeviceDataRepository;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 480
    :cond_1
    new-instance v1, Lcom/audible/mobile/identity/impl/ImmutableDeviceSerialNumberImpl;

    invoke-direct {v1, v0}, Lcom/audible/mobile/identity/impl/ImmutableDeviceSerialNumberImpl;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final getDeviceType()Lcom/audible/mobile/identity/DeviceType;
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->deviceDataRepository:Lcom/audible/mobile/identity/DeviceDataRepository;

    iget-object v1, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->deviceTypeKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/audible/mobile/identity/DeviceDataRepository;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    new-instance v1, Lcom/audible/mobile/identity/impl/ImmutableDeviceTypeImpl;

    invoke-direct {v1, v0}, Lcom/audible/mobile/identity/impl/ImmutableDeviceTypeImpl;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 426
    :cond_0
    sget-object v0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "deviceType not available"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 427
    sget-object v0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->NONE:Lcom/audible/mobile/identity/DeviceType;

    return-object v0
.end method

.method protected getDirectId()Ljava/lang/String;
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->mapAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAccountRegistered()Z
    .locals 1

    .line 580
    invoke-virtual {p0}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->getActiveAccountCustomerId()Lcom/audible/mobile/domain/CustomerId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {p0, v0}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->isAccountRegistered(Lcom/audible/mobile/domain/CustomerId;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isAccountRegistered(Lcom/audible/mobile/domain/CustomerId;)Z
    .locals 1

    const-string v0, "customerId cannot be null."

    .line 587
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 588
    iget-object v0, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->mapAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->isAccountRegistered(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final newAuthenticatedHttpUrlConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 912
    sget-object v0, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->newAuthenticatedHttpUrlConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationType;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public final newAuthenticatedHttpUrlConnectionHeaders(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;[B)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 926
    sget-object v2, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->newAuthenticatedHttpUrlConnectionHeaders(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationType;Ljava/lang/String;Ljava/util/Map;[B)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public registerPreLogoutAction(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->prelogoutActions:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setDeviceActivationSerialNumberEncoder(Lcom/audible/mobile/identity/DeviceActivationSerialNumberEncoder;)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->deviceActivationSerialNumberEncoder:Lcom/audible/mobile/identity/DeviceActivationSerialNumberEncoder;

    return-void
.end method
