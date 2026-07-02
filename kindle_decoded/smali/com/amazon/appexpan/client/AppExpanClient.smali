.class public Lcom/amazon/appexpan/client/AppExpanClient;
.super Ljava/lang/Object;
.source "AppExpanClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/appexpan/client/AppExpanClient$SyncRunnable;
    }
.end annotation


# static fields
.field private static final INITIALIZE_DELAY:I = 0x5

.field private static INSTANCE:Lcom/amazon/appexpan/client/AppExpanClient; = null

.field private static final SEMI_COLON:Ljava/lang/String; = ":"

.field private static final SHARED_PREF_ENCODING_STATUS:Ljava/lang/String; = "encodingStatus"

.field private static final SHARED_PREF_MANIFEST_FULL_SYNC_STATE:Ljava/lang/String; = "manifestFullSyncState"

.field private static final SHARED_PREF_NEW_ENCRYPTED_URL:Ljava/lang/String; = "upgradeFullSyncState"

.field private static final SHARED_PREF_VERSIONING_FILE:Ljava/lang/String; = "app_expansion_client_versions"

.field private static final TAG:Ljava/lang/String; = "com.amazon.appexpan.client.AppExpanClient"


# instance fields
.field private appExpanMetricsAdapter:Lcom/amazon/appexpan/client/metrics/AppExpanMetricsAdapter;

.field asyncTaskExecutor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

.field private context:Landroid/content/Context;

.field dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

.field daoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;",
            ">;"
        }
    .end annotation
.end field

.field debugSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/DebugSettings;",
            ">;"
        }
    .end annotation
.end field

.field downloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

.field eventManager:Lcom/amazon/appexpan/client/event/ResourceSetEventManager;

.field private initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isFirstSync:Ljava/util/concurrent/atomic/AtomicBoolean;

.field manifestHandler:Lcom/amazon/appexpan/client/download/ManifestHandler;

.field manifestHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/download/ManifestHandler;",
            ">;"
        }
    .end annotation
.end field

.field objectGraph:Lcom/amazon/appexpan/client/dagger/AppExpanComponent;

.field private platform:Ljava/lang/String;

.field private platformVersion:J

.field resourceSetLoader:Lcom/amazon/appexpan/client/ResourceSetLoader;

.field private stage:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->isFirstSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->objectGraph:Lcom/amazon/appexpan/client/dagger/AppExpanComponent;

    .line 70
    iput-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->platform:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 73
    iput-wide v2, p0, Lcom/amazon/appexpan/client/AppExpanClient;->platformVersion:J

    .line 85
    iput v1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->stage:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/appexpan/client/AppExpanClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/appexpan/client/AppExpanClient;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/amazon/appexpan/client/AppExpanClient;->requestManifest()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/appexpan/client/AppExpanClient;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->isFirstSync:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/appexpan/client/AppExpanClient;Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/amazon/appexpan/client/AppExpanClient;->registerConnectivityChangeListener(Landroid/content/Context;Landroid/os/HandlerThread;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/appexpan/client/AppExpanClient;
    .locals 2

    const-class v0, Lcom/amazon/appexpan/client/AppExpanClient;

    monitor-enter v0

    .line 138
    :try_start_0
    sget-object v1, Lcom/amazon/appexpan/client/AppExpanClient;->INSTANCE:Lcom/amazon/appexpan/client/AppExpanClient;

    if-nez v1, :cond_0

    .line 140
    new-instance v1, Lcom/amazon/appexpan/client/AppExpanClient;

    invoke-direct {v1}, Lcom/amazon/appexpan/client/AppExpanClient;-><init>()V

    sput-object v1, Lcom/amazon/appexpan/client/AppExpanClient;->INSTANCE:Lcom/amazon/appexpan/client/AppExpanClient;

    .line 143
    :cond_0
    sget-object v1, Lcom/amazon/appexpan/client/AppExpanClient;->INSTANCE:Lcom/amazon/appexpan/client/AppExpanClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getManifestFullSyncDone()Z
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "app_expansion_properties"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "manifestFullSyncState"

    .line 460
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getUpgradeManifestFullSyncDone()Z
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "app_expansion_properties"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "upgradeFullSyncState"

    .line 484
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private registerConnectivityChangeListener(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 4

    .line 551
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    new-instance v0, Lcom/amazon/appexpan/client/AppExpanClient$4;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/AppExpanClient$4;-><init>(Lcom/amazon/appexpan/client/AppExpanClient;)V

    .line 573
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Handler;

    .line 578
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 577
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private requestLatestResourceSet(Ljava/lang/String;)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->asyncTaskExecutor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    new-instance v1, Lcom/amazon/appexpan/client/AppExpanClient$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/appexpan/client/AppExpanClient$2;-><init>(Lcom/amazon/appexpan/client/AppExpanClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;->executeAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestManifest()Z
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->manifestHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/download/ManifestHandler;

    .line 590
    iget-object v1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->daoProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    .line 595
    invoke-virtual {v0}, Lcom/amazon/appexpan/client/download/ManifestHandler;->requestManifest()Lcom/amazon/appexpan/client/model/Manifest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    invoke-interface {v1, v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->insertManifest(Lcom/amazon/appexpan/client/model/Manifest;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setManifestFullSyncDone()V
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->context:Landroid/content/Context;

    const-string v1, "app_expansion_properties"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    .line 446
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string/jumbo v2, "manifestFullSyncState"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 447
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setUpgradeManifestFullSyncDone(Z)V
    .locals 3

    .line 468
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->context:Landroid/content/Context;

    const-string v1, "app_expansion_properties"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 471
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 472
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string/jumbo v1, "upgradeFullSyncState"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 473
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public allowResourceDownloadsOverWAN(Z)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->downloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {v0, p1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->allowDownloadsOverWAN(Z)V

    goto :goto_0

    .line 433
    :cond_0
    sget-object p1, Lcom/amazon/appexpan/client/AppExpanClient;->TAG:Ljava/lang/String;

    const-string v0, "Trying to set allowResourceDownloadsOverWAN flag before initializing AppExpanClient"

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public fetchManifestByForce()V
    .locals 2

    .line 219
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppExpanBroadcastReceiverThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 224
    iget-object v1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->downloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    invoke-virtual {v1, v0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->initialize(Landroid/os/HandlerThread;)V

    .line 225
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->clearSyncToken()V

    .line 226
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->manifestHandler:Lcom/amazon/appexpan/client/download/ManifestHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/download/ManifestHandler;->requestManifest(Z)Lcom/amazon/appexpan/client/model/Manifest;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v1, v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->updateManifest(Lcom/amazon/appexpan/client/model/Manifest;)V

    return-void
.end method

.method public getAppExpanMetricsAdapter()Lcom/amazon/appexpan/client/metrics/AppExpanMetricsAdapter;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->appExpanMetricsAdapter:Lcom/amazon/appexpan/client/metrics/AppExpanMetricsAdapter;

    return-object v0
.end method

.method getKey(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getObjectGraph()Lcom/amazon/appexpan/client/dagger/AppExpanComponent;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->objectGraph:Lcom/amazon/appexpan/client/dagger/AppExpanComponent;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->platformVersion:J

    return-wide v0
.end method

.method public getResourceSet(Ljava/lang/String;)Lcom/amazon/appexpan/client/ResourceSetResponse;
    .locals 1

    const/4 v0, 0x0

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/amazon/appexpan/client/AppExpanClient;->getResourceSet(Ljava/lang/String;Z)Lcom/amazon/appexpan/client/ResourceSetResponse;

    move-result-object p1

    return-object p1
.end method

.method public getResourceSet(Ljava/lang/String;Z)Lcom/amazon/appexpan/client/ResourceSetResponse;
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->resourceSetLoader:Lcom/amazon/appexpan/client/ResourceSetLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 260
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/AppExpanClient;->requestLatestResourceSet(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->resourceSetLoader:Lcom/amazon/appexpan/client/ResourceSetLoader;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/appexpan/client/ResourceSetLoader;->getActiveResourceSet(Ljava/lang/String;Z)Lcom/amazon/appexpan/client/ResourceSet;

    move-result-object p2

    if-nez p2, :cond_2

    .line 267
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->resourceSetLoader:Lcom/amazon/appexpan/client/ResourceSetLoader;

    invoke-virtual {v0, p1}, Lcom/amazon/appexpan/client/ResourceSetLoader;->getMaxVersionResourceSet(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceSetModel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 272
    sget-object v1, Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;->RESOURCE_SET_INVALID:Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getState()Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    move-result-object p1

    sget-object v0, Lcom/amazon/appexpan/client/model/ResourceSetModel$State;->FAILED:Lcom/amazon/appexpan/client/model/ResourceSetModel$State;

    if-ne p1, v0, :cond_1

    .line 285
    sget-object v1, Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;->RESOURCE_SET_DOWNLOAD_FAILED:Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;

    goto :goto_0

    .line 290
    :cond_1
    sget-object v1, Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;->RESOURCE_SET_NOT_LOCAL:Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;

    .line 294
    :cond_2
    :goto_0
    new-instance p1, Lcom/amazon/appexpan/client/ResourceSetResponse;

    invoke-direct {p1, p2, v1}, Lcom/amazon/appexpan/client/ResourceSetResponse;-><init>(Lcom/amazon/appexpan/client/ResourceSet;Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;)V

    return-object p1

    .line 297
    :cond_3
    new-instance p1, Lcom/amazon/appexpan/client/ResourceSetResponse;

    sget-object p2, Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;->UNKNOWN_FAILURE:Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;

    invoke-direct {p1, v1, p2}, Lcom/amazon/appexpan/client/ResourceSetResponse;-><init>(Lcom/amazon/appexpan/client/ResourceSet;Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;)V

    return-object p1
.end method

.method public getStage()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->stage:I

    return v0
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_4

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 167
    sget-object v0, Lcom/amazon/appexpan/client/AppExpanClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing App Expan Client. Platform = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; Version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-object p2, p0, Lcom/amazon/appexpan/client/AppExpanClient;->platform:Ljava/lang/String;

    .line 171
    iput-wide p3, p0, Lcom/amazon/appexpan/client/AppExpanClient;->platformVersion:J

    .line 172
    iput-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->context:Landroid/content/Context;

    .line 175
    invoke-static {}, Lcom/amazon/appexpan/client/dagger/DaggerAppExpanComponent;->builder()Lcom/amazon/appexpan/client/dagger/AppExpanComponent$Builder;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/appexpan/client/dagger/AppExpanComponent$Builder;->context(Landroid/content/Context;)Lcom/amazon/appexpan/client/dagger/AppExpanComponent$Builder;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/appexpan/client/dagger/AppExpanComponent$Builder;->build()Lcom/amazon/appexpan/client/dagger/AppExpanComponent;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/appexpan/client/AppExpanClient;->objectGraph:Lcom/amazon/appexpan/client/dagger/AppExpanComponent;

    .line 176
    invoke-interface {p2, p0}, Lcom/amazon/appexpan/client/dagger/AppExpanComponent;->inject(Lcom/amazon/appexpan/client/AppExpanClient;)V

    .line 178
    iget-object p2, p0, Lcom/amazon/appexpan/client/AppExpanClient;->downloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

    invoke-virtual {p2, p5}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->allowDownloadsOverWAN(Z)V

    .line 180
    iget-object p2, p0, Lcom/amazon/appexpan/client/AppExpanClient;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    iget-object p2, p0, Lcom/amazon/appexpan/client/AppExpanClient;->debugSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/appexpan/client/util/DebugSettings;

    .line 183
    invoke-virtual {p2}, Lcom/amazon/appexpan/client/util/DebugSettings;->isPreProdStageOnInitialization()Z

    move-result p2

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 185
    iput p4, p0, Lcom/amazon/appexpan/client/AppExpanClient;->stage:I

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/amazon/appexpan/client/AppExpanClient;->getManifestFullSyncDone()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/amazon/appexpan/client/AppExpanClient;->getUpgradeManifestFullSyncDone()Z

    move-result p2

    if-nez p2, :cond_2

    const-string/jumbo p2, "testData"

    .line 191
    invoke-static {p2, p1}, Lcom/amazon/appexpan/client/util/CipherUtils;->isEncryptionFunctional(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 193
    sget-object p2, Lcom/amazon/appexpan/client/AppExpanClient;->TAG:Ljava/lang/String;

    const-string p4, "Updating Location URL\'s"

    invoke-static {p2, p4}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, p3, p1}, Lcom/amazon/appexpan/client/AppExpanClient;->setEncodingStatus(ZLandroid/content/Context;)V

    goto :goto_0

    .line 198
    :cond_1
    sget-object p2, Lcom/amazon/appexpan/client/AppExpanClient;->TAG:Ljava/lang/String;

    const-string p5, "Updating  URL\'s without encryption"

    invoke-static {p2, p5}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, p4, p1}, Lcom/amazon/appexpan/client/AppExpanClient;->setEncodingStatus(ZLandroid/content/Context;)V

    .line 201
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/AppExpanClient;->fetchManifestByForce()V

    .line 202
    invoke-direct {p0, p3}, Lcom/amazon/appexpan/client/AppExpanClient;->setUpgradeManifestFullSyncDone(Z)V

    .line 207
    :cond_2
    invoke-direct {p0}, Lcom/amazon/appexpan/client/AppExpanClient;->getManifestFullSyncDone()Z

    move-result p1

    if-nez p1, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/AppExpanClient;->sync()V

    .line 210
    invoke-direct {p0}, Lcom/amazon/appexpan/client/AppExpanClient;->setManifestFullSyncDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_3
    monitor-exit p0

    return-void

    .line 162
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid properties. App Expan client not initialized"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerResourceSetEventListener(Lcom/amazon/appexpan/client/event/ResourceSetEventListener;)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->eventManager:Lcom/amazon/appexpan/client/event/ResourceSetEventManager;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, p1}, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->registerListener(Lcom/amazon/appexpan/client/event/ResourceSetEventListener;)V

    :cond_0
    return-void
.end method

.method public releaseResourceSet(Ljava/lang/String;)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->resourceSetLoader:Lcom/amazon/appexpan/client/ResourceSetLoader;

    invoke-virtual {v0, p1}, Lcom/amazon/appexpan/client/ResourceSetLoader;->getMaxVersionResourceSet(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/ResourceSetModel;

    move-result-object p1

    if-nez p1, :cond_0

    .line 313
    sget-object p1, Lcom/amazon/appexpan/client/AppExpanClient;->TAG:Ljava/lang/String;

    const-string v0, "Attempted to return an invalid resource set."

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->asyncTaskExecutor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    new-instance v1, Lcom/amazon/appexpan/client/AppExpanClient$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/appexpan/client/AppExpanClient$1;-><init>(Lcom/amazon/appexpan/client/AppExpanClient;Lcom/amazon/appexpan/client/model/ResourceSetModel;)V

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;->executeAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public retrieveCurrentUsedVersion(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 2

    .line 508
    invoke-virtual {p0, p1, p2}, Lcom/amazon/appexpan/client/AppExpanClient;->getKey(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 509
    iget-object p2, p0, Lcom/amazon/appexpan/client/AppExpanClient;->context:Landroid/content/Context;

    const-string v0, "app_expansion_client_versions"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const/4 v0, -0x1

    .line 512
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public saveCurrentUsedVersion(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->context:Landroid/content/Context;

    const-string v1, "app_expansion_client_versions"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 526
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 527
    invoke-virtual {p0, p1, p2}, Lcom/amazon/appexpan/client/AppExpanClient;->getKey(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 528
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 529
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAppExpanMetricsAdapter(Lcom/amazon/appexpan/client/metrics/AppExpanMetricsAdapter;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->appExpanMetricsAdapter:Lcom/amazon/appexpan/client/metrics/AppExpanMetricsAdapter;

    return-void
.end method

.method public setEncodingStatus(ZLandroid/content/Context;)V
    .locals 2

    const-string v0, "app_expansion_properties"

    const/4 v1, 0x0

    .line 491
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 494
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 495
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "encodingStatus"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 496
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    .line 649
    invoke-static {p1}, Lcom/amazon/appexpan/client/AppExpanLog;->setLogLevel(I)V

    return-void
.end method

.method public setStage(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/amazon/appexpan/client/AppExpanClient;->stage:I

    return-void
.end method

.method public sync()V
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/amazon/appexpan/client/AppExpanClient;->asyncTaskExecutor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    new-instance v1, Lcom/amazon/appexpan/client/AppExpanClient$SyncRunnable;

    iget-object v2, p0, Lcom/amazon/appexpan/client/AppExpanClient;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/amazon/appexpan/client/AppExpanClient$SyncRunnable;-><init>(Lcom/amazon/appexpan/client/AppExpanClient;Landroid/content/Context;)V

    const/4 v2, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;->executeAsync(Ljava/lang/Runnable;ILjava/util/concurrent/TimeUnit;)V

    :cond_0
    return-void
.end method
