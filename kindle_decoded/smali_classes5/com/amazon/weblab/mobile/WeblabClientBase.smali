.class Lcom/amazon/weblab/mobile/WeblabClientBase;
.super Ljava/lang/Object;
.source "WeblabClientBase.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/IMobileWeblabClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/weblab/mobile/WeblabClientBase$ServiceListener;,
        Lcom/amazon/weblab/mobile/WeblabClientBase$CacheListener;
    }
.end annotation


# instance fields
.field private mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

.field private mConfiguration:Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;

.field private mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

.field private final mDefaultMetricPublisher:Lcom/amazon/weblab/mobile/WeblabClientDefaultMetricPublisher;

.field protected mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mLockedTreatments:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;"
        }
    .end annotation
.end field

.field private mProxy:Lcom/amazon/weblab/mobile/service/IServiceProxy;

.field private mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

.field private mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

.field private volatile mUpdateTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    .line 128
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p4, :cond_2

    .line 131
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p6, :cond_1

    .line 138
    new-instance v2, Lcom/amazon/weblab/mobile/model/SessionInfo;

    invoke-direct {v2, p3, p4}, Lcom/amazon/weblab/mobile/model/SessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    .line 139
    new-instance p3, Lcom/amazon/weblab/mobile/model/CustomerInfo;

    invoke-direct {p3, p5}, Lcom/amazon/weblab/mobile/model/CustomerInfo;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    .line 140
    iput-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    .line 142
    new-instance p3, Lcom/amazon/weblab/mobile/WeblabClientDefaultMetricPublisher;

    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {p4}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getWeblabs()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-direct {p3, p1, p4}, Lcom/amazon/weblab/mobile/WeblabClientDefaultMetricPublisher;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    iput-object p3, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mDefaultMetricPublisher:Lcom/amazon/weblab/mobile/WeblabClientDefaultMetricPublisher;

    .line 143
    iput-object p2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mConfiguration:Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;

    .line 144
    invoke-static {p6}, Lcom/amazon/weblab/mobile/metrics/ApplicationContextHolder;->setApplicationContext(Landroid/content/Context;)V

    .line 145
    invoke-direct {p0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->initialize()V

    .line 146
    invoke-virtual {p0, p2}, Lcom/amazon/weblab/mobile/WeblabClientBase;->getRepositoryType(Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;)Lcom/amazon/weblab/mobile/repository/RepositoryType;

    move-result-object p1

    .line 147
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/WeblabClientBase;->initializeData(Lcom/amazon/weblab/mobile/repository/RepositoryType;)V

    .line 148
    invoke-interface {p2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;->isUpdateAtInitEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->updateAsync()Ljava/util/concurrent/Future;

    .line 152
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    long-to-double p1, p1

    iget-object p3, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {p3}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    const-string p4, "WeblabClientBaseClientInitLatency"

    .line 151
    invoke-static {p4, p1, p2, p3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    return-void

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "marketplaceId can\'t be null nor empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sessionId can\'t be null nor empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "config can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "clientAttr can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/weblab/mobile/WeblabClientBase;)Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/weblab/mobile/WeblabClientBase;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/weblab/mobile/WeblabClientBase;->pushAll(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/weblab/mobile/WeblabClientBase;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->updateImpl()Z

    move-result p0

    return p0
.end method

.method private createDefaultTreatment(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/weblab/mobile/model/TreatmentAssignment;
    .locals 10

    .line 317
    new-instance v9, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    new-instance v4, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v3, "com.amazon.weblab.mobile.version.Default"

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZJ)V

    const/4 p1, 0x0

    .line 319
    invoke-virtual {v9, p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->setLocked(Z)V

    return-object v9
.end method

.method private hasSessionFlip(Lcom/amazon/weblab/mobile/model/SessionInfo;)Z
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    invoke-virtual {v0, p1}, Lcom/amazon/weblab/mobile/model/SessionInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private initialize()V
    .locals 11

    .line 156
    new-instance v0, Lcom/amazon/weblab/mobile/WeblabClientBase$CacheListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/weblab/mobile/WeblabClientBase$CacheListener;-><init>(Lcom/amazon/weblab/mobile/WeblabClientBase;Lcom/amazon/weblab/mobile/WeblabClientBase$1;)V

    .line 158
    new-instance v10, Lcom/amazon/weblab/mobile/ExceptionLoggingThreadPoolExecutor;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mConfiguration:Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;

    invoke-interface {v2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;->getMaxDegreeOfParallelism()I

    move-result v4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    .line 159
    invoke-interface {v2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    const-wide/16 v5, 0x1388

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/amazon/weblab/mobile/ExceptionLoggingThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 160
    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 162
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mLockedTreatments:Ljava/util/concurrent/ConcurrentHashMap;

    .line 164
    iget-object v2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mConfiguration:Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;

    invoke-interface {v2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;->getCachePolicy()Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mConfiguration:Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;

    .line 165
    invoke-interface {v3}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;->getTtl()Lcom/amazon/weblab/mobile/settings/Interval;

    move-result-object v3

    .line 164
    invoke-static {v2, v3}, Lcom/amazon/weblab/mobile/cache/CachePolicyFactory;->createCachePolicy(Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;Lcom/amazon/weblab/mobile/settings/Interval;)Lcom/amazon/weblab/mobile/cache/ICachePolicy;

    move-result-object v2

    .line 166
    invoke-interface {v2, v0}, Lcom/amazon/weblab/mobile/cache/ICachePolicy;->setListener(Lcom/amazon/weblab/mobile/cache/ICacheRefresher;)V

    .line 169
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mConfiguration:Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;

    invoke-virtual {p0, v0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->getRepositoryType(Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;)Lcom/amazon/weblab/mobile/repository/RepositoryType;

    move-result-object v0

    .line 170
    iget-object v3, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mConfiguration:Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;

    invoke-interface {v3}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;->getDirectory()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    .line 171
    invoke-interface {v4}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-static {v0, v3, v4, v2}, Lcom/amazon/weblab/mobile/repository/RepositoryFactory;->createRepository(Lcom/amazon/weblab/mobile/repository/RepositoryType;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/weblab/mobile/cache/ICachePolicy;)Lcom/amazon/weblab/mobile/repository/IRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    .line 173
    new-instance v0, Lcom/amazon/weblab/mobile/WeblabClientBase$ServiceListener;

    invoke-direct {v0, p0, v1}, Lcom/amazon/weblab/mobile/WeblabClientBase$ServiceListener;-><init>(Lcom/amazon/weblab/mobile/WeblabClientBase;Lcom/amazon/weblab/mobile/WeblabClientBase$1;)V

    .line 174
    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mConfiguration:Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;

    invoke-static {v0, v1, v2}, Lcom/amazon/weblab/mobile/service/ServiceProxyFactory;->createServiceProxy(Lcom/amazon/weblab/mobile/service/ITriggerRequestListener;Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;)Lcom/amazon/weblab/mobile/service/IServiceProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mProxy:Lcom/amazon/weblab/mobile/service/IServiceProxy;

    return-void
.end method

.method private initializeData(Lcom/amazon/weblab/mobile/repository/RepositoryType;)V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/repository/IRepository;->hasBackup()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 181
    :try_start_0
    invoke-direct {p0, v1}, Lcom/amazon/weblab/mobile/WeblabClientBase;->loadCacheFromRepository(I)V

    .line 182
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/repository/IRepository;->getSessionInfo()Lcom/amazon/weblab/mobile/model/SessionInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->hasSessionFlip(Lcom/amazon/weblab/mobile/model/SessionInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mConfiguration:Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;->isUpdateAtInitEnabled()Z

    move-result v0

    invoke-virtual {p0, v1, v0, p1}, Lcom/amazon/weblab/mobile/WeblabClientBase;->refreshRepository(ZZLcom/amazon/weblab/mobile/repository/RepositoryType;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 190
    iget-object v2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mConfiguration:Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;

    invoke-interface {v2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;->isCleanUpAtInitEnabled()Z

    move-result v2

    invoke-virtual {p0, v0, v2, p1}, Lcom/amazon/weblab/mobile/WeblabClientBase;->refreshRepository(ZZLcom/amazon/weblab/mobile/repository/RepositoryType;)V
    :try_end_0
    .catch Lcom/amazon/weblab/mobile/model/MobileWeblabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mConfiguration:Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;->isCleanUpAtInitEnabled()Z

    move-result v0

    invoke-virtual {p0, v1, v0, p1}, Lcom/amazon/weblab/mobile/WeblabClientBase;->refreshRepository(ZZLcom/amazon/weblab/mobile/repository/RepositoryType;)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mConfiguration:Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;->isCleanUpAtInitEnabled()Z

    move-result v0

    invoke-virtual {p0, v1, v0, p1}, Lcom/amazon/weblab/mobile/WeblabClientBase;->refreshRepository(ZZLcom/amazon/weblab/mobile/repository/RepositoryType;)V

    :goto_0
    return-void
.end method

.method private loadCacheFromRepository(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    const-string v0, "WeblabClientBaseLoadCacheLatency"

    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 212
    :try_start_0
    iget-object v4, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {v4}, Lcom/amazon/weblab/mobile/repository/IRepository;->restore()V
    :try_end_0
    .catch Lcom/amazon/weblab/mobile/model/MobileWeblabException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-double v1, v4

    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-static {v0, v1, v2, p1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v4

    .line 214
    :try_start_1
    iget-object v5, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {v5}, Lcom/amazon/weblab/mobile/repository/IRepository;->getFailsafeRepository()Lcom/amazon/weblab/mobile/repository/IRepository;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 216
    iget-object v4, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {v4}, Lcom/amazon/weblab/mobile/repository/IRepository;->getFailsafeRepository()Lcom/amazon/weblab/mobile/repository/IRepository;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    add-int/2addr p1, v1

    .line 217
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/WeblabClientBase;->loadCacheFromRepository(I)V

    goto :goto_0

    :goto_1
    return-void

    .line 220
    :cond_0
    new-instance p1, Lcom/amazon/weblab/mobile/model/MobileWeblabException;

    invoke-direct {p1, v4}, Lcom/amazon/weblab/mobile/model/MobileWeblabException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-double v1, v4

    iget-object v3, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v3}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    .line 225
    throw p1

    .line 208
    :cond_1
    new-instance p1, Lcom/amazon/weblab/mobile/model/MobileWeblabException;

    const-string v0, "Retried too many times in repository"

    invoke-direct {p1, v0}, Lcom/amazon/weblab/mobile/model/MobileWeblabException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private pushAll(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/weblab/mobile/model/SessionInfo;",
            "Lcom/amazon/weblab/mobile/model/CustomerInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 332
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/WeblabClientBase;->hasSessionFlip(Lcom/amazon/weblab/mobile/model/SessionInfo;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {v0, p3, p2}, Lcom/amazon/weblab/mobile/repository/IRepository;->pushAll(Ljava/util/Map;Lcom/amazon/weblab/mobile/model/CustomerInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 338
    :cond_0
    iget-object p2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    if-eqz p1, :cond_1

    .line 342
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 344
    :try_start_1
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {p1}, Lcom/amazon/weblab/mobile/repository/IRepository;->save()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 348
    throw p1

    :cond_1
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 338
    iget-object p2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 339
    throw p1
.end method

.method private refreshRepository(ZZ)V
    .locals 8

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 265
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 266
    iget-object v3, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v3}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getWeblabs()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 267
    iget-object v5, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/amazon/weblab/mobile/repository/IRepository;->containsValidatedWeblab(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    .line 268
    iget-object v5, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/amazon/weblab/mobile/repository/IRepository;->getTreatmentAssignment(Ljava/lang/String;)Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    move-result-object v5

    .line 269
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->setKeepInCacheDateInMillis(J)V

    .line 270
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 273
    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v6, v4}, Lcom/amazon/weblab/mobile/WeblabClientBase;->createDefaultTreatment(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-double v3, v3

    .line 277
    iget-object v5, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    .line 278
    invoke-interface {v5}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WeblabClientBaseCacheUpdateLatency"

    .line 277
    invoke-static {v6, v3, v4, v5}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    if-eqz p2, :cond_2

    .line 280
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {p1}, Lcom/amazon/weblab/mobile/repository/IRepository;->clear()V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 282
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {p1}, Lcom/amazon/weblab/mobile/repository/IRepository;->clear()V

    .line 285
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    iget-object p2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    invoke-interface {p1, p2}, Lcom/amazon/weblab/mobile/repository/IRepository;->setSessionInfo(Lcom/amazon/weblab/mobile/model/SessionInfo;)V

    .line 286
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    iget-object p2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {p2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getApplicationVersion()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/weblab/mobile/repository/IRepository;->setApplicationVersion(Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    iget-object p2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    invoke-interface {p1, v2, p2}, Lcom/amazon/weblab/mobile/repository/IRepository;->pushAll(Ljava/util/Map;Lcom/amazon/weblab/mobile/model/CustomerInfo;)V

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    long-to-double p1, p1

    .line 289
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    .line 291
    invoke-interface {v0}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RepositoryRestoreRefreshTime"

    .line 289
    invoke-static {v1, p1, p2, v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private refreshRepositoryLazy(ZZ)V
    .locals 2

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p2, :cond_0

    if-nez p1, :cond_1

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {p1}, Lcom/amazon/weblab/mobile/repository/IRepository;->clear()V

    .line 306
    :cond_1
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    iget-object p2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    invoke-interface {p1, p2}, Lcom/amazon/weblab/mobile/repository/IRepository;->setSessionInfo(Lcom/amazon/weblab/mobile/model/SessionInfo;)V

    .line 307
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    iget-object p2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {p2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getApplicationVersion()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/weblab/mobile/repository/IRepository;->setApplicationVersion(Ljava/lang/String;)V

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    long-to-double p1, p1

    .line 309
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    .line 311
    invoke-interface {v0}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RepositoryRestoreRefreshTime"

    .line 309
    invoke-static {v1, p1, p2, v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private setSessionInfo(Lcom/amazon/weblab/mobile/model/SessionInfo;)V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 388
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/WeblabClientBase;->hasSessionFlip(Lcom/amazon/weblab/mobile/model/SessionInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iput-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    const/4 p1, 0x0

    .line 390
    invoke-direct {p0, p1, p1}, Lcom/amazon/weblab/mobile/WeblabClientBase;->refreshRepository(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 395
    throw p1
.end method

.method private updateImpl()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 359
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 361
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->getDirectedId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->getSession()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->getMarketplace()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string/jumbo v2, "updateImpl:start - parameters: directedId=%s, sessionId=%s, marketplaceId=%s "

    .line 359
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/weblab/mobile/utils/TestUtils;->logIfUnderTest(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 364
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    .line 365
    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 368
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getWeblabs()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 375
    new-instance v2, Lcom/amazon/weblab/mobile/model/CustomerInfo;

    iget-object v4, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    invoke-virtual {v4}, Lcom/amazon/weblab/mobile/model/CustomerInfo;->getDirectedId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/amazon/weblab/mobile/model/CustomerInfo;-><init>(Ljava/lang/String;)V

    .line 377
    iget-object v4, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mProxy:Lcom/amazon/weblab/mobile/service/IServiceProxy;

    iget-object v5, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v5}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getWeblabs()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v0, v2, v5}, Lcom/amazon/weblab/mobile/service/IServiceProxy;->getTreatmentAssignments(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;

    move-result-object v4

    .line 378
    invoke-virtual {v4}, Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;->getTreatmentAssignments()Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v0, v2, v4}, Lcom/amazon/weblab/mobile/WeblabClientBase;->pushAll(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Map;)V

    .line 379
    iget-object v2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getWeblabs()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "updateImpl:end"

    .line 381
    invoke-static {v0}, Lcom/amazon/weblab/mobile/utils/TestUtils;->logIfUnderTest(Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method public addWeblab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/amazon/weblab/mobile/TooManyRegisteredWeblabsException;
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mConfiguration:Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;->isCleanUpAtInitEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using addWeblab for weblab name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with cleanupAtInit set on true could result in many default treatments being thrown. Turn the cleanupAtInit off or add all the weblabs in MobileWeblabClientAttributes before constructing this object"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileWeblabAndroidClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicWeblabAdded_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 512
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 513
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v0, p1, p2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->addWeblab(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {v0, p1}, Lcom/amazon/weblab/mobile/repository/IRepository;->containsValidatedWeblab(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-direct {p0, p1, p2}, Lcom/amazon/weblab/mobile/WeblabClientBase;->createDefaultTreatment(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    invoke-interface {v0, p2, v1}, Lcom/amazon/weblab/mobile/repository/IRepository;->pushAll(Ljava/util/Map;Lcom/amazon/weblab/mobile/model/CustomerInfo;)V

    .line 518
    :cond_1
    iget-object p2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {p2, p1}, Lcom/amazon/weblab/mobile/repository/IRepository;->updateKeepInCacheDateInMillis(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 522
    throw p1
.end method

.method public getDirectedId()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/model/CustomerInfo;->getDirectedId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIMobileWeblabClientAttributes()Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    return-object v0
.end method

.method public getMarketplace()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/model/SessionInfo;->getMarketplaceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRepositoryType(Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;)Lcom/amazon/weblab/mobile/repository/RepositoryType;
    .locals 1

    .line 239
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mConfiguration:Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;

    instance-of v0, p1, Lcom/amazon/weblab/mobile/settings/ICacheConfiguration;

    if-eqz v0, :cond_0

    .line 240
    check-cast p1, Lcom/amazon/weblab/mobile/settings/ICacheConfiguration;

    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/ICacheConfiguration;->getRepositoryType()Lcom/amazon/weblab/mobile/repository/RepositoryType;

    move-result-object p1

    return-object p1

    .line 242
    :cond_0
    sget-object p1, Lcom/amazon/weblab/mobile/repository/RepositoryType;->FILE:Lcom/amazon/weblab/mobile/repository/RepositoryType;

    return-object p1
.end method

.method public getSession()Ljava/lang/String;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/model/SessionInfo;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeblab(Ljava/lang/String;)Lcom/amazon/weblab/mobile/IMobileWeblab;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 566
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 572
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getWeblabs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mLockedTreatments:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeblabClientBaseGetWeblabLockedWeblab"

    invoke-static {v1, v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 580
    new-instance v0, Lcom/amazon/weblab/mobile/WeblabBase;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mLockedTreatments:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    iget-object v4, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    iget-object v5, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    iget-object v6, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v7, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mProxy:Lcom/amazon/weblab/mobile/service/IServiceProxy;

    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    .line 581
    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/weblab/mobile/WeblabBase;-><init>(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/concurrent/ExecutorService;Lcom/amazon/weblab/mobile/service/IServiceProxy;Ljava/lang/String;)V

    return-object v0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {v0, p1}, Lcom/amazon/weblab/mobile/repository/IRepository;->containsValidatedWeblab(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 586
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 587
    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getWeblabs()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 588
    invoke-direct {p0, p1, v1}, Lcom/amazon/weblab/mobile/WeblabClientBase;->createDefaultTreatment(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    invoke-interface {v1, v0, v2}, Lcom/amazon/weblab/mobile/repository/IRepository;->pushAll(Ljava/util/Map;Lcom/amazon/weblab/mobile/model/CustomerInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 595
    throw p1

    .line 598
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 600
    :try_start_1
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mRepository:Lcom/amazon/weblab/mobile/repository/IRepository;

    invoke-interface {v0, p1}, Lcom/amazon/weblab/mobile/repository/IRepository;->getTreatmentAssignment(Ljava/lang/String;)Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    move-result-object p1

    .line 601
    new-instance v0, Lcom/amazon/weblab/mobile/WeblabBase;

    iget-object v3, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    iget-object v4, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    iget-object v5, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v6, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mProxy:Lcom/amazon/weblab/mobile/service/IServiceProxy;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    .line 602
    invoke-interface {v1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/amazon/weblab/mobile/WeblabBase;-><init>(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/concurrent/ExecutorService;Lcom/amazon/weblab/mobile/service/IServiceProxy;Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mDefaultMetricPublisher:Lcom/amazon/weblab/mobile/WeblabClientDefaultMetricPublisher;

    invoke-virtual {v1, p1}, Lcom/amazon/weblab/mobile/WeblabClientDefaultMetricPublisher;->checkAndPublishdDefaultWeblabRecorded(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)V

    const-string p1, "WeblabClientBaseGetWeblabSuccess"

    .line 605
    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v1, v2, v3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->incrementPeriodicMetric(Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 614
    iget-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "WeblabClientBaseGetWeblabFailure"

    .line 609
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    .line 610
    invoke-interface {v2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 609
    invoke-static {v0, v1, v2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 611
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 614
    :goto_1
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 615
    throw p1

    .line 573
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No registered weblab for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 574
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mClientAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    .line 575
    invoke-interface {v0}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeblabClientBaseGetWeblabNotRegistered"

    .line 574
    invoke-static {v1, p1, v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 576
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "weblabName can\'t be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 564
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "weblabName can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method refreshRepository(ZZLcom/amazon/weblab/mobile/repository/RepositoryType;)V
    .locals 1

    .line 248
    sget-object v0, Lcom/amazon/weblab/mobile/repository/RepositoryType;->LAZY:Lcom/amazon/weblab/mobile/repository/RepositoryType;

    invoke-virtual {p3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/amazon/weblab/mobile/WeblabClientBase;->refreshRepositoryLazy(ZZ)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/weblab/mobile/WeblabClientBase;->refreshRepository(ZZ)V

    :goto_0
    return-void
.end method

.method public setDirectedId(Ljava/lang/String;)V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mCustomerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    invoke-virtual {v0, p1}, Lcom/amazon/weblab/mobile/model/CustomerInfo;->setDirectedId(Ljava/lang/String;)V

    return-void
.end method

.method public setMarketplaceId(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 665
    new-instance v0, Lcom/amazon/weblab/mobile/model/SessionInfo;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/SessionInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/weblab/mobile/model/SessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-direct {p0, v0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->setSessionInfo(Lcom/amazon/weblab/mobile/model/SessionInfo;)V

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 655
    new-instance v0, Lcom/amazon/weblab/mobile/model/SessionInfo;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mSessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/SessionInfo;->getMarketplaceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amazon/weblab/mobile/model/SessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-direct {p0, v0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->setSessionInfo(Lcom/amazon/weblab/mobile/model/SessionInfo;)V

    return-void
.end method

.method public declared-synchronized updateAsync()Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mUpdateTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mUpdateTask:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 539
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "updateAsync:already in flight - parameters: directedId=%s, sessionId=%s, marketplaceId=%s "

    new-array v4, v4, [Ljava/lang/Object;

    .line 541
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->getDirectedId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->getSession()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->getMarketplace()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 539
    invoke-static {v0, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/weblab/mobile/utils/TestUtils;->logIfUnderTest(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mUpdateTask:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 545
    :cond_0
    :try_start_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "updateAsync:enqueued - parameters: directedId=%s, sessionId=%s, marketplaceId=%s "

    new-array v4, v4, [Ljava/lang/Object;

    .line 547
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->getDirectedId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->getSession()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->getMarketplace()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 545
    invoke-static {v0, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/weblab/mobile/utils/TestUtils;->logIfUnderTest(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/weblab/mobile/WeblabClientBase$2;

    invoke-direct {v1, p0}, Lcom/amazon/weblab/mobile/WeblabClientBase$2;-><init>(Lcom/amazon/weblab/mobile/WeblabClientBase;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mUpdateTask:Ljava/util/concurrent/Future;

    .line 554
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase;->mUpdateTask:Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
