.class public Lcom/amazon/kcp/application/AndroidApplicationController;
.super Ljava/lang/Object;
.source "AndroidApplicationController.java"

# interfaces
.implements Lcom/amazon/kcp/application/IAndroidApplicationController;


# static fields
.field private static final DEFAULT_APP_MAX_BYTES:I = 0x3200000

.field private static volatile INSTANCE:Lcom/amazon/kcp/application/AndroidApplicationController;

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kcp/application/IAndroidApplicationController;


# instance fields
.field private activeActivities:I

.field private cacheBasePath:Ljava/lang/String;

.field private configurationIsChanging:Z

.field private final context:Landroid/content/Context;

.field private currentActivity:Landroid/app/Activity;

.field private currentReaderActivity:Lcom/amazon/kcp/reader/ReaderActivity;

.field private final extendedMediaController:Lcom/amazon/kcp/application/extension/IExtendedMediaController;

.field private isAppVisible:Z

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private shouldListenForSyncFinishedEvent:Z

.field private showWelcomeActivityOnLogout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    const-class v0, Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 148
    sput-object v0, Lcom/amazon/kcp/application/AndroidApplicationController;->INSTANCE:Lcom/amazon/kcp/application/AndroidApplicationController;

    return-void
.end method

.method private constructor <init>(ZLandroid/content/Context;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/amazon/kcp/application/extension/StubExtendedMediaController;

    invoke-direct {v0}, Lcom/amazon/kcp/application/extension/StubExtendedMediaController;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->extendedMediaController:Lcom/amazon/kcp/application/extension/IExtendedMediaController;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    .line 127
    iput-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->configurationIsChanging:Z

    .line 137
    iput-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->shouldListenForSyncFinishedEvent:Z

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->isAppVisible:Z

    .line 172
    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->registerBroadcastReceivers()V

    .line 177
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.amazon.kcp.applications.action.AndroidAppControllerCreated"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.amazon.kindle.test_application"

    .line 179
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$bool;->show_welcome_activity_on_logout:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->showWelcomeActivityOnLogout:Z

    .line 184
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/AndroidApplicationController;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->performForegroundedAction()V

    return-void
.end method

.method private activityRequiresRegistration(Landroid/app/Activity;)Z
    .locals 0

    .line 822
    check-cast p1, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->requiresRegistration()Z

    move-result p1

    return p1
.end method

.method private fireAppForegroundEvent()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 464
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    .line 465
    const-class v1, Lcom/amazon/kcp/application/AppForegroundEvent;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 468
    :cond_0
    new-instance v0, Lcom/amazon/kcp/application/AppForegroundEvent;

    invoke-direct {v0}, Lcom/amazon/kcp/application/AppForegroundEvent;-><init>()V

    .line 469
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private getCachePath()Ljava/lang/String;
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->cacheBasePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 222
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "cache"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getFileSeparator()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->cacheBasePath:Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->cacheBasePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->cacheBasePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 2

    .line 151
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance(ZLandroid/content/Context;)Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(ZLandroid/content/Context;)Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 2

    .line 161
    sget-object v0, Lcom/amazon/kcp/application/AndroidApplicationController;->INSTANCE:Lcom/amazon/kcp/application/AndroidApplicationController;

    if-nez v0, :cond_1

    .line 162
    const-class v0, Lcom/amazon/kcp/application/AndroidApplicationController;

    monitor-enter v0

    .line 163
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/application/AndroidApplicationController;->INSTANCE:Lcom/amazon/kcp/application/AndroidApplicationController;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/application/AndroidApplicationController;-><init>(ZLandroid/content/Context;)V

    sput-object v1, Lcom/amazon/kcp/application/AndroidApplicationController;->INSTANCE:Lcom/amazon/kcp/application/AndroidApplicationController;

    .line 166
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 168
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/kcp/application/AndroidApplicationController;->INSTANCE:Lcom/amazon/kcp/application/AndroidApplicationController;

    return-object p0
.end method

.method private performBackgroundedAction()V
    .locals 5

    .line 473
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 475
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v3, "invokeExplicitMessageProcessing"

    .line 476
    invoke-static {v3, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 477
    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->invokeExplicitMessageProcessing(Z)V

    .line 478
    invoke-static {v3, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 481
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canPerformSync()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v3, Lcom/amazon/kcp/application/sync/internal/SyncType;->EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v4, v4}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 484
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->hasRequestFor(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 485
    iput-boolean v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->shouldListenForSyncFinishedEvent:Z

    .line 487
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    .line 491
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 493
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    .line 494
    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->onAppBackgrounded()V

    .line 501
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidLocalStorage;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidLocalStorage;->close()V

    .line 503
    iput-boolean v2, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->isAppVisible:Z

    return-void
.end method

.method private performForegroundedAction()V
    .locals 3

    .line 419
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    .line 424
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/application/AndroidApplicationController$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/AndroidApplicationController$2;-><init>(Lcom/amazon/kcp/application/AndroidApplicationController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    .line 439
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canGotoStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    const-string/jumbo v1, "store_cookies"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/CookieJar;->areCookiesValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/IWebStoreController;->updateStoreCookies()V

    .line 445
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    .line 450
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 452
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    .line 453
    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->onAppForegrounded()V

    .line 456
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->fireAppForegroundEvent()V

    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 2

    .line 879
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBroadcastReceiverHelper()Lcom/amazon/android/util/BroadcastReceiverHelper;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBroadcastReceivers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/android/util/BroadcastReceiverHelper;->registerBroadcastReceivers(Ljava/util/Collection;)V

    return-void
.end method

.method private saveApplicationSettings()V
    .locals 3

    .line 853
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 854
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/io/IPersistentSettingsHelper;->save()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 857
    sget-object v1, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    const-string v2, "Cannot save application settings."

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterBroadcastReceivers()V
    .locals 2

    .line 883
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBroadcastReceiverHelper()Lcom/amazon/android/util/BroadcastReceiverHelper;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBroadcastReceivers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/android/util/BroadcastReceiverHelper;->unregisterBroadcastReceivers(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public activityResumed(Lcom/amazon/kcp/redding/ReddingActivity;)V
    .locals 2

    .line 361
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->configurationIsChanging:Z

    if-nez v0, :cond_0

    .line 365
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AndroidApplicationController;->activityRequiresRegistration(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v0

    .line 368
    invoke-static {}, Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPoints;->getInstance()Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPointsInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPointsInterface;->getRegistrationProviderFactory()Lcom/amazon/kcp/accounts/RegistrationProviderFactory;

    move-result-object v1

    .line 369
    invoke-interface {v1, p1, p0, v0}, Lcom/amazon/kcp/accounts/RegistrationProviderFactory;->createRegistrationProvider(Landroidx/appcompat/app/AppCompatActivity;Lcom/amazon/kcp/application/IAndroidApplicationController;Lcom/amazon/kindle/services/authentication/IAccountProvider;)Lcom/amazon/kcp/accounts/RegistrationProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/accounts/RegistrationProvider;->fetchCredentials()V

    :cond_0
    const/4 p1, 0x1

    .line 373
    iput-boolean p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->isAppVisible:Z

    return-void
.end method

.method public activityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 335
    iget-boolean p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->configurationIsChanging:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 337
    iput-boolean p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->configurationIsChanging:Z

    goto :goto_0

    .line 340
    :cond_0
    iget p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    if-ne p1, v0, :cond_2

    .line 343
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "AndroidApplicationController"

    const-string v1, "AppForeground"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/amazon/kcp/application/AndroidApplicationController$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/AndroidApplicationController$1;-><init>(Lcom/amazon/kcp/application/AndroidApplicationController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 353
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/locale/ILocaleManager;->refreshLocaleSettings()V

    .line 354
    :cond_1
    sget-object p1, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changed locale to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/locale/ILocaleManager;->getAmazonLocaleCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public activityStopped()V
    .locals 3

    .line 379
    iget v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    if-nez v0, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->performBackgroundedAction()V

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    .line 385
    sget-object v0, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "We have less than 0 activities running?"

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;ZLjava/lang/String;)V

    .line 386
    iput v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    :cond_1
    :goto_0
    return-void
.end method

.method public activityStoppedDueToConfigChange()V
    .locals 1

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->configurationIsChanging:Z

    return-void
.end method

.method public clearSettings()V
    .locals 2

    .line 762
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->clearUserSensitiveData()V

    .line 763
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->clearUserSensitiveData()V

    .line 766
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    const-string/jumbo v1, "store_cookies"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/CookieJar;->removeCookies(Ljava/lang/String;)V

    .line 767
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/store/CookieJar;->clearCookieManager()V

    .line 768
    invoke-static {}, Ljava/net/CookieManager;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    check-cast v0, Ljava/net/CookieManager;

    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Ljava/net/CookieStore;->removeAll()Z

    .line 771
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->removeAllPartialDownloadFiles(Lcom/amazon/kindle/io/IFileConnectionFactory;)I

    .line 772
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationSettings()Lcom/amazon/system/io/IPersistentSettingsHelper;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/ResumableDownloadHelper;->removeAllTokens(Lcom/amazon/system/io/IPersistentSettingsHelper;)I

    return-void
.end method

.method public exit()V
    .locals 3

    .line 251
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "AndroidApplicationController"

    const-string v2, "AppExit"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->unregisterBroadcastReceivers()V

    .line 254
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->saveApplicationSettings()V

    return-void
.end method

.method public getActiveActivities()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 865
    iget v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->activeActivities:I

    return v0
.end method

.method public getActiveContext()Landroid/content/Context;
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getAppVersionNumber()J
    .locals 2

    .line 739
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInternalVersionNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppWanDownloadLimit()I
    .locals 3

    .line 902
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    .line 903
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DOWNLOAD_MAX_BYTES_OVER_MOBILE"

    const/high16 v2, 0x3200000

    .line 902
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;
    .locals 1

    .line 246
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 834
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->currentReaderActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    return-object v0
.end method

.method public getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 750
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;

    move-result-object v0

    return-object v0
.end method

.method public getImageFactory()Lcom/amazon/kindle/util/drawing/ImageFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 828
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getImageFactory()Lcom/amazon/kindle/util/drawing/ImageFactory;

    move-result-object v0

    return-object v0
.end method

.method public getInternalVersionNumber()J
    .locals 3

    .line 259
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getInternalVersion()J

    move-result-wide v0

    .line 260
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    .line 262
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpoofAppVersion"

    .line 261
    invoke-static {v2, v1, v0}, Lcom/amazon/kcp/debug/DebugUtils;->getDebugPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 840
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayController(Landroid/view/Window;)Lcom/amazon/android/util/IOsOverlayController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 756
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->createOverlayController(Landroid/view/Window;)Lcom/amazon/android/util/IOsOverlayController;

    move-result-object p1

    return-object p1
.end method

.method public getPathForKRFCache()Ljava/lang/String;
    .locals 3

    .line 888
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->getCachePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 892
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "krf/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 894
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 896
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v0
.end method

.method public getPlatformSoftwareVersion()Ljava/lang/String;
    .locals 3

    .line 912
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceType()Lcom/amazon/kcp/application/AndroidDeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidDeviceType;->getPlatformSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "_"

    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 915
    array-length v2, v1

    if-lez v2, :cond_0

    .line 916
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    .line 918
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 919
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    const-string v2, "SpoofPlatformVersion"

    invoke-static {v1, v2, v0}, Lcom/amazon/kcp/debug/DebugUtils;->getDebugPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "-1"

    .line 922
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 926
    :cond_2
    sget-object v0, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    const-string v1, "Our platform version is invalid"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 324
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    return-object v0
.end method

.method public getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 4

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    .line 292
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 291
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 293
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 297
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "AndroidApplicationController"

    const-string v3, "getVersionNameException"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-object v1, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    const-string v2, "Exception getting versionName "

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 295
    sget-object v1, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    const-string v2, "Could not find app versionName"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 4

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    .line 273
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 272
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 274
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "KindleVersionNumber"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 278
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "AndroidApplicationController"

    const-string v3, "getVersionStringException"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    sget-object v1, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    const-string v2, "Exception getting version "

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 276
    sget-object v1, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    const-string v2, "Could not find app version"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 605
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    return-object v0
.end method

.method public isAppVisible()Z
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->isAppVisible:Z

    return v0
.end method

.method public isBetaApp()Z
    .locals 3

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    .line 311
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 312
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "isBETA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 314
    sget-object v1, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    const-string v2, "Cannot determine if this is a beta build"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public library()Lcom/amazon/kcp/library/ILibraryController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 611
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    return-object v0
.end method

.method public onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 783
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 784
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 785
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 786
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    .line 787
    sget-object v2, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v2, :cond_2

    .line 788
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManager;->forceCancelAllSyncs()V

    .line 790
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canChangeRegistrationSettings()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 792
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->clearSettings()V

    if-eqz v1, :cond_1

    .line 794
    invoke-interface {v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 795
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getInitialThemeConfig()Lcom/amazon/kcp/theme/ThemeConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/theme/ThemeConfig;->getDefaultAppTheme()Lcom/amazon/kindle/krx/theme/AppTheme;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->setAppTheme(Lcom/amazon/kindle/krx/theme/AppTheme;Landroid/content/res/Configuration;)V

    .line 797
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->showWelcomeActivityOnLogout:Z

    if-eqz p1, :cond_3

    .line 802
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->HOME:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    goto :goto_1

    .line 805
    :cond_2
    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_3

    if-eqz v1, :cond_3

    .line 808
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->switchIfNecessary(Landroid/content/res/Configuration;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onLocaleChangedEvent(Lcom/amazon/kindle/event/LocaleChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 191
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$bool;->use_device_language_for_default_marketplace:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->marketplace_from_language:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-static {p1}, Lcom/amazon/kcp/application/Marketplace;->setDefaultMarketplaceId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSynchronizationManagerEvent(Lcom/amazon/kindle/sync/SynchronizationManagerEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 199
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getType()Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_FINISHED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    if-eq p1, v0, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManager;->hasPendingSyncs()Z

    move-result p1

    if-nez p1, :cond_2

    .line 207
    iget-boolean p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->shouldListenForSyncFinishedEvent:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 211
    iput-boolean p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->shouldListenForSyncFinishedEvent:Z

    .line 212
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidApplicationController;->saveApplicationSettings()V

    :cond_2
    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 5

    .line 617
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 618
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    .line 620
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 624
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "1"

    .line 625
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 628
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExternalURLNavigation"

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 631
    sget-object v1, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in opening URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reader()Lcom/amazon/kcp/reader/IReaderController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 647
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    return-object v0
.end method

.method public reportBackgroundMetric()V
    .locals 10

    .line 516
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 517
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    .line 520
    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "AndroidApplicationController"

    const-string v4, "AppBackground"

    invoke-virtual {v0, v3, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 523
    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FontSize_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 525
    sget-object v4, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FontSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v2

    .line 529
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamilyForBook(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v2

    .line 530
    invoke-virtual {v2}, Lcom/mobipocket/android/drawing/FontFamily;->getMetricName()Ljava/lang/String;

    move-result-object v2

    .line 531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FontFace_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 532
    sget-object v4, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FontFace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v2

    .line 536
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Margin_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 538
    sget-object v4, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Margin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getForceDisableJustification()Z

    move-result v2

    .line 541
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ForceDisableJustificationEnabled_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 543
    sget-object v4, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ForceDisableJustification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->isPageCurlEnabled()Z

    move-result v2

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PageCurlEnabled_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 548
    sget-object v4, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PageCurlEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 554
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->isKindleIllustratedSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 557
    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedEnabled()Z

    move-result v4

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KindleIllustratedEnabled_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v3, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    if-eqz v4, :cond_0

    .line 562
    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->isKindleIllustratedAutoPlayEnabled()Z

    move-result v5

    .line 563
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KindleIllustratedAutoPlayEnabled_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v3, v5, v6}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 567
    :cond_0
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    .line 568
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    .line 570
    instance-of v6, v5, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    if-eqz v6, :cond_1

    .line 571
    check-cast v5, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    .line 572
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/PerfMetricsCollector;->getInstance()Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;

    move-result-object v6

    .line 573
    sget-object v7, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->TAP_TO_TURN_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v7}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/amazon/kindle/krx/metrics/TP90Aggregator;

    invoke-direct {v8}, Lcom/amazon/kindle/krx/metrics/TP90Aggregator;-><init>()V

    invoke-virtual {v5}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getAsin()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->submitSpecificMetrics(Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/IMetricsAggregator;Ljava/lang/String;)V

    .line 574
    sget-object v7, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v7}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getAsin()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Lcom/amazon/kindle/krx/metrics/IBatchMetricCollector;->submitSpecificMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :cond_1
    sget-object v5, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GuidedView:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v2, v5}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GuidedViewTransitionsEnabled_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getGuidedViewAnimationEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 579
    invoke-virtual {v0, v3, v2, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SectionLayoutMode_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getSectionLayoutMode()Lcom/amazon/android/docviewer/SectionLayoutMode;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v3, v2, v5}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :cond_2
    if-nez v4, :cond_3

    .line 589
    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getUserSetColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v1

    .line 590
    iget-object v2, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getInstance(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    .line 591
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getMetricsName()Ljava/lang/String;

    move-result-object v1

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ColorMode_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v3, v2, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 593
    sget-object v2, Lcom/amazon/kcp/application/AndroidApplicationController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ColorMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v1, "BookClose"

    const-string v2, "AccessibilityModeEnabled"

    .line 598
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public safeOpenUrl(Ljava/lang/String;)V
    .locals 2

    .line 637
    new-instance v0, Lcom/amazon/kindle/network/WirelessUtils;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/network/WirelessUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/network/WirelessUtils;->hasNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const-string v0, "ConnectionError"

    .line 638
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/application/AndroidApplicationController;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 640
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/AndroidApplicationController;->openUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->currentActivity:Landroid/app/Activity;

    return-void
.end method

.method public setCurrentReaderActivity(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->currentReaderActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    return-void
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/amazon/kcp/redding/AlertActivity;->createAlertIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 653
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showAlertWithDPLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 662
    sget-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->LINK:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2, v1}, Lcom/amazon/kcp/redding/AlertActivity;->createBaseAlertIntent(Lcom/amazon/kcp/redding/AlertActivity$AlertType;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "alert_link_title"

    .line 663
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "alert_link_url"

    .line 664
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showSoftwareUpdateAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p6, :cond_0

    .line 670
    sget-object p6, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->FORCED_SOFTWARE_UPDATE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    goto :goto_0

    :cond_0
    sget-object p6, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->OPTIONAL_SOFTWARE_UPDATE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 671
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-static {p6, p1, p2, v0}, Lcom/amazon/kcp/redding/AlertActivity;->createBaseAlertIntent(Lcom/amazon/kcp/redding/AlertActivity$AlertType;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "alert_link_title"

    .line 672
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    invoke-static {p5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "alert_link_url"

    .line 674
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p2, "cancel_title"

    .line 676
    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 682
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    if-nez p2, :cond_0

    .line 698
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 700
    :cond_0
    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 688
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/high16 p2, 0x10000000

    .line 690
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 691
    iget-object p2, p0, Lcom/amazon/kcp/application/AndroidApplicationController;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;Landroid/app/Activity;I)V
    .locals 0

    .line 706
    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startSettingsActivity(Ljava/lang/String;)V
    .locals 2

    .line 711
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x80000

    .line 716
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 718
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 722
    :catch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 724
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public wasAppUpgradedThisOpening()Z
    .locals 1

    .line 744
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->wasAppUpdated()Z

    move-result v0

    return v0
.end method
