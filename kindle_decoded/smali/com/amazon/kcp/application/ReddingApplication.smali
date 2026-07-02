.class public abstract Lcom/amazon/kcp/application/ReddingApplication;
.super Landroid/app/Application;
.source "ReddingApplication.java"

# interfaces
.implements Ldagger/android/HasActivityInjector;


# static fields
.field public static final APP_START_TIMER:Ljava/lang/String; = "APP_START_TIMER"

.field public static final BOOK_COLD_OPEN_TIMER:Ljava/lang/String; = "BOOK_COLD_OPEN_TIMER"

.field public static final HAS_ACTION_BAR:Z = true
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final WEBVIEW_DEBUG_DATA_DIR:Ljava/lang/String; = "webview_debug_data"

.field private static final appInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private static appStartTime:J = 0x0L

.field private static final appStartupActivitiesTate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final appStartupActivityKFC:Ljava/lang/String; = "KfcUpgradePage"

.field private static final appStartupActivitySA:Ljava/lang/String; = "ThirdPartyUpgradePage"

.field private static final bookColdBookOpenActivityTate:Ljava/lang/String; = "BookOpenSplashActivity"

.field static defaultApplicationContext:Lcom/amazon/kcp/application/ReddingApplication;

.field private static loggingAndMetricsInitialized:Z

.field private static wasAndroidUpdated:Z

.field private static wasAppUpdated:Z


# instance fields
.field private appStartUpRecorded:Ljava/lang/Boolean;

.field private bookColdOpenRecorded:Ljava/lang/Boolean;

.field private volatile component:Lcom/amazon/kcp/application/ReddingComponent;

.field protected final discoveryInputProvider:Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;

.field dispatchingActivityInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private genericAppStartupFailed:Z

.field private isBookColdOpen:Z

.field protected isDaggerInitialized:Z

.field private isLibrarySwitch:Z

.field private isSecureStorageUnavailable:Z

.field private isSubProcess:Z

.field private isThumbnailService:Z

.field private shouldRunPostStartupTask:Z

.field final startupExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 121
    const-class v0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/ReddingApplication;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 123
    sput-wide v0, Lcom/amazon/kcp/application/ReddingApplication;->appStartTime:J

    .line 150
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/amazon/kcp/application/ReddingApplication;->appInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 156
    new-instance v0, Lcom/amazon/kcp/application/ReddingApplication$1;

    invoke-direct {v0}, Lcom/amazon/kcp/application/ReddingApplication$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/ReddingApplication;->appStartupActivitiesTate:Ljava/util/List;

    const/4 v0, 0x0

    .line 181
    sput-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->wasAppUpdated:Z

    .line 187
    sput-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->wasAndroidUpdated:Z

    .line 984
    sput-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->loggingAndMetricsInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 208
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->component:Lcom/amazon/kcp/application/ReddingComponent;

    const/4 v0, 0x0

    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 125
    iput-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isDaggerInitialized:Z

    .line 137
    iput-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->genericAppStartupFailed:Z

    .line 139
    iput-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isSecureStorageUnavailable:Z

    .line 153
    iput-object v1, p0, Lcom/amazon/kcp/application/ReddingApplication;->appStartUpRecorded:Ljava/lang/Boolean;

    .line 162
    iput-object v1, p0, Lcom/amazon/kcp/application/ReddingApplication;->bookColdOpenRecorded:Ljava/lang/Boolean;

    .line 164
    iput-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isBookColdOpen:Z

    .line 167
    iput-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isSubProcess:Z

    .line 169
    iput-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isThumbnailService:Z

    .line 175
    iput-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isLibrarySwitch:Z

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->shouldRunPostStartupTask:Z

    .line 203
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/foundation/internal/IThreadPoolManager;->ExecutorBuilder()Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    move-result-object v1

    const-string/jumbo v2, "startup"

    .line 204
    invoke-interface {v1, v2}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withName(Ljava/lang/String;)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 205
    invoke-interface {v1, v0}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->withThreadNum(I)Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;

    .line 206
    invoke-interface {v1}, Lcom/amazon/foundation/internal/IThreadPoolManager$IExecutorBuilder;->buildExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->startupExecutor:Ljava/util/concurrent/ExecutorService;

    .line 284
    new-instance v0, Lcom/amazon/kcp/application/ReddingApplication$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/ReddingApplication$2;-><init>(Lcom/amazon/kcp/application/ReddingApplication;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->discoveryInputProvider:Lcom/amazon/discovery/DiscoveryLoader$InputStreamProvider;

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/kcp/application/ReddingApplication;->appStartTime:J

    .line 210
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "APP_START_TIMER"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "BOOK_COLD_OPEN_TIMER"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 120
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/application/ReddingApplication;Lcom/amazon/kindle/krx/metrics/MetricsData;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/ReddingApplication;->initCaCertMetricFields(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void
.end method

.method private activateStrictMode()V
    .locals 1

    :try_start_0
    const-string v0, "android.os.StrictMode"

    .line 649
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 652
    invoke-static {}, Lcom/amazon/kcp/application/StrictModeWrapper;->getInstance()Lcom/amazon/kcp/application/StrictModeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/StrictModeWrapper;->setPolicyDefault()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static blockOnAppInitialization()Z
    .locals 3

    .line 993
    :try_start_0
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->appInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 996
    sget-object v1, Lcom/amazon/kcp/application/ReddingApplication;->TAG:Ljava/lang/String;

    const-string v2, "Wait on App initialization interrupted!"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static getAppStartTime()J
    .locals 2

    .line 1213
    sget-wide v0, Lcom/amazon/kcp/application/ReddingApplication;->appStartTime:J

    return-wide v0
.end method

.method public static getApplication()Lcom/amazon/kcp/application/ReddingApplication;
    .locals 1

    .line 219
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->defaultApplicationContext:Lcom/amazon/kcp/application/ReddingApplication;

    return-object v0
.end method

.method public static getDefaultApplicationContext()Landroid/content/Context;
    .locals 1

    .line 215
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->defaultApplicationContext:Lcom/amazon/kcp/application/ReddingApplication;

    return-object v0
.end method

.method private getLoggerName()Ljava/lang/String;
    .locals 3

    .line 1187
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isSubProcess:Z

    if-eqz v0, :cond_0

    .line 1188
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getReddingProcessName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "^.*?:"

    const-string v2, "AmazonKindle:"

    .line 1190
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "AmazonKindle"

    return-object v0
.end method

.method private handleUpgradeIfAndroidWasUpgraded(J)Z
    .locals 2

    .line 841
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/application/ReddingApplication;->determineIfAndroidWasUpgraded(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 844
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object p2

    .line 845
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;->HOME:Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;

    invoke-interface {p2, v0}, Lcom/amazon/kcp/application/IAppSettingsController;->setLaunchTo(Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;)V

    .line 846
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/amazon/kcp/application/IAppSettingsController;->setAppUpgradedToRubyVersionTime(J)V

    :cond_0
    return p1
.end method

.method private handleUpgradeIfAppWasUpgraded(J)Z
    .locals 2

    .line 801
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/application/ReddingApplication;->determineIfAppWasUpgraded(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 804
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object p2

    .line 805
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;->HOME:Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;

    invoke-interface {p2, v0}, Lcom/amazon/kcp/application/IAppSettingsController;->setLaunchTo(Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;)V

    .line 806
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/amazon/kcp/application/IAppSettingsController;->setAppUpgradedToRubyVersionTime(J)V

    :cond_0
    return p1
.end method

.method private initCaCertMetricFields(Lcom/amazon/kindle/krx/metrics/MetricsData;)V
    .locals 3

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OSVER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODEL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v0, "APPVER-1"

    .line 479
    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    return-void
.end method

.method public static declared-synchronized initializeLoggingAndMetrics(Landroid/content/Context;Z)V
    .locals 3

    const-class v0, Lcom/amazon/kcp/application/ReddingApplication;

    monitor-enter v0

    .line 977
    :try_start_0
    sget-boolean v1, Lcom/amazon/kcp/application/ReddingApplication;->loggingAndMetricsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 978
    monitor-exit v0

    return-void

    .line 980
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kcp/application/metrics/internal/DcpReportableMetrics;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->initialize(Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;)V

    const/4 p0, 0x1

    .line 981
    sput-boolean p0, Lcom/amazon/kcp/application/ReddingApplication;->loggingAndMetricsInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 982
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initializeMobileAds()V
    .locals 2

    .line 526
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isSubProcess:Z

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->startupExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getMobileAdsInitalizationRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static isAppInitializationCompleted()Z
    .locals 5

    .line 1002
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->appInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSecureStorageUnavailable(Landroid/content/Context;)Z
    .locals 0

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/ReddingApplication;

    iget-boolean p0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isSecureStorageUnavailable:Z

    return p0
.end method

.method private loadFontSizes()V
    .locals 3

    .line 1248
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$array;->font_size_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->setFontSizes([I)V

    .line 1250
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->font_sizes_in_pixels:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1254
    :goto_0
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1261
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v1

    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v2

    aget v2, v2, v0

    int-to-float v2, v2

    invoke-static {p0, v2}, Lcom/amazon/android/util/UIUtils;->convertDipsToPixels(Landroid/content/Context;F)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1265
    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->default_font_size_index:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->defaultFontIndex:I

    .line 1267
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    .line 1268
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private onSecureStorageUnavailable(Lcom/amazon/kindle/persistence/SecureStorageCreationException;)V
    .locals 1

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isSecureStorageUnavailable:Z

    .line 374
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->prepareFactoryDependencies()V

    .line 375
    invoke-static {p0, v0}, Lcom/amazon/kcp/application/ReddingApplication;->initializeLoggingAndMetrics(Landroid/content/Context;Z)V

    .line 376
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->generateErrorMetric(Lcom/amazon/kindle/persistence/SecureStorageCreationException;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void
.end method

.method private recordAppInitializationCompleteMetrics()V
    .locals 0

    .line 1142
    invoke-direct {p0}, Lcom/amazon/kcp/application/ReddingApplication;->reportAccessibilityMetrics()V

    return-void
.end method

.method private reportAccessibilityMetrics()V
    .locals 5

    .line 1124
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TalkbackEnabled"

    goto :goto_0

    :cond_0
    const-string v0, "TalkbackDisabled"

    .line 1127
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ExploreByTouchEnabled"

    goto :goto_1

    :cond_1
    const-string v1, "ExploreByTouchDisabled"

    .line 1130
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isThirdPartyAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ThirdPartyAccessibilityEnabled"

    goto :goto_2

    :cond_2
    const-string v2, "ThirdPartyAccessibilityDisabled"

    .line 1134
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "ApplicationStartup"

    invoke-virtual {v3, v4, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->getTtsEngineName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TtsEngineUsed"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setupWebViewDebugging()V
    .locals 2

    .line 1006
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isWebViewDebuggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/application/ReddingApplication$9;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/ReddingApplication$9;-><init>(Lcom/amazon/kcp/application/ReddingApplication;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static wasAndroidUpdated()Z
    .locals 1

    .line 1282
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->wasAndroidUpdated:Z

    return v0
.end method

.method public static wasAppUpdated()Z
    .locals 1

    .line 1275
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->wasAppUpdated:Z

    return v0
.end method


# virtual methods
.method public activityInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1242
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->dispatchingActivityInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 10

    .line 226
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 228
    sput-object p0, Lcom/amazon/kcp/application/ReddingApplication;->defaultApplicationContext:Lcom/amazon/kcp/application/ReddingApplication;

    .line 231
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 234
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->checkSubProcess()Z

    .line 235
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->shouldLoadMinimalResources()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getLoggerName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/log/ILogger$Level;->INFO:Lcom/amazon/kindle/log/ILogger$Level;

    new-instance v1, Lcom/amazon/kindle/log/KCPLogger;

    invoke-direct {v1}, Lcom/amazon/kindle/log/KCPLogger;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/log/Log;->initialize(Ljava/lang/String;Lcom/amazon/kindle/log/ILogger$Level;Lcom/amazon/kindle/log/ILogger;)V

    .line 244
    invoke-static {p0}, Lcom/amazon/kindle/config/AndroidAppConfigManager;->getInstance(Landroid/content/Context;)Lcom/amazon/kindle/config/AndroidAppConfigManager;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/config/AppConfigManagerSingleton;->setInstance(Lcom/amazon/kindle/config/IAppConfigManager;)V

    .line 246
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 247
    sget v0, Lcom/amazon/kindle/krl/R$bool;->is_release_build:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 248
    sget v1, Lcom/amazon/kindle/krl/R$bool;->is_first_party_build:I

    .line 249
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sget v1, Lcom/amazon/kindle/krl/R$bool;->is_china_build:I

    .line 250
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    sget v1, Lcom/amazon/kindle/krl/R$bool;->is_kfa_build:I

    .line 251
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    sget v1, Lcom/amazon/kindle/krl/R$bool;->is_beta_build:I

    .line 252
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sget v1, Lcom/amazon/kindle/krl/R$bool;->is_comics_build:I

    .line 253
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    sget v1, Lcom/amazon/kindle/krl/R$bool;->is_play_store_build:I

    .line 254
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 255
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getInternalVersion()J

    move-result-wide v8

    move v1, v0

    .line 248
    invoke-static/range {v1 .. v9}, Lcom/amazon/kindle/build/BuildInfo;->initialize(ZZZZZZZJ)V

    if-nez v0, :cond_1

    .line 258
    sget-object p1, Lcom/amazon/kindle/log/ILogger$Level;->VERBOSE:Lcom/amazon/kindle/log/ILogger$Level;

    invoke-static {p1}, Lcom/amazon/kindle/log/Log;->setLogLevel(Lcom/amazon/kindle/log/ILogger$Level;)V

    .line 261
    sget-object p1, Lcom/amazon/kcp/application/ReddingApplication;->TAG:Ljava/lang/String;

    const-string v0, "LOADING DEBUG CLASSES -- NATIVE LIBRARIES LOADED MAY BE DIFFERENT THAN PRODUCTION BUILDS"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {p0}, Lcom/amazon/kcp/debug/DebugUtils;->initDebugValues(Landroid/content/Context;)V

    .line 263
    invoke-static {p0}, Lcom/amazon/kcp/debug/DebugButtons;->init(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method protected checkSubProcess()Z
    .locals 4

    .line 1154
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getReddingProcessName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x3a

    .line 1155
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/amazon/kcp/application/ReddingApplication;->isSubProcess:Z

    if-eqz v0, :cond_1

    const-string v2, ":thumbnailService"

    .line 1156
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/amazon/kcp/application/ReddingApplication;->isThumbnailService:Z

    if-eqz v0, :cond_2

    const-string v1, ":librarySwitchService"

    .line 1157
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    :cond_2
    iput-boolean v1, p0, Lcom/amazon/kcp/application/ReddingApplication;->isLibrarySwitch:Z

    .line 1159
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isSubProcess:Z

    return v0
.end method

.method protected clearFTUEState()V
    .locals 2

    .line 1197
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    const-string v1, "ftue_sync_complete"

    .line 1198
    invoke-interface {v0, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    const-string/jumbo v1, "phase_two_ftue_broadcast_received"

    .line 1199
    invoke-interface {v0, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    const-string v1, "last_syncmetadata_server_date"

    .line 1200
    invoke-interface {v0, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 1202
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const/4 v1, 0x0

    .line 1203
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setFTUELoadingScreenShown(Z)V

    .line 1204
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setFTUENewsstandLoadingScreenShown(Z)V

    .line 1205
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setFTUEEventTriggered(Z)V

    .line 1206
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setFTUENewsstandEventTriggered(Z)V

    return-void
.end method

.method protected abstract createApplicationComponent()Lcom/amazon/kcp/application/ReddingComponent;
.end method

.method protected determineIfAndroidWasUpgraded(J)Z
    .locals 6

    .line 858
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 859
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getPreviousAndroidVersion()J

    move-result-wide v1

    .line 860
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "persisted android version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 861
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current android version is   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 865
    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/application/IAppSettingsController;->setPreviousAndroidVersion(J)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected determineIfAppWasUpgraded(J)Z
    .locals 6

    .line 818
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    .line 819
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getLastAppUpgradeVersion()J

    move-result-wide v1

    .line 820
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "persisted version is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current version is   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmp-long v5, p1, v1

    if-lez v5, :cond_0

    const-wide/16 p1, -0x1

    cmp-long v5, v1, p1

    if-eqz v5, :cond_0

    .line 825
    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/IAppSettingsController;->setPreviousVersion(J)V

    .line 826
    invoke-interface {v0, v4}, Lcom/amazon/kcp/application/IAppSettingsController;->setIsFreshAppInstall(Z)V

    .line 827
    invoke-interface {v0, v3}, Lcom/amazon/kcp/application/IAppSettingsController;->setIsFreshMopDeprecationEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
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

    .line 638
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 640
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->TAG:Ljava/lang/String;

    const-string v1, "App initialization failed!"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 641
    iput-boolean p1, p0, Lcom/amazon/kcp/application/ReddingApplication;->genericAppStartupFailed:Z

    :goto_0
    return-void
.end method

.method protected final getAndroidVersion()J
    .locals 2

    .line 944
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getAndroidVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 928
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    return-object v0
.end method

.method public getDaggerComponent()Lcom/amazon/kcp/application/ReddingComponent;
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->component:Lcom/amazon/kcp/application/ReddingComponent;

    if-nez v0, :cond_1

    .line 626
    monitor-enter p0

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->component:Lcom/amazon/kcp/application/ReddingComponent;

    if-nez v0, :cond_0

    .line 629
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->createApplicationComponent()Lcom/amazon/kcp/application/ReddingComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->component:Lcom/amazon/kcp/application/ReddingComponent;

    .line 631
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected final getInternalVersion()J
    .locals 2

    .line 940
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getInternalVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract getMobileAdsInitalizationRunnable()Ljava/lang/Runnable;
.end method

.method public getReddingProcessName()Ljava/lang/String;
    .locals 5

    .line 1169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 1170
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1172
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v2, "activity"

    .line 1173
    invoke-virtual {p0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1174
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1176
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1177
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v0, v4, :cond_1

    .line 1178
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public hasAppStartupFailed()Z
    .locals 1

    .line 936
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->genericAppStartupFailed:Z

    return v0
.end method

.method protected initializeATM()V
    .locals 3

    .line 782
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->initialize(Landroid/content/Context;Lcom/amazon/kcp/application/IAuthenticationManager;)V

    .line 783
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    .line 785
    new-instance v1, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;-><init>(Landroid/content/Context;)V

    .line 786
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->registerTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V

    .line 787
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/ReaderTutorialProvider;->getEventHandler()Lcom/amazon/kindle/tutorial/IReaderEventHandler;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->setReaderEventHandler(Lcom/amazon/kindle/tutorial/IReaderEventHandler;)V

    .line 789
    new-instance v1, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;

    invoke-direct {v1}, Lcom/amazon/android/docviewer/selection/SelectionTutorialProvider;-><init>()V

    .line 790
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->registerTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V

    .line 792
    new-instance v1, Lcom/amazon/kindle/tutorial/AccessibilityTutorialProvider;

    invoke-direct {v1}, Lcom/amazon/kindle/tutorial/AccessibilityTutorialProvider;-><init>()V

    .line 793
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->registerTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V

    return-void
.end method

.method protected initializeAppState(J)V
    .locals 6

    const-string/jumbo v0, "sdk"

    .line 661
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->onClassLoaderCompleted()V

    .line 662
    new-instance v1, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;

    .line 663
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/stability/CrashBitInstance;->ACTIVITY:Lcom/amazon/kindle/stability/CrashBitInstance;

    .line 664
    invoke-static {v3, p0}, Lcom/amazon/kindle/stability/CrashBitManager;->getCrashBit(Lcom/amazon/kindle/stability/CrashBitInstance;Landroid/content/Context;)Lcom/amazon/kindle/stability/CrashBit;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/stability/CrashBitActivityLifecycleListener;-><init>(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;Lcom/amazon/kindle/stability/CrashBit;)V

    .line 662
    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 668
    iget-boolean v1, p0, Lcom/amazon/kcp/application/ReddingApplication;->isSubProcess:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amazon/kcp/application/ReddingApplication;->isThumbnailService:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_1

    .line 669
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getModuleInitializer()Lcom/amazon/kindle/config/IModuleInitializer;

    move-result-object v1

    .line 670
    invoke-interface {v1, p0}, Lcom/amazon/kindle/config/IModuleInitializer;->initializeKRXPlugins(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 673
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getAndroidVersion()J

    move-result-wide v3

    .line 674
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/application/ReddingApplication;->handleUpgradeIfAppWasUpgraded(J)Z

    move-result p1

    sput-boolean p1, Lcom/amazon/kcp/application/ReddingApplication;->wasAppUpdated:Z

    .line 675
    invoke-direct {p0, v3, v4}, Lcom/amazon/kcp/application/ReddingApplication;->handleUpgradeIfAndroidWasUpgraded(J)Z

    move-result p1

    sput-boolean p1, Lcom/amazon/kcp/application/ReddingApplication;->wasAndroidUpdated:Z

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 677
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUpdateManager()Lcom/amazon/kcp/application/internal/IUpdateManager;

    move-result-object v3

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/kcp/application/internal/IUpdateManager;->initialize(Lcom/amazon/kindle/persistence/ISecureStorage;)V

    .line 678
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v3

    .line 679
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/krl/R$string;->default_domain:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 678
    invoke-static {v3, v4}, Lcom/amazon/kindle/webservices/DynamicConfigManager;->init(Lcom/amazon/kindle/persistence/ISecureStorage;Ljava/lang/String;)V

    .line 681
    invoke-direct {p0}, Lcom/amazon/kcp/application/ReddingApplication;->loadFontSizes()V

    .line 683
    sget-boolean v3, Lcom/amazon/kcp/application/ReddingApplication;->wasAppUpdated:Z

    if-eqz v3, :cond_4

    .line 685
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 686
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/store/IWebStoreController;->clearStoreCredentials()V

    .line 689
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 690
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/store/IWebStoreController;->updateStoreCookies()V

    .line 694
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v3

    new-instance v4, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v5, Lcom/amazon/kcp/application/sync/internal/SyncType;->TODO_SYNC:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-direct {v4, v5, v2, v2, v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    .line 697
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IDeviceContext;->getNotificationTypes()Ljava/util/Set;

    move-result-object v2

    .line 698
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationController()Lcom/amazon/kcp/application/AndroidNotificationController;

    move-result-object v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 699
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 700
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationController()Lcom/amazon/kcp/application/AndroidNotificationController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazon/kcp/application/AndroidNotificationController;->displayDownloadNotifications(Ljava/util/Set;)V

    .line 704
    :cond_5
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 705
    :cond_6
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 708
    :cond_7
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getMetricsSettings()Lcom/amazon/kindle/krx/metrics/IMetricsSettings;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/amazon/kindle/krx/metrics/IMetricsSettings;->setMetricsEnabled(Z)V

    .line 710
    :cond_8
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 711
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationController()Lcom/amazon/kcp/application/AndroidNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidNotificationController;->displayDebugNotification()V

    .line 714
    :cond_9
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->initializeDefaultMarketplace()V

    .line 716
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->TAG:Ljava/lang/String;

    const-string v2, "Kindle Application started"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/kcp/application/ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 718
    sget-object v2, Lcom/amazon/kcp/application/ReddingApplication;->TAG:Ljava/lang/String;

    const-string v3, "App startup failed: "

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 719
    iput-boolean p1, p0, Lcom/amazon/kcp/application/ReddingApplication;->genericAppStartupFailed:Z

    .line 722
    :goto_2
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->TAG:Ljava/lang/String;

    const-string v2, "Starting Kindle application"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->intializeNativeLibraries()V

    .line 725
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isSubProcess:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isThumbnailService:Z

    if-nez v0, :cond_b

    .line 726
    :cond_a
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->initializeModules()V

    .line 730
    :cond_b
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryController;->initializeLibrary(Z)V

    .line 732
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 734
    invoke-interface {p1}, Lcom/amazon/kindle/panels/IPanelController;->getLeftPanelProviderRegistry()Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider;

    invoke-direct {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider;-><init>()V

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/factory/KindleObjectProviderRegistry;->registerProvider(Lcom/amazon/kindle/factory/IKindleObjectProvider;)V

    .line 737
    :cond_c
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilityStateListener()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    if-eqz v1, :cond_d

    .line 740
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 742
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Error initializing KRX plugins"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 746
    :cond_d
    :goto_3
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->startInitialization()V

    .line 749
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/application/ReddingApplication$7;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/ReddingApplication$7;-><init>(Lcom/amazon/kcp/application/ReddingApplication;)V

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    .line 756
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/application/ReddingApplication$8;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/ReddingApplication$8;-><init>(Lcom/amazon/kcp/application/ReddingApplication;)V

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method protected initializeDefaultMarketplace()V
    .locals 2

    .line 773
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->use_device_language_for_default_marketplace:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->marketplace_from_language:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 776
    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->default_marketplace:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 778
    :goto_0
    invoke-static {v0}, Lcom/amazon/kcp/application/Marketplace;->setDefaultMarketplaceId(Ljava/lang/String;)V

    return-void
.end method

.method protected initializeMAP()V
    .locals 2

    .line 488
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isSubProcess:Z

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->startupExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/application/ReddingApplication$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/ReddingApplication$5;-><init>(Lcom/amazon/kcp/application/ReddingApplication;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected initializeModules()V
    .locals 2

    const-string v0, "ReddingApplication.initializeModules()"

    const/4 v1, 0x1

    .line 873
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 875
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getModuleInitializer()Lcom/amazon/kindle/config/IModuleInitializer;

    move-result-object v1

    .line 877
    invoke-interface {v1, p0}, Lcom/amazon/kindle/config/IModuleInitializer;->initializeModules(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 879
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method protected intializeNativeLibraries()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->startupExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/application/ReddingApplication$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/ReddingApplication$4;-><init>(Lcom/amazon/kcp/application/ReddingApplication;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isBookColdOpen()Z
    .locals 1

    .line 1071
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isBookColdOpen:Z

    return v0
.end method

.method protected isFTUESyncComplete()Z
    .locals 2

    .line 1226
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    const-string v1, "ftue_sync_complete"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isSubProcess()Z
    .locals 1

    .line 1163
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isSubProcess:Z

    return v0
.end method

.method public onAppBackgrounded()V
    .locals 0

    return-void
.end method

.method public onAppForegrounded()V
    .locals 0

    return-void
.end method

.method protected onAppInitializationComplete()V
    .locals 1

    .line 1114
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->appInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1116
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isSubProcess:Z

    if-nez v0, :cond_0

    .line 1117
    invoke-direct {p0}, Lcom/amazon/kcp/application/ReddingApplication;->recordAppInitializationCompleteMetrics()V

    .line 1118
    invoke-static {}, Lcom/amazon/kindle/sdcard/SDCardDownloadMetrics;->startListening()V

    .line 1119
    invoke-direct {p0}, Lcom/amazon/kcp/application/ReddingApplication;->setupWebViewDebugging()V

    :cond_0
    return-void
.end method

.method protected onClassLoaderCompleted()V
    .locals 1

    const/4 v0, 0x0

    .line 1222
    invoke-static {p0, v0}, Lcom/amazon/kcp/application/ReddingApplication;->initializeLoggingAndMetrics(Landroid/content/Context;Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 949
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configuration changed, orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string/jumbo p1, "portrait"

    goto :goto_0

    :cond_0
    const-string p1, "landscape"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final onCreate()V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 339
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->APP_PRE_CREATE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    sget-wide v1, Lcom/amazon/kcp/application/ReddingApplication;->appStartTime:J

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZJ)V

    .line 340
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->APP_PRE_CREATE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZJ)V

    .line 344
    :try_start_0
    invoke-static {p0}, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->create(Landroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSecureStorage;
    :try_end_0
    .catch Lcom/amazon/kindle/persistence/SecureStorageCreationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->performPreCreate()V

    .line 353
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 355
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->shouldLoadMinimalResources()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 360
    sget-object v1, Lcom/amazon/kcp/application/ReddingApplication;->TAG:Ljava/lang/String;

    const-string v2, "Unable to generate secure storage. Halting startup process."

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/ReddingApplication;->onSecureStorageUnavailable(Lcom/amazon/kindle/persistence/SecureStorageCreationException;)V

    return-void

    .line 366
    :cond_2
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->APP_STARTUP:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    sget-wide v1, Lcom/amazon/kcp/application/ReddingApplication;->appStartTime:J

    invoke-static {v0, v3, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZJ)V

    .line 367
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->READER_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    sget-wide v1, Lcom/amazon/kcp/application/ReddingApplication;->appStartTime:J

    invoke-static {v0, v3, v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZJ)V

    .line 369
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->performOnCreate()V

    return-void
.end method

.method public onLowMemory()V
    .locals 5

    .line 884
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 889
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isSubProcess:Z

    if-eqz v0, :cond_0

    .line 890
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->TAG:Ljava/lang/String;

    const-string v1, "Low Memory message received as subprocess."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 894
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->prepareFactoryDependencies()V

    .line 895
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->TAG:Ljava/lang/String;

    const-string v1, "Kindle application is running out of memory - the behavior of the application is not predicatable"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->genericAppStartupFailed:Z

    if-nez v0, :cond_1

    .line 898
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 899
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "ReddingApplication"

    const-string v4, "OnLowMemory"

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 904
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isDaggerInitialized:Z

    if-eqz v0, :cond_2

    .line 905
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 908
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->onLowMemory()V

    :cond_3
    return-void
.end method

.method protected onStartupComplete()V
    .locals 2

    .line 1104
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->startupExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/application/ReddingApplication$10;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/ReddingApplication$10;-><init>(Lcom/amazon/kcp/application/ReddingApplication;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 914
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 916
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->genericAppStartupFailed:Z

    if-nez v0, :cond_0

    .line 917
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 918
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->exit()V

    :cond_0
    return-void
.end method

.method protected optionalInitialization()Z
    .locals 3

    .line 603
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/application/ReddingApplication$6;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/ReddingApplication$6;-><init>(Lcom/amazon/kcp/application/ReddingApplication;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->executeOrSubmit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 610
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 611
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/MemoryInfoLogger;->getInstance()Lcom/amazon/kcp/debug/MemoryInfoLogger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/debug/MemoryInfoLogger;->start(I)V

    .line 616
    :cond_1
    new-instance v0, Ljava/net/CookieManager;

    new-instance v1, Lcom/amazon/kindle/webservices/PersistentCookieStore;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/webservices/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 618
    sget-object v0, Lcom/amazon/kcp/application/ReddingApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getReddingProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected performOnCreate()V
    .locals 2

    .line 309
    invoke-static {}, Lcom/amazon/kcp/application/SharedPreferenceHook;->hookSharedPreference()V

    .line 311
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->initializeMAP()V

    .line 312
    invoke-direct {p0}, Lcom/amazon/kcp/application/ReddingApplication;->initializeMobileAds()V

    .line 313
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->startupExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kcp/application/ReddingApplication$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/ReddingApplication$3;-><init>(Lcom/amazon/kcp/application/ReddingApplication;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 320
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->requiredInitialization()V

    .line 322
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 325
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    .line 327
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    return-void
.end method

.method protected performPreCreate()V
    .locals 0

    return-void
.end method

.method public abstract prepareFactoryDependencies()V
.end method

.method public recordAppStartupEnd()V
    .locals 5

    .line 1028
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->appStartUpRecorded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1029
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->appStartUpRecorded:Ljava/lang/Boolean;

    .line 1031
    invoke-static {}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->getFirstCreatedActivity()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ThirdPartyUpgradePage"

    .line 1032
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "APP_START_TIMER"

    if-nez v2, :cond_1

    const-string v2, "KfcUpgradePage"

    .line 1033
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/amazon/kcp/application/ReddingApplication;->appStartupActivitiesTate:Ljava/util/List;

    .line 1034
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1039
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    goto :goto_1

    .line 1035
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->APP_STARTUP:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 1036
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->APP_STARTUP:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->APP_STARTUP:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 1037
    invoke-virtual {v4}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v4

    .line 1036
    invoke-virtual {v0, v2, v4, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :goto_1
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isBookColdOpen:Z

    if-nez v0, :cond_2

    .line 1043
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/foundation/StartupType;->APP_COLD_OPEN:Lcom/amazon/kindle/krx/foundation/StartupType;

    invoke-interface {v0, v2}, Lcom/amazon/foundation/internal/IThreadPoolManager;->setStartupCompleted(Lcom/amazon/kindle/krx/foundation/StartupType;)V

    .line 1047
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->shouldRunPostStartupTask:Z

    if-eqz v0, :cond_3

    .line 1048
    iput-boolean v1, p0, Lcom/amazon/kcp/application/ReddingApplication;->shouldRunPostStartupTask:Z

    .line 1049
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->onStartupComplete()V

    :cond_3
    return-void
.end method

.method public recordBookColdOpenEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1080
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->bookColdOpenRecorded:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1081
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->bookColdOpenRecorded:Ljava/lang/Boolean;

    .line 1083
    invoke-static {}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->getFirstCreatedActivity()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BookOpenSplashActivity"

    .line 1084
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "BOOK_COLD_OPEN_TIMER"

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isBookColdOpen:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1090
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    goto :goto_1

    .line 1085
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->READER_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1086
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->READER_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->READER_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    .line 1087
    invoke-virtual {v4}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1086
    invoke-virtual {p1, v0, p2, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/foundation/StartupType;->BOOK_COLD_OPEN:Lcom/amazon/kindle/krx/foundation/StartupType;

    invoke-interface {p1, p2}, Lcom/amazon/foundation/internal/IThreadPoolManager;->setStartupCompleted(Lcom/amazon/kindle/krx/foundation/StartupType;)V

    .line 1094
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/amazon/kcp/application/ReddingApplication;->shouldRunPostStartupTask:Z

    if-eqz p1, :cond_3

    .line 1095
    iput-boolean v1, p0, Lcom/amazon/kcp/application/ReddingApplication;->shouldRunPostStartupTask:Z

    .line 1096
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->onStartupComplete()V

    :cond_3
    return-void
.end method

.method protected requiredInitialization()V
    .locals 3

    .line 544
    new-instance v0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 546
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/amazon/kcp/application/ReddingApplication;->activateStrictMode()V

    .line 563
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isSubProcess:Z

    if-nez v0, :cond_2

    .line 564
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getInternalVersion()J

    move-result-wide v0

    .line 565
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/application/ReddingApplication;->initializeAppState(J)V

    .line 571
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->clearFTUEState()V

    .line 575
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/amazon/kcp/application/IAppSettingsController;->setLastAppUpgradeVersion(J)V

    .line 578
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/application/ReddingApplication;->getAndroidVersion()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/IAppSettingsController;->setPreviousAndroidVersion(J)V

    .line 580
    invoke-static {p0}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->initialize(Landroid/app/Application;)V

    .line 581
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;->onApplicationCreated(Landroid/content/Context;)V

    .line 583
    invoke-static {p0}, Lcom/amazon/kcp/payments/InstallationSourceMetrics;->recordFastMetrics(Landroid/content/Context;)V

    goto :goto_0

    .line 584
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isThumbnailService:Z

    if-eqz v0, :cond_3

    .line 586
    new-instance v0, Lcom/amazon/kcp/application/ThumbnailServiceStopReceiver;

    invoke-direct {v0}, Lcom/amazon/kcp/application/ThumbnailServiceStopReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.amazon.kindle.thumbnailService.STOP"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 592
    :cond_3
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBookPreloader()Lcom/amazon/kcp/application/IBookPreloader;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IBookPreloader;->preloadOnAppStart(Landroid/content/Context;)V

    return-void
.end method

.method public setBookColdOpen()V
    .locals 1

    const/4 v0, 0x1

    .line 1062
    iput-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isBookColdOpen:Z

    return-void
.end method

.method protected shouldLoadMinimalResources()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/amazon/kcp/application/ReddingApplication;->isLibrarySwitch:Z

    return v0
.end method
