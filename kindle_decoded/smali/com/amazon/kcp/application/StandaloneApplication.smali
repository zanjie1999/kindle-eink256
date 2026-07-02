.class public Lcom/amazon/kcp/application/StandaloneApplication;
.super Lcom/amazon/kcp/application/ReddingApplication;
.source "StandaloneApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final USER_FIRST_START:Ljava/lang/String; = "USER_FIRST_START"

.field public static crashDetectionHelper:Lcom/amazon/device/crashmanager/CrashDetectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/amazon/kcp/application/StandaloneApplication;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/StandaloneApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/amazon/kcp/application/ReddingApplication;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/kcp/application/StandaloneApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private enableNotificationComponents()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.amazon.device.messaging.ADMMessageHandlerJobBase"

    .line 112
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    .line 115
    :catch_0
    sget-object v1, Lcom/amazon/kcp/application/StandaloneApplication;->TAG:Ljava/lang/String;

    const-string v2, "Latest version of ADM not available."

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 118
    :goto_0
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 120
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/amazon/kcp/notifications/ADMNotificationJobService$ADMReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    invoke-virtual {v2, v1, v0, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_0
    return-void
.end method

.method private handleAppUpgrade()V
    .locals 1

    .line 336
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/font/FontUtils;->emptyLegacyFontDirectory(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    return-void
.end method

.method private reconcileStoredAccount()V
    .locals 3

    .line 366
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getAuthorizedAccount()Ljava/lang/String;

    move-result-object v1

    .line 368
    new-instance v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v2, p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    .line 369
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    sget-object v1, Lcom/amazon/kcp/application/StandaloneApplication;->TAG:Ljava/lang/String;

    const-string v2, "Stored account does not match MAP account, resetting"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 372
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setAuthorizedAccount(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportTimeDisplayMetrics()V
    .locals 4

    .line 329
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isTimeDisplayVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TimeDisplayEnabled"

    goto :goto_0

    :cond_0
    const-string v0, "TimeDisplayDisabled"

    .line 331
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "StandaloneStartup"

    invoke-virtual {v1, v3, v0, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void
.end method

.method private updateSecurityProvider(Landroid/content/Context;)V
    .locals 2

    .line 311
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/application/StandaloneApplication$5;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/application/StandaloneApplication$5;-><init>(Lcom/amazon/kcp/application/StandaloneApplication;Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-static {}, Lcom/amazon/kcp/application/ActivityManagerHook;->hook()V

    .line 64
    invoke-super {p0, p1}, Lcom/amazon/kcp/application/ReddingApplication;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected createApplicationComponent()Lcom/amazon/kcp/application/ReddingComponent;
    .locals 1

    .line 406
    invoke-static {}, Lcom/amazon/kcp/application/DaggerStandaloneComponent;->builder()Lcom/amazon/kcp/application/StandaloneComponent$Builder;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/StandaloneComponent$Builder;->application(Landroid/app/Application;)Lcom/amazon/kcp/application/StandaloneComponent$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/StandaloneComponent$Builder;->build()Lcom/amazon/kcp/application/ReddingComponent;

    move-result-object v0

    return-object v0
.end method

.method protected doAppStartup(Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 154
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "App initialization failed"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected getLibraryFactory()Lcom/amazon/kcp/application/ILibraryFactory;
    .locals 1

    .line 244
    new-instance v0, Lcom/amazon/kcp/application/LibraryFactory;

    invoke-direct {v0}, Lcom/amazon/kcp/application/LibraryFactory;-><init>()V

    return-object v0
.end method

.method protected getMobileAdsInitalizationRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 411
    new-instance v0, Lcom/amazon/kcp/application/StandaloneApplication$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/StandaloneApplication$6;-><init>(Lcom/amazon/kcp/application/StandaloneApplication;)V

    return-object v0
.end method

.method protected initializeAppState(J)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneApplication;->getLibraryFactory()Lcom/amazon/kcp/application/ILibraryFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/LibraryFactorySingleton;->setFactory(Lcom/amazon/kcp/application/ILibraryFactory;)V

    .line 163
    new-instance v0, Lcom/amazon/kcp/notifications/actions/StandaloneTapActionFactory;

    invoke-direct {v0}, Lcom/amazon/kcp/notifications/actions/StandaloneTapActionFactory;-><init>()V

    invoke-static {v0}, Lcom/amazon/kcp/notifications/actions/TapActionFactorySingleton;->setFactory(Lcom/amazon/kcp/notifications/actions/INotificationsTapActionFactory;)V

    .line 165
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/application/ReddingApplication;->initializeAppState(J)V

    .line 167
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/application/StandaloneAppInitializer;->initSettingsCache(Landroid/content/Context;)V

    .line 169
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance p2, Lcom/amazon/kcp/application/StandaloneApplication$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/application/StandaloneApplication$1;-><init>(Lcom/amazon/kcp/application/StandaloneApplication;)V

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    .line 178
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAppSettingsController;->isFirstStart()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance p2, Lcom/amazon/kcp/application/StandaloneApplication$2;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/application/StandaloneApplication$2;-><init>(Lcom/amazon/kcp/application/StandaloneApplication;)V

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    .line 197
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNativeLibraryLoader()Lcom/amazon/kcp/application/INativeLibraryLoader;

    .line 201
    invoke-direct {p0}, Lcom/amazon/kcp/application/StandaloneApplication;->reconcileStoredAccount()V

    .line 204
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 206
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUpdateManager()Lcom/amazon/kcp/application/internal/IUpdateManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->wasAppUpgradedThisOpening()Z

    move-result v1

    invoke-interface {p2, v1}, Lcom/amazon/kcp/application/internal/IUpdateManager;->processStartup(Z)V

    .line 208
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/font/FontConfigInitializer;->unpackBundledFonts()V

    .line 215
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->wasAppUpdated()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->wasAndroidUpdated()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 216
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/KRFExperimentUtils;->isKRFLibLoadWeblabEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 220
    invoke-static {}, Lcom/amazon/krf/platform/KRF;->updateFontConfigCache()Z

    .line 223
    :cond_2
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    new-instance v1, Lcom/amazon/kcp/application/StandaloneApplication$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/StandaloneApplication$3;-><init>(Lcom/amazon/kcp/application/StandaloneApplication;)V

    invoke-interface {p2, v1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    .line 230
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBrightnessManager()Lcom/amazon/kindle/brightness/IBrightnessManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/brightness/IBrightnessManager;->initialize()V

    .line 232
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->wasAppUpgradedThisOpening()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 233
    invoke-direct {p0}, Lcom/amazon/kcp/application/StandaloneApplication;->handleAppUpgrade()V

    .line 238
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerSingleton;->getInstance()Lcom/amazon/kcp/home/feeds/HomeFeedManager;

    .line 240
    invoke-static {}, Lcom/amazon/kcp/reader/ui/BookCoverOnResumeManager;->initialize()V

    return-void
.end method

.method protected initializeExtraAppState()V
    .locals 5

    .line 263
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/StandaloneAppInitializer;->initClientMonitoring(Landroid/content/Context;)Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/StandaloneApplication;->crashDetectionHelper:Lcom/amazon/device/crashmanager/CrashDetectionHelper;

    .line 264
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/crashmanager/CrashDetectionHelper;->enableNDKCrashDetection(Landroid/content/Context;)V

    .line 266
    invoke-static {}, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->getInstance()Lcom/amazon/kcp/application/MobileAdsRegistrationManager;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/amazon/kcp/application/MobileAdsRegistrationManager;->registerApp()V

    .line 269
    invoke-static {}, Lcom/amazon/kindle/messaging/AssociateTagHandler;->initialize()Lcom/amazon/kindle/messaging/AssociateTagHandler;

    .line 271
    new-instance v0, Lcom/amazon/kcp/application/HardwareInfoLogger;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/HardwareInfoLogger;-><init>(Landroid/content/Context;)V

    .line 272
    invoke-virtual {v0}, Lcom/amazon/kcp/application/HardwareInfoLogger;->run()V

    .line 273
    invoke-static {}, Lcom/amazon/kcp/application/AndroidVersionMetrics;->recordFastMetric()V

    .line 276
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->isSubProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/StandaloneCrashManager;->initialize(Landroid/content/Context;)V

    .line 282
    :cond_0
    new-instance v0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->checkAndHandleReferral()V

    .line 284
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/application/StandaloneApplication;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OsArchitecture-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-static {}, Lcom/amazon/kcp/util/OsArchitecture;->getDescriptorForMetrics()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lcom/amazon/kcp/application/StandaloneApplication;->reportTimeDisplayMetrics()V

    .line 292
    invoke-static {}, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->getInstance()Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 293
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->getAppType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getInternalVersion()J

    move-result-wide v3

    .line 292
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->initialize(Landroid/content/Context;Ljava/lang/String;J)V

    .line 296
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneAppInitializer;->initADAPTLogger()V

    :cond_1
    return-void
.end method

.method public onAppBackgrounded()V
    .locals 1

    .line 361
    invoke-super {p0}, Lcom/amazon/kcp/application/ReddingApplication;->onAppBackgrounded()V

    const/4 v0, 0x1

    .line 362
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/StandaloneApplication;->updateNotificationsChannelsFile(Z)V

    return-void
.end method

.method public onAppForegrounded()V
    .locals 1

    .line 342
    invoke-super {p0}, Lcom/amazon/kcp/application/ReddingApplication;->onAppForegrounded()V

    .line 345
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-static {}, Lcom/amazon/kcp/application/sync/SyncHelper;->syncCollectionsOnAppForeground()V

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/application/StandaloneApplication;->updateNotificationsChannelsFile(Z)V

    .line 353
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->getInstance()Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->sync()V

    return-void
.end method

.method protected onAppInitializationComplete()V
    .locals 1

    .line 399
    invoke-super {p0}, Lcom/amazon/kcp/application/ReddingApplication;->onAppInitializationComplete()V

    .line 401
    invoke-static {}, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->getInstance()Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/appexpan/KRXAppExpanClient;->onAppInitializationComplete()V

    return-void
.end method

.method protected onStartupComplete()V
    .locals 2

    .line 249
    invoke-super {p0}, Lcom/amazon/kcp/application/ReddingApplication;->onStartupComplete()V

    .line 251
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->startupExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/application/StandaloneApplication$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/StandaloneApplication$4;-><init>(Lcom/amazon/kcp/application/StandaloneApplication;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 259
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneCrashlyticsDelegate;->init()V

    return-void
.end method

.method protected optionalInitialization()Z
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/amazon/kcp/application/ReddingApplication;->optionalInitialization()Z

    .line 102
    invoke-direct {p0}, Lcom/amazon/kcp/application/StandaloneApplication;->enableNotificationComponents()V

    const/4 v0, 0x1

    return v0
.end method

.method public performOnCreate()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/amazon/kcp/application/ReddingApplication;->performOnCreate()V

    .line 80
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100787

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleProtocol;->setAppSpecificKindleScheme(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/amazon/kcp/debug/MemoryInfoLogger;->getInstance()Lcom/amazon/kcp/debug/MemoryInfoLogger;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/debug/MemoryInfoLogger;->start(I)V

    .line 87
    :cond_0
    invoke-direct {p0, p0}, Lcom/amazon/kcp/application/StandaloneApplication;->updateSecurityProvider(Landroid/content/Context;)V

    .line 89
    invoke-static {}, Lcom/amazon/kcp/util/DownloadChannelInfo;->init()V

    .line 91
    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneApplication;->onAppInitializationComplete()V

    .line 93
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneCrashlyticsDelegate;->preInit()V

    .line 95
    invoke-static {p0}, Lcom/amazon/kindle/anr/ANRReport;->init(Landroid/content/Context;)V

    const-string v0, "StandAloneApplication.onCreate()"

    .line 96
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method protected performPreCreate()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->discoveryInputProvider:Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;

    invoke-static {v0}, Lcom/amazon/discovery/DiscoveryLoader;->replaceInputStreamProvider(Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;)Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;

    .line 138
    invoke-virtual {p0}, Lcom/amazon/kcp/application/StandaloneApplication;->prepareFactoryDependencies()V

    .line 139
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getDaggerComponent()Lcom/amazon/kcp/application/ReddingComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/ReddingComponent;->inject(Lcom/amazon/kcp/application/ReddingApplication;)V

    .line 142
    const-class v0, Lcom/amazon/kindle/download/IReaderDownloadModule;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/download/IReaderDownloadModule;

    .line 143
    instance-of v1, v0, Lcom/amazon/kindle/download/ReaderDownloadModule;

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getDaggerComponent()Lcom/amazon/kcp/application/ReddingComponent;

    move-result-object v1

    check-cast v0, Lcom/amazon/kindle/download/ReaderDownloadModule;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/application/ReddingComponent;->inject(Lcom/amazon/kindle/download/ReaderDownloadModule;)V

    .line 147
    :cond_0
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->APP_COLD_OPEN_HOME:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public prepareFactoryDependencies()V
    .locals 3

    .line 378
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isDaggerInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "inject StandAloneKindleObjectFactoryModule"

    .line 379
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 380
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getDaggerComponent()Lcom/amazon/kcp/application/ReddingComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/ReddingComponent;->kindleObjectFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->setWrapperInstance(Lcom/amazon/kcp/application/IKindleObjectFactory;Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 381
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 382
    iput-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isDaggerInitialized:Z

    :cond_0
    return-void
.end method

.method protected updateNotificationsChannelsFile(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 392
    invoke-static {p0}, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->doesChannelsFileExist(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 393
    :cond_0
    invoke-static {p0}, Lcom/amazon/kcp/notifications/util/PushNotificationHelper;->updateNotificationsChannelsFile(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
