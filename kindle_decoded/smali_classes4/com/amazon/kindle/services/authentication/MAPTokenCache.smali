.class final Lcom/amazon/kindle/services/authentication/MAPTokenCache;
.super Ljava/lang/Object;
.source "MAPTokenCache.java"

# interfaces
.implements Lcom/amazon/kindle/services/authentication/ITokenCache;


# static fields
.field private static final GET_TIMEOUT_MS:I = 0x2710

.field private static final HASH_CONCURRENCY_LEVEL:I = 0x1

.field private static final HASH_LOAD_FACTOR:F = 0.9f

.field private static final LEGACY_ACCOUNT_SECRETS_KEY:Ljava/lang/String; = "com.amazon.kindle.tokens.acct_secrets"

.field private static final NUM_GET_RETRIES:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final USER_EMAIL_THREAD_NAME:Ljava/lang/String; = "USER_EMAIL_Fetcher"

.field private static failSynchronousGetValueOnMainThread:Z

.field private static volatile instance:Lcom/amazon/kindle/services/authentication/MAPTokenCache;


# instance fields
.field private final accountCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/services/authentication/TokenKey;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private cachedDsn:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final customerAttributeStore:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

.field private final deviceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/services/authentication/TokenKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceDataStore:Lcom/amazon/identity/auth/device/api/DeviceDataStore;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final factory:Lcom/amazon/kindle/services/IReaderServicesObjectFactory;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private queryMapCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final tokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    sput-boolean v0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->failSynchronousGetValueOnMainThread:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/services/IReaderServicesObjectFactory;)V
    .locals 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v0

    const-string v1, "MAPTokenCache"

    .line 76
    invoke-interface {v0, v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 77
    invoke-interface {v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->executor:Ljava/util/concurrent/ExecutorService;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->accountCaches:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->deviceCache:Ljava/util/Map;

    const-string v0, ""

    .line 99
    iput-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->cachedDsn:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->queryMapCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->context:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->factory:Lcom/amazon/kindle/services/IReaderServicesObjectFactory;

    .line 118
    new-instance p2, Lcom/amazon/identity/auth/device/api/TokenManagement;

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/api/TokenManagement;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->tokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;

    .line 119
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->customerAttributeStore:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    .line 120
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->deviceDataStore:Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Ljava/lang/String;Lcom/amazon/kindle/services/authentication/MAPTokenTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->retrieveToken(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/MAPTokenTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->handleNewValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ensureAccountCache(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/services/authentication/TokenKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->accountCaches:Ljava/util/Map;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->accountCaches:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 309
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 310
    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->accountCaches:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 313
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private fetchCustomerAttribute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 368
    new-instance v0, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->customerAttributeStore:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    if-eqz p3, :cond_0

    sget-object p3, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;->ForceRefresh:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    .line 370
    invoke-static {p3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-class p3, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    .line 371
    invoke-static {p3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p3

    :goto_0
    invoke-direct {v0, v1, p1, p3}, Lcom/amazon/kindle/services/authentication/CustomerAttributeStoreTokenTask;-><init>(Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 372
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->retrieveToken(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/MAPTokenTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fetchDeviceData(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->deviceDataStore:Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceDataStore with tokenKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/DeviceDataStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 436
    sget-object v2, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get device data token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private fetchTokenManagementToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 360
    new-instance v0, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;

    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->tokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;

    invoke-direct {v0, v1, p1, p0}, Lcom/amazon/kindle/services/authentication/TokenManagementTokenTask;-><init>(Lcom/amazon/identity/auth/device/api/TokenManagement;Ljava/lang/String;Lcom/amazon/kindle/services/authentication/ITokenCache;)V

    .line 361
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->retrieveToken(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/MAPTokenTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fetchUserEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 499
    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->ACCESS_TOKEN:Lcom/amazon/kindle/services/authentication/TokenKey;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->getValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    .line 500
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v3, ""

    if-eqz v0, :cond_0

    .line 501
    sget-object v0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Null or empty access token: [%s], aborting..."

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 505
    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 506
    new-instance v1, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;

    new-instance v2, Lcom/amazon/kindle/services/authentication/MAPTokenCache$5;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kindle/services/authentication/MAPTokenCache$5;-><init>(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Ljava/util/concurrent/BlockingQueue;)V

    invoke-direct {v1, v2, p1}, Lcom/amazon/kindle/webservices/GetCustomerEmailWebRequest;-><init>(Lcom/amazon/kindle/callback/ICallback;Ljava/lang/String;)V

    .line 512
    iget-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->factory:Lcom/amazon/kindle/services/IReaderServicesObjectFactory;

    invoke-interface {p1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    const-wide/16 v1, 0x2710

    .line 516
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, p1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, p1

    goto :goto_0

    .line 521
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-object v3
.end method

.method private fetchValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/services/authentication/TokenKey;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/services/authentication/TokenKey;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query MAP for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , total query : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->queryMapCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 212
    sget-object v1, Lcom/amazon/kindle/services/authentication/MAPTokenCache$8;->$SwitchMap$com$amazon$kindle$services$authentication$TokenKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const-string v3, "com.amazon.dcp.sso.token.cookie.xmainAndXabcCookies"

    const-string v4, ""

    packed-switch v1, :pswitch_data_0

    .line 294
    new-instance p2, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected key: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 290
    :pswitch_0
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/DeviceDataKeys;->getDeviceTypeKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchDeviceData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_0

    .line 286
    :pswitch_1
    invoke-direct {p0, v3, p2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchTokenManagementToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_0

    :pswitch_2
    const-string p3, "kindle.account.tokens"

    .line 281
    invoke-static {v0, p3}, Lcom/amazon/identity/auth/device/api/CustomerAttributeKeys;->getCustomizedKeyForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p2, v2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchCustomerAttribute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_0

    .line 277
    :pswitch_3
    invoke-direct {p0, v3, p2, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchCustomerAttribute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "PFM"

    .line 273
    invoke-direct {p0, v0, p2, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchCustomerAttribute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "COR"

    .line 269
    invoke-direct {p0, v0, p2, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchCustomerAttribute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_0

    .line 265
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchUserEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "com.amazon.dcp.sso.token.device.accountpool"

    .line 261
    invoke-direct {p0, v0, p2, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchCustomerAttribute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 256
    :pswitch_8
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/CustomerAttributeKeys;->getUserNameKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchCustomerAttribute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 251
    :pswitch_9
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/CustomerAttributeKeys;->getDeviceEmailKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchCustomerAttribute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 246
    :pswitch_a
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/CustomerAttributeKeys;->getDeviceNameKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchCustomerAttribute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 237
    :pswitch_b
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->cachedDsn:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    iget-object p3, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->cachedDsn:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/CustomerAttributeKeys;->getDsnKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchCustomerAttribute(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :pswitch_c
    move-object p3, v4

    goto :goto_0

    .line 226
    :pswitch_d
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "com.amazon.identity.cookies.xfsn"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchTokenManagementToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 222
    :pswitch_e
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getPrivateKeyKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchTokenManagementToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 218
    :pswitch_f
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getAdpTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchTokenManagementToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 214
    :pswitch_10
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getAccessTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchTokenManagementToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 297
    :goto_0
    invoke-static {p3}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    sget-object p1, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p3, p2, v2

    const-string p3, "Result is null or empty: [%s], aborting..."

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 302
    :cond_1
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->handleNewValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized fireTokenFetchedEvent(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 491
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    .line 492
    const-class v1, Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;-><init>(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;Lcom/amazon/kindle/services/IReaderServicesObjectFactory;)Lcom/amazon/kindle/services/authentication/MAPTokenCache;
    .locals 2

    .line 105
    sget-object v0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->instance:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    if-nez v0, :cond_1

    .line 106
    const-class v0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->instance:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;-><init>(Landroid/content/Context;Lcom/amazon/kindle/services/IReaderServicesObjectFactory;)V

    sput-object v1, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->instance:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    .line 110
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 112
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->instance:Lcom/amazon/kindle/services/authentication/MAPTokenCache;

    return-object p0
.end method

.method private handleNewValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/services/authentication/TokenKey;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/services/authentication/TokenKey;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 326
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenKey;->options()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->DEVICE_DATA:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenKey;->options()Ljava/util/Set;

    move-result-object p3

    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 328
    iget-object p3, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->deviceCache:Ljava/util/Map;

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 329
    invoke-static {p4, p3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    xor-int/2addr v1, p3

    goto :goto_0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->accountCaches:Ljava/util/Map;

    monitor-enter v0

    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->accountCaches:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eq v2, p3, :cond_1

    .line 335
    sget-object p1, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    const-string p2, "Account removed while talking to MAP, aborting..."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 336
    monitor-exit v0

    return-object p1

    .line 338
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenKey;->options()Ljava/util/Set;

    move-result-object p3

    sget-object v3, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 339
    invoke-interface {v2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 340
    invoke-static {p4, p3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    xor-int/2addr p3, v1

    move v1, p3

    .line 342
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenKey;->options()Ljava/util/Set;

    move-result-object p3

    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->EVENTS_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz v1, :cond_4

    .line 346
    invoke-direct {p0, p1, p4, p2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fireTokenFetchedEvent(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object p4

    :catchall_0
    move-exception p1

    .line 342
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static isRunningOnMainThread()Z
    .locals 2

    .line 579
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private retrieveToken(Ljava/lang/String;Lcom/amazon/kindle/services/authentication/MAPTokenTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, " failed"

    const-string v1, "Retrieving of token: "

    .line 376
    invoke-static {}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->isRunningOnMainThread()Z

    move-result v2

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 380
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/services/authentication/MAPTokenCache$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache$3;-><init>(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Ljava/lang/String;Lcom/amazon/kindle/services/authentication/MAPTokenTask;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 387
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 391
    sget-object p3, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v5

    const-string p1, "Unexpected error retrieving value for key: [%s]"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 389
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-object v3

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/4 v6, 0x3

    if-ge v2, v6, :cond_2

    .line 397
    invoke-interface {p2, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenTask;->execute(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v6

    const-wide/16 v7, 0x2710

    .line 401
    :try_start_1
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v7, v8, v9}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 402
    invoke-interface {p2, v6}, Lcom/amazon/kindle/services/authentication/MAPTokenTask;->getValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/amazon/identity/auth/device/api/MAPCallbackErrorException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    :catch_2
    move-exception v6

    .line 411
    sget-object v7, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v6, 0x1

    goto :goto_3

    :catch_3
    move-exception v6

    .line 409
    sget-object v7, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_4
    move-exception v6

    .line 406
    sget-object v7, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :catch_5
    move-exception v6

    .line 404
    sget-object v7, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_2
    :goto_4
    return-object v3
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 3

    .line 528
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    sget-object v0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Null or empty account: [%s], aborting..."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->accountCaches:Ljava/util/Map;

    monitor-enter v0

    .line 534
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->accountCaches:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7

    .line 127
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenKey;->options()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->DEVICE_DATA:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenKey;->options()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->deviceCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move-object v6, v0

    goto/16 :goto_1

    .line 136
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->failSynchronousGetValueOnMainThread:Z

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 137
    invoke-static {}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->isRunningOnMainThread()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 138
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "getValue() called synchronously on main thread"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 141
    :cond_3
    :goto_0
    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    sget-object p3, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_SERIAL_NUMBER:Lcom/amazon/kindle/services/authentication/TokenKey;

    if-ne p1, p3, :cond_5

    .line 146
    iget-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->cachedDsn:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Device Serial Number"

    .line 148
    invoke-direct {p0, p1}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchDeviceData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->cachedDsn:Ljava/lang/String;

    .line 150
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->cachedDsn:Ljava/lang/String;

    return-object p1

    .line 152
    :cond_5
    sget-object p3, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p4, v0

    const/4 p2, 0x1

    aput-object p1, p4, p2

    const-string p1, "Null or empty account: [%s], key: [%s], aborting..."

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1

    .line 157
    :cond_6
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->accountCaches:Ljava/util/Map;

    monitor-enter v0

    .line 158
    :try_start_0
    invoke-direct {p0, p2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->ensureAccountCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 159
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenKey;->options()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/services/authentication/TokenKey$Option;->CACHING_ENABLED:Lcom/amazon/kindle/services/authentication/TokenKey$Option;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p4, :cond_7

    .line 160
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 161
    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 162
    monitor-exit v0

    return-object v2

    .line 165
    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v1

    :goto_1
    if-eqz p3, :cond_8

    .line 169
    invoke-direct {p0, p1, p2, p4, v6}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->fetchValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 171
    :cond_8
    new-instance p3, Lcom/amazon/kindle/services/authentication/MAPTokenCache$1;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/services/authentication/MAPTokenCache$1;-><init>(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;ZLjava/util/Map;)V

    .line 183
    sget-object p2, Lcom/amazon/kindle/services/authentication/TokenKey;->USER_EMAIL:Lcom/amazon/kindle/services/authentication/TokenKey;

    if-ne p1, p2, :cond_9

    .line 184
    new-instance p1, Lcom/amazon/kindle/services/authentication/MAPTokenCache$2;

    invoke-direct {p1, p0, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache$2;-><init>(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Ljava/lang/Runnable;)V

    move-object p3, p1

    .line 193
    :cond_9
    iget-object p1, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const-string p1, ""

    return-object p1

    :catchall_0
    move-exception p1

    .line 165
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 443
    invoke-static {p3}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 444
    sget-object p2, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    aput-object p1, v0, v1

    const-string p1, "Null or empty account: [%s], key: [%s], aborting..."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 448
    :cond_0
    invoke-direct {p0, p3}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->ensureAccountCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 452
    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    if-ne p1, v0, :cond_1

    .line 453
    invoke-direct {p0, p1, p3, v4, p2}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->handleNewValue(Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 460
    sget-object v3, Lcom/amazon/kindle/services/authentication/MAPTokenCache$8;->$SwitchMap$com$amazon$kindle$services$authentication$TokenKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/16 v5, 0xf

    if-eq v3, v5, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "kindle.account.tokens"

    .line 462
    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/api/CustomerAttributeKeys;->getCustomizedKeyForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    if-nez v6, :cond_3

    .line 471
    sget-object p2, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v2

    const-string p1, "No MAP key for token key: [%s], aborting..."

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 475
    :cond_3
    iget-object v7, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->customerAttributeStore:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    new-instance v8, Lcom/amazon/kindle/services/authentication/MAPTokenCache$4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/services/authentication/MAPTokenCache$4;-><init>(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Lcom/amazon/kindle/services/authentication/TokenKey;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v7, p3, v6, p2, v8}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void
.end method

.method public updateDeviceCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;JLcom/amazon/kindle/callback/ICallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/messaging/ITodoItem;",
            "J",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
            ">;)V"
        }
    .end annotation

    .line 541
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    sget-object p2, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->TAG:Ljava/lang/String;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "Null or empty account: [%s], aborting..."

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 546
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->ensureAccountCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 548
    new-instance v7, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;

    invoke-direct {v7, p0, p1, v0}, Lcom/amazon/kindle/services/authentication/MAPTokenCache$6;-><init>(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Ljava/lang/String;Ljava/util/Map;)V

    .line 567
    new-instance p1, Lcom/amazon/kindle/services/authentication/MAPTokenCache$7;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/services/authentication/MAPTokenCache$7;-><init>(Lcom/amazon/kindle/services/authentication/MAPTokenCache;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;JLcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/callback/ICallback;)V

    .line 575
    iget-object p2, p0, Lcom/amazon/kindle/services/authentication/MAPTokenCache;->factory:Lcom/amazon/kindle/services/IReaderServicesObjectFactory;

    invoke-interface {p2}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method
