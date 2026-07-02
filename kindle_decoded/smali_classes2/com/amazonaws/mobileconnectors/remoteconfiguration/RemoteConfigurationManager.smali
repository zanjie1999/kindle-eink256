.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;
.super Ljava/lang/Object;
.source "RemoteConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENDPOINT:Ljava/lang/String; = "https://arcus-uswest.amazon.com"

.field private static final TAG:Ljava/lang/String; = "RemoteConfigurationManager"


# instance fields
.field private final mAppConfigId:Ljava/lang/String;

.field private final mAttributes:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;

.field private final mConfigurationDb:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

.field private mLastSuccessfulSyncAttributeHash:I

.field private final mRemoteConfigurationFetcher:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/RemoteConfigurationFetcher;

.field private mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 275
    invoke-static {p1, p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->getOrCreateInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    move-result-object v4

    const-string v5, "https://arcus-uswest.amazon.com"

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    .line 272
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;Ljava/lang/String;)V
    .locals 6

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mLastSuccessfulSyncAttributeHash:I

    .line 111
    new-instance v0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    const-string v0, "appContext cannot be null"

    .line 285
    invoke-static {p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appConfigId cannot be null"

    .line 286
    invoke-static {p2, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-static {p2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->verifyAppConfigId(Ljava/lang/String;)V

    .line 290
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAppConfigId:Ljava/lang/String;

    .line 296
    new-instance p2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;

    invoke-direct {p2, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/AttributesImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAttributes:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;

    .line 297
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    iput p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mLastSuccessfulSyncAttributeHash:I

    .line 298
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mConfigurationDb:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    .line 299
    new-instance p2, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;

    invoke-direct {p2, p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/AndroidRemoteConfigurationFetcher;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mRemoteConfigurationFetcher:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/RemoteConfigurationFetcher;

    if-eqz p3, :cond_1

    .line 302
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAppConfigId:Ljava/lang/String;

    invoke-virtual {p4, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->readRemoteConfiguration(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 304
    invoke-interface {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getOrigin()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 306
    :cond_0
    new-instance p1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;

    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;

    .line 307
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-direct {v1, p2, p3}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAppConfigId:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 306
    invoke-virtual {p4, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->saveConfiguration(Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;)V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 292
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid endpoint"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private constructor <init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)V
    .locals 2

    .line 259
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->access$200(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->access$300(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;->access$400(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$1;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$Builder;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->verifyAppConfigId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->syncOnCurrentThread(Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V

    return-void
.end method

.method private declared-synchronized syncOnCurrentThread(Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V
    .locals 9

    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->isSyncAllowedRightNow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    .line 433
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getCause()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mLastSuccessfulSyncAttributeHash:I

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAttributes:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;

    .line 434
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getTimeToNextSyncInMS()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;->onThrottle(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    monitor-exit p0

    return-void

    .line 439
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mConfigurationDb:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAppConfigId:Ljava/lang/String;

    .line 440
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->readRemoteConfiguration(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 443
    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getEntityTag()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mRemoteConfigurationFetcher:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/RemoteConfigurationFetcher;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAppConfigId:Ljava/lang/String;

    .line 448
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->openAttributes()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/RemoteConfigurationFetcher;->fetch(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;

    move-result-object v1
    :try_end_2
    .catch Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/net/RequestThrottledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    :try_start_3
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAttributes:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iput v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mLastSuccessfulSyncAttributeHash:I

    .line 459
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->updateSyncTimeAfterSuccess()V

    .line 461
    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->isUpdate()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 462
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mConfigurationDb:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->saveConfiguration(Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;)V

    .line 464
    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v0

    .line 463
    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;->onConfigurationModified(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 465
    monitor-exit p0

    return-void

    .line 468
    :cond_3
    :try_start_4
    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;->getAsJsonString()Ljava/lang/String;

    move-result-object v1

    .line 469
    new-instance v8, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;

    new-instance v3, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v3, v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 471
    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getAppConfigurationId()Ljava/lang/String;

    move-result-object v4

    .line 472
    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getOrigin()I

    move-result v5

    .line 473
    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getEntityTag()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfigurationImpl;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 475
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mConfigurationDb:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    invoke-virtual {v0, v8}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->saveConfiguration(Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;)V

    .line 477
    invoke-interface {v8}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/model/RemoteConfiguration;->getConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v0

    .line 476
    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;->onConfigurationUnmodified(Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 478
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 454
    :try_start_5
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->updateSyncTimeAfterFailure()V

    .line 455
    invoke-interface {p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;->onFailure(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    .line 450
    :catch_1
    :try_start_6
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->updateSyncTimeAfterThrottle(J)V

    .line 451
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mThrottler:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getTimeToNextSyncInMS()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;->onThrottle(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 452
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private syncOnNewThread(Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V
    .locals 2

    .line 410
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 411
    new-instance v1, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$1;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager$1;-><init>(Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 417
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method private static verifyAppConfigId(Ljava/lang/String;)V
    .locals 1

    .line 329
    :try_start_0
    invoke-static {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;->fromArn(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/Arn;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 331
    :catch_0
    new-instance p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/MalformedAppConfigIdException;

    const-string v0, "Invalid appConfigId ARN."

    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/exceptions/MalformedAppConfigIdException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized openAttributes()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;
    .locals 1

    monitor-enter p0

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mAttributes:Lcom/amazonaws/mobileconnectors/remoteconfiguration/Attributes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public openConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->mConfigurationDb:Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ConfigurationDb;->readConfiguration()Lcom/amazonaws/mobileconnectors/remoteconfiguration/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public sync(Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V
    .locals 1

    const-string v0, "ConfigurationSyncCallback cannot be null"

    .line 397
    invoke-static {p1, v0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/gear/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/RemoteConfigurationManager;->syncOnNewThread(Lcom/amazonaws/mobileconnectors/remoteconfiguration/ConfigurationSyncCallback;)V

    return-void
.end method
